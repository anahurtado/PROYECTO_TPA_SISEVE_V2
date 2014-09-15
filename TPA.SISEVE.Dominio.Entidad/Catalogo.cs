using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TPA.SISEVE.Dominio.Entidad
{
    public class Catalogo
    {
        public int IdCatalogo { get; set; }
        public TipoCatalogo TipoCatalogo { get; set; }
        public string Nombre { get; set; }
        public string Abreviacion { get; set; }
        public string Estado { get; set; }
        public Usuario UsuarioRegistro { get; set; }
        public DateTime FechaRegistro { get; set; }
    }
}
