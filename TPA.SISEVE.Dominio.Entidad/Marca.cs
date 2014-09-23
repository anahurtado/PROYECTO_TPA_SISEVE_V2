using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TPA.SISEVE.Dominio.Entidad
{
	public class Marca
	{
		public int Id { get; set; }
		public string Nombre { get; set; }
		public int OrigenId { get; set; }
		public string Estado { get; set; }
		public Usuario UsuarioRegistro { get; set; }
		public DateTime FechaRegistro { get; set; }
	}
}
