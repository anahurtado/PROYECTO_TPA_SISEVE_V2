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

		public CiaSegModel(CiaSeg ciaSeg) 
		{
			this.Id = ciaSeg.Id;
			this.Nombre = ciaSeg.Nombre;
			this.Estado = ciaSeg.Estado;
		}


		public int Id { get; set; }

		[Display(Name = "Nombre")]
		[Required(ErrorMessage = "Ingrese el nombre.")]
		public string Nombre { get; set; }

		[Display(Name = "Estado")]
		[Required(ErrorMessage = "Seleccione un estado.")]
		public string Estado { get; set; }



		public IEnumerable<SelectListItem> Estados
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
				Estado = this.Estado
			};
		}


	}
}