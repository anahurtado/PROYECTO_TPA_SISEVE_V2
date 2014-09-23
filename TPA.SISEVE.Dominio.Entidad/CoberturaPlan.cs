using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TPA.SISEVE.Dominio.Entidad
{
	public class CoberturaPlan
	{
		public Plan Plan { get; set; }
		public Cobertura Cobertura { get; set; }
		public string MarcaPrincipal { get; set; }
		public int ReglaTarifaId { get; set; }
		public decimal SumaAsegurada { get; set; }
		public string Deducible { get; set; }
		public string Descripcion { get; set; }
		public string Orden { get; set; }
		public string Estado { get; set; }
		public Usuario UsuarioRegistro { get; set; }
		public DateTime FechaRegistro { get; set; }
	}
}
