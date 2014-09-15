using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TPA.SISEVE.Dominio.Entidad;
using TPA.SISEVE.Dominio.Negocio;
using TPA.SISEVE.Dominio.Negocio.Interfaces;

namespace TPA.SISEVE.Cliente.MVC.Models
{
    public class ProductoModel
    {

        protected ICiaSegNegocio CiaSegNegocio = null;


        public ProductoModel() { }

        public ProductoModel(Producto producto) 
        {
            this.CiaSegId = producto.CiaSeg.Id;
            this.Nombre = producto.Nombre;
            this.Descripcion = producto.Descripcion;
            this.DiasVigencia = producto.DiasVigencia;
            this.DiasCarencia = producto.DiasCarencia;
            this.DiasGracia = producto.DiasGracia;
            this.Estado = producto.Estado;
        }


        [Display(Name = "Compañía de Seguro")]
        [Required(ErrorMessage = "Seleccione una Compañía de Seguro.")]
        public int CiaSegId { get; set; }

        [Display(Name = "Nombre")]
        [Required(ErrorMessage = "Ingrese el nombre del producto.")]
        public string Nombre { get; set; }

        [Display(Name = "Descripción Comercial")]
        [Required(ErrorMessage = "Ingrese la descripción comercial del producto.")]
        public string Descripcion { get; set; }

        [Display(Name = "Días de Vigencia")]
        [Required(ErrorMessage = "Ingrese los días de vigencia del producto.")]
        public int DiasVigencia { get; set; }

        [Display(Name = "Días de Carencia")]
        [Required(ErrorMessage = "Ingrese los días de carencia del producto.")]
        [Range(0, 60, ErrorMessage = "Sólo se acepta el rango de 0 a 60 días.")]
        public int DiasCarencia { get; set; }

        [Display(Name = "Días de Gracia")]
        [Required(ErrorMessage = "Ingrese los días de gracia del producto.")]
        [Range(0, 60, ErrorMessage = "Sólo se acepta el rango de 0 a 60 días.")]
        public int DiasGracia { get; set; }

        [Display(Name = "Estado")]
        [Required(ErrorMessage = "Seleccione el estado producto.")]
        public string Estado { get; set; }


        public IEnumerable<SelectListItem> ListadoEstados 
        {
            get 
            {
                return new List<SelectListItem>()
                {
                    new SelectListItem() { Text = "Activo", Value = "A" }, 
                    new SelectListItem() { Text = "Inactivo", Value = "I" }
                };
            }
        }


        public IEnumerable<SelectListItem> ListadoCiaSeg
        {
            get
            {
                CiaSegNegocio = new CiaSegNegocio();
                IList<SelectListItem> ListadoCiaSeg = new List<SelectListItem>();

                foreach (CiaSeg CiaSeg in CiaSegNegocio.BuscarTodos().Where(item => item.Estado == "A").OrderBy(item => item.Nombre))
                {
                    ListadoCiaSeg.Add(new SelectListItem() { Text = CiaSeg.Nombre, Value = CiaSeg.Id.ToString() });
                }

                return ListadoCiaSeg;
            }
        }


        public Producto ObtenerEntidad()
        {
            return new Producto()
            {
                CiaSeg = new CiaSeg() { Id = this.CiaSegId }, 
                Nombre = this.Nombre, 
                Descripcion = this.Descripcion, 
                DiasVigencia = this.DiasVigencia, 
                DiasCarencia = this.DiasCarencia, 
                DiasGracia = this.DiasGracia, 
                Estado = Estado
            };
        }

    }
}