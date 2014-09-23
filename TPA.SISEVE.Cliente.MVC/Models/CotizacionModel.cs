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
	public class CotizacionModel
	{

		[Display(Name = "Marca")]
		public int MarcaId { get; set; }

		[Display(Name = "Modelo")]
		public int ModeloId { get; set; }

		[Display(Name = "Año")]
		public int Año { get; set; }

		[Display(Name = "Tipo Timón")]
		public int TipoTimonId { get; set; }

		public string DNI { get; set; }
		public DateTime FechaNacimiento { get; set; }


		public IEnumerable<SelectListItem> ListadoMarca 
		{
			get
			{
				IMarcaNegocio MarcaNegocio = new MarcaNegocio();
				IList<SelectListItem> ListadoMarca = new List<SelectListItem>();

				foreach (Marca Marca in MarcaNegocio.BuscarTodosActivos().OrderBy(item => item.Nombre))
				{
					ListadoMarca.Add(new SelectListItem() { Text = Marca.Nombre, Value = Marca.Id.ToString() });
				}

				return ListadoMarca;
			}
		}


		public IEnumerable<SelectListItem> ListadoModelo 
		{
			get
			{
				IList<SelectListItem> ListadoModelo = new List<SelectListItem>();

				if (MarcaId != null)
				{
					IModeloNegocio ModeloNegocio = new ModeloNegocio();
					
					foreach (Modelo Modelo in ModeloNegocio.BuscarPorMarca(new Marca() { Id = this.MarcaId }))
					{
						ListadoModelo.Add(new SelectListItem() { Text = Modelo.Nombre, Value = Modelo.Id.ToString() });
					}
				}

				return ListadoModelo;
			}
		}

		public IEnumerable<SelectListItem> ListadoAño 
		{
			get
			{
				IList<SelectListItem> ListadoAño = new List<SelectListItem>();

				if (ModeloId != null)
				{
					int indice = 0;

					while (indice < 15)
					{
						ListadoAño.Add(new SelectListItem() { Text = DateTime.Now.AddYears(indice * -1).Year.ToString(), Value = DateTime.Now.AddYears(indice * -1).Year.ToString() });
						indice++;
					}
				}

				return ListadoAño;
			}
		}

		public IEnumerable<SelectListItem> ListadoTipoTimon 
		{
			get
			{
				return new List<SelectListItem>()
				{
					new SelectListItem() { Text = "Manual", Value = "1" }, 
					new SelectListItem() { Text = "Automatico", Value = "2" }
				};
			}
		}
	


		

	
	}
}