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
    public class ProductoController : Controller
    {
        protected IProductoNegocio ProductoNegocio = new ProductoNegocio();


        [Authorize]
        [HttpGet]
        public ActionResult Index()
        {
            return View(new ProductoModel());
        }


        [Authorize]
        [HttpPost]
        public ActionResult Index(ProductoModel productoModel)
        {
            IEnumerable<Producto> ListadoProducto = ProductoNegocio.BuscarTodos();

            if (productoModel.CiaSegId != 0)
            {
                ListadoProducto = ListadoProducto.Where(item => item.CiaSeg.Id == productoModel.CiaSegId);
            }

            if (!String.IsNullOrEmpty(productoModel.Nombre))
            {
                ListadoProducto = ListadoProducto.Where(item => item.Nombre.Contains(productoModel.Nombre));
            }

            if (!String.IsNullOrEmpty(productoModel.Estado))
            {
                ListadoProducto = ListadoProducto.Where(item => item.Estado == productoModel.Estado);
            }

            ViewBag.ListadoProducto = ListadoProducto;

            return View(productoModel);
        }


        [Authorize]
        [HttpGet]
        public ActionResult New()
        {
            return View(new ProductoModel());
        }


        [Authorize]
        [HttpPost]
        public ActionResult New(ProductoModel productoModel)
        {
            if (ModelState.IsValid)
            {
                Producto Producto = productoModel.ObtenerEntidad();
                Producto.UsuarioRegistra = new Usuario() { Id = Convert.ToInt32(User.Identity.Name) };
                Producto.FechaRegistro = DateTime.Now;
                ProductoNegocio.Insertar(Producto);
                return RedirectToRoute("Producto", new { action = "Index" });
            }

            return View(productoModel);
        }


        [Authorize]
        [HttpGet]
        public ActionResult Edit(int id)
        {
            Producto Producto = ProductoNegocio.BuscarPorId(id);

            if (Producto == null)
            {
                return RedirectToRoute("Producto", new { action = "Index" });
            }

            return View(new ProductoModel(Producto));
        }


        [Authorize]
        [HttpPost]
        public ActionResult Edit(int id, ProductoModel productoModel)
        {
            if (ModelState.IsValid)
            {
                Producto Producto = ProductoNegocio.BuscarPorId(id);
                Producto.Descripcion = productoModel.Descripcion;
                Producto.DiasVigencia = productoModel.DiasVigencia;
                Producto.DiasCarencia = productoModel.DiasCarencia;
                Producto.DiasGracia = productoModel.DiasGracia;
                Producto.Estado = productoModel.Estado;
                ProductoNegocio.Actualizar(Producto);
                return RedirectToRoute("Producto", new { action = "Index" });
            }

            return View(productoModel);
        }


        



    }
}
