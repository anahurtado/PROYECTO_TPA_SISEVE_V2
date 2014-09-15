using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TPA.SISEVE.Dominio.Entidad
{
    public class TipoCatalogo
    {
        public int IdTipoCatalogo { get; set; }
        public string Nombre { get; set; }
        public string Estado { get; set; }
        public Usuario UsuarioRegistro { get; set; }
        public DateTime FechaRegistro { get; set; }
    }
}
