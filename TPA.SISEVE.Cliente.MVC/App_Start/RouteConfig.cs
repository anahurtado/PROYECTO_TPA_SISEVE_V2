using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace TPA.SISEVE.Cliente.MVC
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Account",
                url: "Account/{action}",
                defaults: new { controller = "Account", action = "Index" }
            );

            routes.MapRoute(
                name: "Producto",
                url: "Productos/{action}/{id}",
                defaults: new { controller = "Producto", action = "Index", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Aseguradora",
                url: "Aseguradora/{action}/{id}",
                defaults: new { controller = "Aseguradora", action = "Index", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Plan",
                url: "Planes/{action}/{id}",
                defaults: new { controller = "Plan", action = "Index", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Cobertura",
                url: "Coberturas/{action}/{id}",
                defaults: new { controller = "Cobertura", action = "Index", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Impuesto",
                url: "Impuestos/{action}/{id}",
                defaults: new { controller = "Impuesto", action = "Index", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Cotizacion",
                url: "Cotizaciones/{action}/{id}",
                defaults: new { controller = "Cotizacion", action = "Index", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Home",
                url: "",
                defaults: new { controller = "Home", action = "Index" }
            );
        }
    }
}