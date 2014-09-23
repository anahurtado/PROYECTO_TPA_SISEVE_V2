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
	public class CoberturaModel
	{

		public CoberturaModel() { }

		public CoberturaModel(Cobertura Cobertura) 
		{ 
			CiaSegId = Cobertura.CiaSeg.Id;
			Nombre = Cobertura.Nombre;
			Abreviatura = Cobertura.Abreviatura;
			Estado = Cobertura.Estado;
		}



		[Display(Name = "Compañía de Seguros")]
		[Required(ErrorMessage = "Seleccione una Compañía de Seguros.")]
		public int CiaSegId { get; set; }

		[Display(Name = "Nombre")]
		[Required(ErrorMessage = "Ingrese el nombre..")]
		public string Nombre { get; set; }

		[Display(Name = "Abreviatura")]
		[Required(ErrorMessage = "Ingrese la abreviatura.")]
		public string Abreviatura { get; set; }

		[Display(Name = "Estado")]
		[Required(ErrorMessage = "Seleccione un estado.")]
		public string Estado { get; set; }


		public IEnumerable<SelectListItem> ListadoCiaSeg
		{
			get
			{
				ICiaSegNegocio CoberturaNegocio = new CiaSegNegocio();
				IList<SelectListItem> ListadoCiaSeg = new List<SelectListItem>();

				foreach (CiaSeg CiaSeg in CoberturaNegocio.BuscarTodosActivos().OrderBy(item => item.Nombre))
				{
					ListadoCiaSeg.Add(new SelectListItem() { Text = CiaSeg.Nombre, Value = CiaSeg.Id.ToString() });
				}

				return ListadoCiaSeg;
			}
		}


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


		public Cobertura ObtenerEntidad()
		{
			return new Cobertura()
			{
				CiaSeg = new CiaSeg() { Id = CiaSegId }, 
				Nombre = Nombre, 
				Abreviatura = Abreviatura, 
				Estado = Estado
			};
		}

		

	}
}