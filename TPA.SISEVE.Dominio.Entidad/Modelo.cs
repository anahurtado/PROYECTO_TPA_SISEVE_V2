using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TPA.SISEVE.Dominio.Entidad
{
	public class Modelo
	{
		public int Id { get; set; }
		public Marca Marca { get; set; }
		public string Nombre { get; set; }
		public string Estado { get; set; }
		public Usuario UsuarioRegistro { get; set; }
		public DateTime FechaRegistro { get; set; }
	}
}
