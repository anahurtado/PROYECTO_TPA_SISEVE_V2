using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TPA.SISEVE.Dominio.Entidad
{
    public class Cobertura
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Abreviatura { get; set; }
        public CiaSeg CiaSeg { get; set; }
        public string Estado { get; set; }
        public Usuario UsuarioRegistra { get; set; }
        public DateTime FechaRegistro { get; set; }
    }
}
