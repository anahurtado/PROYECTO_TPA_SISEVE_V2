using Microsoft.Security.Application;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TPA.SISEVE.Cliente.MVC.Models;
using TPA.SISEVE.Dominio.Entidad;
using TPA.SISEVE.Dominio.Negocio;
using TPA.SISEVE.Dominio.Negocio.Interfaces;

namespace TPA.SISEVE.Cliente.MVC.Controllers
{
    public class CiaSegController : Controller
    {

		protected ICiaSegNegocio CiaSegNegocio = new CiaSegNegocio();


		[Authorize]
		[HttpGet]
		public ActionResult Search()
		{
			return View(new CiaSegModel());
		}


		[Authorize]
		[HttpPost]
		public ActionResult Search(CiaSegModel ciaSegModel)
		{
			ciaSegModel.Nombre = (String.IsNullOrEmpty(ciaSegModel.Nombre)) ? String.Empty : ciaSegModel.Nombre;
			ciaSegModel.Estado = (String.IsNullOrEmpty(ciaSegModel.Estado)) ? String.Empty : ciaSegModel.Estado;
			ViewBag.ListadoCiaSeg = CiaSegNegocio.BuscarTodos().Where(item => item.Nombre.ToLower().Contains(ciaSegModel.Nombre.ToLower()) && item.Estado.ToLower().Contains(ciaSegModel.Estado.ToLower()));
			return View(ciaSegModel);
		}


		[Authorize]
		[HttpGet]
		public ActionResult Register()
		{
			return View(new CiaSegModel());
		}


		[Authorize]
		[HttpPost]
		public ActionResult Register(CiaSegModel ciaSegModel)
		{
			if (ModelState.IsValid)
			{
                CiaSeg CiaSeg = ciaSegModel.ObtenerEntidad();
                CiaSeg.UsuarioRegistra.Id = Convert.ToInt32(User.Identity.Name);
                CiaSegNegocio.Insertar(CiaSeg);
				return RedirectToRoute("Aseguradora", new { action = "Search" });
			}
			return View(ciaSegModel);
		}



		[Authorize]
		[HttpGet]
		public ActionResult Edit(int id)
		{
			CiaSeg CiaSeg = CiaSegNegocio.BuscarPorId(id);

			if (CiaSeg == null)
			{
				return RedirectToRoute("Aseguradora", new { action = "Search" });
			}

            return View(new CiaSegModel(CiaSeg));
		}


		[Authorize]
		[HttpPost]
		public ActionResult Edit(int id, CiaSegModel ciaSegModel)
		{
			if (ModelState.IsValid)
			{
				CiaSeg CiaSeg = CiaSegNegocio.BuscarPorId(id);
				CiaSeg.Nombre = ciaSegModel.Nombre;
				CiaSeg.Estado = ciaSegModel.Estado;
				CiaSegNegocio.Actualizar(CiaSeg);
				return RedirectToRoute("Aseguradora", new { action = "Search" });
			}

			return View(ciaSegModel);
		}

    }
}
