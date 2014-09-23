using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Text;
using TPA.SISEVE.Dominio.Entidad;
using TPA.SISEVE.Repositorio.Datos.Interfaces;

namespace TPA.SISEVE.Repositorio.Datos
{
	public class MarcaRepositorio : Repositorio<MarcaRepositorio>, IMarcaRepositorio
	{

        protected IUsuarioRepositorio UsuarioRepo = UsuarioRepositorio.ObtenerInstancia();

		protected MarcaRepositorio() { }

		public IEnumerable<Marca> BuscarTodos()
		{
            DbCommand Comando = BaseDatos.GetSqlStringCommand("select idMarca, nombre, idOrigen, estado, usuReg, fecReg from marca");
			IList<Marca> ListadoMarca = new List<Marca>();

			using (IDataReader Reader = BaseDatos.ExecuteReader(Comando))
			{
				while (Reader.Read())
				{
					ListadoMarca.Add(new Marca()
					{
						Id = (!Reader.IsDBNull(0)) ? Reader.GetInt32(0) : 0,
						Nombre = (!Reader.IsDBNull(1)) ? Reader.GetString(1) : String.Empty,
						OrigenId = (!Reader.IsDBNull(2)) ? Reader.GetInt32(2) : 0,
						Estado = (!Reader.IsDBNull(3)) ? Reader.GetString(3) : String.Empty,
						UsuarioRegistro = (!Reader.IsDBNull(4)) ? UsuarioRepo.BuscarPorId(Reader.GetInt32(4)) : new Usuario() { Id = 0}, 
						FechaRegistro = (!Reader.IsDBNull(5)) ? Reader.GetDateTime(5) : Convert.ToDateTime("01/01/1900")
					});
				}
			}

			return ListadoMarca;
		}

		public Marca BuscarPorId(int id)
		{
            DbCommand Comando = BaseDatos.GetSqlStringCommand("select idMarca, nombre, idOrigen, estado, usuReg, fecReg from marca where idMarca = @idMarca");
            BaseDatos.AddInParameter(Comando, "@idMarca", DbType.Int32, id);

            using (IDataReader Reader = BaseDatos.ExecuteReader(Comando))
            {
                if (Reader.Read())
                {
                    return new Marca()
                    {
                        Id = (!Reader.IsDBNull(0)) ? Reader.GetInt32(0) : 0,
                        Nombre = (!Reader.IsDBNull(1)) ? Reader.GetString(1) : String.Empty,
                        OrigenId = (!Reader.IsDBNull(2)) ? Reader.GetInt32(2) : 0,
                        Estado = (!Reader.IsDBNull(3)) ? Reader.GetString(3) : String.Empty,
                        UsuarioRegistro = (!Reader.IsDBNull(4)) ? UsuarioRepo.BuscarPorId(Reader.GetInt32(4)) : new Usuario() { Id = 0 },
                        FechaRegistro = (!Reader.IsDBNull(5)) ? Reader.GetDateTime(5) : Convert.ToDateTime("01/01/1900")
                    };
                }
            }

            return null;
		}

		public Marca Insertar(Marca entity)
		{
			throw new NotImplementedException();
		}

		public Marca Actualizar(Marca entity)
		{
			throw new NotImplementedException();
		}

		public bool Eliminar(Marca entity)
		{
			throw new NotImplementedException();
		}
	}
}
