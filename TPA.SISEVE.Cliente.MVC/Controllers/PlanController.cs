using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TPA.SISEVE.Cliente.MVC.Models;

namespace TPA.SISEVE.Cliente.MVC.Controllers
{
    public class PlanController : Controller
    {
        
		[HttpGet]
        public ActionResult Register()
        {
            return View();
        }

    }
}
