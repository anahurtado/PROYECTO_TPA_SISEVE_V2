using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TPA.SISEVE.Dominio.Entidad
{
	public class PrimaMinima
	{
		public int Id { get; set; }
		public Plan Plan { get; set; }
		public string Grupo1 { get; set; }
		public string Grupo2 { get; set; }
		public string Grupo3 { get; set; }
		public double ValorMin { get; set; }
		public double ValorMax { get; set; }
		public string Estado { get; set; }
		public Usuario UsuarioRegistro { get; set; }
		public DateTime FechaRegistro { get; set; }
	}
}
