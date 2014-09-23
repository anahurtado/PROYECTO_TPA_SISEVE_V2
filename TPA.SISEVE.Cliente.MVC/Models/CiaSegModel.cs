using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TPA.SISEVE.Dominio.Entidad;

namespace TPA.SISEVE.Cliente.MVC.Models
{
	public class CiaSegModel
	{

        public CiaSegModel() { }

        public CiaSegModel(CiaSeg CiaSeg) 
        {
            Id = CiaSeg.Id;
            Nombre = CiaSeg.Nombre;
            Estado = CiaSeg.Estado;
        }



		[Display(Name = "Código")]
		public int Id { get; set; }

		[Display(Name = "Nombre")]
		[Required(ErrorMessage = "Ingrese el nombre de la aseguradora.")]
		public string Nombre { get; set; }

		[Display(Name = "Estado")]
		[Required(ErrorMessage = "Seleccione un estado.")]
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


        public CiaSeg ObtenerEntidad()
        {
            return new CiaSeg()
                {
                    Id = this.Id,
                    Nombre = this.Nombre,
                    Estado = this.Estado,
                    FechaRegistro = DateTime.Now,
                    UsuarioRegistra = new Usuario()
                };
        }
	}
}