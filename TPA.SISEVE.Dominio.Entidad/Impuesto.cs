using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TPA.SISEVE.Dominio.Entidad
{
	public class Impuesto
	{
		public int Id { get; set; }
		public Plan Plan { get; set; }
		public int Orden { get; set; }
		public int GrupoImpuestoId { get; set; }
		public int TipoImpuestoId { get; set; }
		public string TipoValor { get; set; }
		public double Valor { get; set; }
		public string MarcaIncluirSuma { get; set; }
		public string MarcaSobreSuma { get; set; }
		public string Estado { get; set; }
		public Usuario UsuarioRegistro { get; set; }
		public DateTime FechaRegistro { get; set; }
	}
}
