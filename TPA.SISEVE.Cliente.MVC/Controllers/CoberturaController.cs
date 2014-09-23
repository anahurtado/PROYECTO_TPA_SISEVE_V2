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
    public class CoberturaController : Controller
    {

		protected ICoberturaNegocio CoberturaNegocio = new CoberturaNegocio();


		[Authorize]
		[HttpGet]
        public ActionResult Search()
		{
			return View(new CoberturaModel());
		}


		[Authorize]
		[HttpPost]
		public ActionResult Search(CoberturaModel coberturaModel)
		{
            IEnumerable<Cobertura> ListadoCobertura = CoberturaNegocio.BuscarTodos();

            if (coberturaModel.CiaSegId > 0)
            {
                ListadoCobertura = ListadoCobertura.Where(item => item.CiaSeg.Id == coberturaModel.CiaSegId);
            }

            if (!String.IsNullOrEmpty(coberturaModel.Estado))
            {
                ListadoCobertura = ListadoCobertura.Where(item => item.Estado == coberturaModel.Estado);
            }

            ViewBag.ListadoCobertura = ListadoCobertura;
			return View(coberturaModel);
		}


		[Authorize]
		[HttpGet]
		public ActionResult Register()
		{
			return View(new CoberturaModel());
		}


		[Authorize]
		[HttpPost]
        public ActionResult Register(CoberturaModel coberturaModel)
		{
			if (ModelState.IsValid)
			{
				Cobertura Cobertura = coberturaModel.ObtenerEntidad();
				Cobertura.UsuarioRegistra = new Usuario() { Id = Convert.ToInt32(User.Identity.Name) };
				Cobertura.FechaRegistro = DateTime.Now;

				CoberturaNegocio.Insertar(Cobertura);
                return RedirectToRoute("Cobertura", new { action = "Search" });
			}

			return View(coberturaModel);
		}


		[Authorize]
		[HttpGet]
		public ActionResult Edit(int id)
		{
			Cobertura Cobertura = CoberturaNegocio.BuscarPorId(id);

			if (Cobertura == null)
			{
                return RedirectToRoute("Cobertura", new { action = "Search" });
			}

			return View(new CoberturaModel(Cobertura));
		}


		[Authorize]
		[HttpPost]
		public ActionResult Edit(int id, CoberturaModel coberturaModel)
		{
			if (ModelState.IsValid)
			{
				Cobertura Cobertura = CoberturaNegocio.BuscarPorId(id);
				Cobertura.CiaSeg.Id = coberturaModel.CiaSegId;
				Cobertura.Nombre = coberturaModel.Nombre;
				Cobertura.Abreviatura = coberturaModel.Abreviatura;
				Cobertura.Estado = coberturaModel.Estado;

				CoberturaNegocio.Actualizar(Cobertura);
                return RedirectToRoute("Cobertura", new { action = "Search" });
			}

			return View(coberturaModel);
		}

    }
}
