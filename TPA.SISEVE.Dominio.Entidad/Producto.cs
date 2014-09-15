using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TPA.SISEVE.Dominio.Entidad
{
    public class Producto
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public CiaSeg CiaSeg { get; set; }
		public int RamoId { get; set; }
		public string Moneda { get; set; }
        public int DiasVigencia { get; set; }
		public string MarcaDerechoEmision { get; set; }
		public string MarcaImpuesto { get; set; }
		public int DiasCarencia { get; set; }
        public int DiasGracia { get; set; }
        public string Estado { get; set; }
        public Usuario UsuarioRegistra { get; set; }
        public DateTime FechaRegistro { get; set; }
    }
}
