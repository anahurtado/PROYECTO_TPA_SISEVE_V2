using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TPA.SISEVE.Dominio.Entidad
{
	public class GrupoVehiculo
	{
		public int Id { get; set; }
		public Plan Plan { get; set; }
		public int ClaseVehiculoId { get; set; }
		public int TipoTimonId { get; set; }
		public int CategoriaVehiculoId { get; set; }
		public int UsoVehiculoId { get; set; }
		public string Nombre { get; set; }
		public string Estado { get; set; }
		public Usuario UsuarioReigstro { get; set; }
		public DateTime FechaRegistro { get; set; }
	}
}
