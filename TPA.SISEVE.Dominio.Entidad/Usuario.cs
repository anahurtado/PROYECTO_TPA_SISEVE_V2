using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TPA.SISEVE.Dominio.Entidad
{
    public class Usuario
    {
        public int Id { get; set; }
        public string Login { get; set; }
        public string ClaveAcceso { get; set; }
        public string IndicadorExpiracionClave { get; set; }
        public DateTime FechaExpiracionClave { get; set; }
        public string DNI { get; set; }
        public string ApellidoPaterno { get; set; }
        public string ApellidoMaterno { get; set; }
        public string Nombre { get; set; }
        public string SituacionRegistro { get; set; }
        public DateTime FechaCreacion { get; set; }
        public Usuario UsuarioCreacion { get; set; }
    }
}
