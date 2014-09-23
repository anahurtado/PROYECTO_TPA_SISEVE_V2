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
using TPA.SISEVE.Dominio.Negocio.Interfaces;


namespace TPA.SISEVE.Cliente.MVC.Controllers
{
    public class AccountController : Controller
    {

        protected IUsuarioNegocio UsuarioNegocio = new UsuarioNegocio();
        
        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }


        [HttpPost]
        public ActionResult Login(LoginModel loginModel)
        {
			if (ModelState.IsValid)
			{
                Usuario Usuario = UsuarioNegocio.BuscarPorDNI(loginModel.DNI);
                FormsAuthentication.SetAuthCookie(Usuario.Id.ToString(), false);
                Session.Add("User", Usuario);
                return RedirectToRoute("Home");
			}

            return View();
        }


        [Authorize]
        [HttpGet]
        public ActionResult Logout()
        {
            FormsAuthentication.SignOut();
			Session.Remove("User");
			return RedirectToRoute("Account", new { action = "Login" });
        }

    }
}
