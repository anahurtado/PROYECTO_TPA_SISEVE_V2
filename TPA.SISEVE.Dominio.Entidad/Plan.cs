using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TPA.SISEVE.Dominio.Entidad
{
	public class Plan
	{
		public int Id { get; set; }
		public string Nombre { get; set; }
		public string Descripcion { get; set; }
		public Producto Producto { get; set; }
		public string TipoVigencia { get; set; }
		public decimal SumaAseguradaMinima { get; set; }
		public decimal SumaAseguradaMaxima { get; set; }
		public string Estado { get; set; }
		public Usuario UsuarioRegistro { get; set; }
		public DateTime FechaRegistro { get; set; }
	}
}
