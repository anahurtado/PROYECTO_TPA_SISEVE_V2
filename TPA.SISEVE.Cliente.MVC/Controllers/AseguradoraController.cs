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
    public class AseguradoraController : Controller
    {

		protected ICiaSegNegocio CiaSegNegocio = new CiaSegNegocio();


		[Authorize]
		[HttpGet]
		public ActionResult Index()
		{
			return View(new CiaSegModel());
		}


		[Authorize]
		[HttpPost]
		public ActionResult Index(CiaSegModel ciaSegModel)
		{
			string Estado = Sanitizer.GetSafeHtmlFragment(ciaSegModel.Estado);
			string Nombre = Sanitizer.GetSafeHtmlFragment(ciaSegModel.Nombre);

			if (!String.IsNullOrEmpty(Estado))
			{
				ViewBag.ListadoCiaSeg = CiaSegNegocio.BuscarTodos().Where(item => item.Estado.Equals(Estado));
			}
			else
			{
				ViewBag.ListadoCiaSeg = CiaSegNegocio.BuscarTodos().Where(item => item.Nombre.Contains(Nombre));
			}

			return View(ciaSegModel);
		}


		[Authorize]
		[HttpGet]
		public ActionResult New()
		{
			return View(new CiaSegModel());
		}


		[Authorize]
		[HttpPost]
		public ActionResult New(CiaSegModel ciaSegModel)
		{
			if (ModelState.IsValid)
			{
				CiaSeg CiaSeg = ciaSegModel.ObtenerEntidad();
				CiaSeg.UsuarioRegistra = new Usuario() { Id = Convert.ToInt32(User.Identity.Name) };
				CiaSeg.FechaRegistro = DateTime.Now;

				CiaSegNegocio.Insertar(CiaSeg);
				return RedirectToRoute("Aseguradora", new { action = "Index" });
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
				return RedirectToRoute("Aseguradora", new { action = "Index" });
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
				return RedirectToRoute("Aseguradora", new { action = "Index" });
			}

			return View(ciaSegModel);
		}

    }
}
