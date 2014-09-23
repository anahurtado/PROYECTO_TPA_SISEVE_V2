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
    public class CotizacionController : Controller
    {

		[Authorize]
		[HttpGet]
		public ActionResult Register()
		{
			return View(new CotizacionModel());
		}

		[Authorize]
		[HttpPost]
		public ActionResult Register(CotizacionModel cotizacionModel)
		{
			return View(cotizacionModel);
		}



		

    }
}
