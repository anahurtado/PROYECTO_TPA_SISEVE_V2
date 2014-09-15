using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TPA.SISEVE.Dominio.Entidad;
using TPA.SISEVE.Repositorio.Datos.Interfaces;

namespace TPA.SISEVE.Repositorio.Datos
{
    public class UsuarioRepositorio : Repositorio<UsuarioRepositorio>,  IUsuarioRepositorio
    {

        protected UsuarioRepositorio() { }

        public Usuario BuscarPorDni(string dni)
        {
			DbCommand Comando = BaseDatos.GetSqlStringCommand("select idusuario, login, claveacceso, indexpiracionclave, fechaexpiracionclave, dni, apellidopaterno, apellidomaterno, nombre, situacionregistro, fechacreacion, usuariocreacion from usuario where dni = @dni");
            BaseDatos.AddInParameter(Comando, "@dni", DbType.String, dni);

            using (IDataReader Reader = BaseDatos.ExecuteReader(Comando))
            {
                if (Reader.Read())
                {
					return new Usuario()
					{
						Id = (!Reader.IsDBNull(0)) ? Reader.GetInt32(0) : 0,
						Login = (!Reader.IsDBNull(1)) ? Reader.GetString(1) : String.Empty,
						ClaveAcceso = (!Reader.IsDBNull(2)) ? Reader.GetString(2) : String.Empty,
						IndicadorExpiracionClave = (!Reader.IsDBNull(3)) ? Reader.GetString(3) : String.Empty,
						FechaExpiracionClave = (!Reader.IsDBNull(4)) ? Reader.GetDateTime(4) : Convert.ToDateTime("01/01/1900"),
						DNI = (!Reader.IsDBNull(5)) ? Reader.GetString(5) : String.Empty,
						ApellidoPaterno = (!Reader.IsDBNull(6)) ? Reader.GetString(6) : String.Empty,
						ApellidoMaterno = (!Reader.IsDBNull(7)) ? Reader.GetString(7) : String.Empty,
						Nombre = (!Reader.IsDBNull(8)) ? Reader.GetString(8) : String.Empty,
						SituacionRegistro = (!Reader.IsDBNull(9)) ? Reader.GetString(9) : String.Empty,
						FechaCreacion = (!Reader.IsDBNull(10)) ? Reader.GetDateTime(10) : Convert.ToDateTime("01/01/1900"),
						UsuarioCreacion = new Usuario() { Id = (!Reader.IsDBNull(11)) ? Reader.GetInt32(11) : 0 }
					};
                }
            }

            return null;
        }

        public IEnumerable<Usuario> BuscarTodos()
        {
            throw new NotImplementedException();
        }

        public Usuario BuscarPorId(int id)
        {
            throw new NotImplementedException();
        }

        public Usuario Insertar(Usuario entity)
        {
            throw new NotImplementedException();
        }

        public Usuario Actualizar(Usuario entity)
        {
            throw new NotImplementedException();
        }

        public bool Eliminar(Usuario entity)
        {
            throw new NotImplementedException();
        }
    }
}
