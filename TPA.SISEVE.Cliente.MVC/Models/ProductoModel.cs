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

        public ProductoModel() { }

        public ProductoModel(Producto producto)
        {
            CiaSegId = producto.CiaSeg.Id;
            Nombre = producto.Nombre;
            Descripcion = producto.Descripcion;
            DiasVigencia = producto.DiasVigencia;
            DiasCarencia = producto.DiasCarencia;
            DiasGracia = producto.DiasGracia;
            Estado = producto.Estado;
        }


        [Display(Name = "Compañía de Seguro")]
        [Required(ErrorMessage = "Seleccione una Aseguradora.")]
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
                ICiaSegNegocio CiaSegNegocio= new CiaSegNegocio();
                IList<SelectListItem> ListadoCiaSeg = new List<SelectListItem>();

                foreach (CiaSeg CiaSeg in CiaSegNegocio.BuscarTodosActivos().OrderBy(item => item.Nombre))
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