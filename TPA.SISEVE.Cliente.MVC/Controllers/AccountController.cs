using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using TPA.SISEVE.Cliente.MVC.Models;
using TPA.SISEVE.Dominio.Entidad;
using TPA.SISEVE.Dominio.Negocio;


namespace TPA.SISEVE.Cliente.MVC.Controllers
{
    public class AccountController : Controller
    {
        
        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }


        [HttpPost]
        public ActionResult Login(LoginModel loginForm)
        {
			if (ModelState.IsValid)
			{
				Usuario Usuario = new UsuarioNegocio().BuscarPorDNI(loginForm.DNI);
				FormsAuthentication.SetAuthCookie(Usuario.Id.ToString(), false);
				
				Session.Add("Usuario", Usuario);
				return RedirectToRoute("Home");
			}

            return View();
        }


        [HttpGet]
        [Authorize]
        public ActionResult Logout()
        {
            FormsAuthentication.SignOut();
			Session.Remove("Usuario");
			return RedirectToRoute("Account", new { action = "Login" });
        }

    }
}
