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
	public class ModeloRepositorio : Repositorio<ModeloRepositorio>, IModeloRepositorio
	{

        IMarcaRepositorio MarcaRepo = MarcaRepositorio.ObtenerInstancia();
        IUsuarioRepositorio UsuarioRepo = UsuarioRepositorio.ObtenerInstancia();

		protected ModeloRepositorio() { }

		public IEnumerable<Modelo> BuscarPorMarca(Marca marca)
		{
			IList<Modelo> ListadoModelos = new List<Modelo>();
			DbCommand Comando = BaseDatos.GetSqlStringCommand("select idmodelo, idmarca, nombre, estado, usureg, fecreg from modelo where idmarca = @idmarca");
			BaseDatos.AddInParameter(Comando, "@idmarca", DbType.Int32, marca.Id);

			using (IDataReader Reader = BaseDatos.ExecuteReader(Comando))
			{
				while (Reader.Read())
				{
                    ListadoModelos.Add(new Modelo()
                    {
                        Id = (!Reader.IsDBNull(0)) ? Reader.GetInt32(0) : 0,
                        Marca = (!Reader.IsDBNull(1)) ? MarcaRepo.BuscarPorId(Reader.GetInt32(1)) : new Marca() { Id = 0 } ,
                        Nombre = (!Reader.IsDBNull(2)) ? Reader.GetString(2) : String.Empty,
                        Estado = (!Reader.IsDBNull(3)) ? Reader.GetString(3) : String.Empty,
                        UsuarioRegistro= (!Reader.IsDBNull(4)) ? UsuarioRepo.BuscarPorId(Reader.GetInt32(4)) : new Usuario() { Id = 4 },
                        FechaRegistro = (!Reader.IsDBNull(5)) ? Reader.GetDateTime(5) : Convert.ToDateTime("01/01/1900")
                    });
				}
			}

			return ListadoModelos;
		}

		public IEnumerable<Modelo> BuscarTodos()
		{
            IList<Modelo> ListadoModelos = new List<Modelo>();
            DbCommand Comando = BaseDatos.GetSqlStringCommand("select idmodelo, idmarca, nombre, estado, usureg, fecreg from modelo");

            using (IDataReader Reader = BaseDatos.ExecuteReader(Comando))
            {
                while (Reader.Read())
                {
                    ListadoModelos.Add(new Modelo()
                    {
                        Id = (!Reader.IsDBNull(0)) ? Reader.GetInt32(0) : 0,
                        Marca = (!Reader.IsDBNull(1)) ? MarcaRepo.BuscarPorId(Reader.GetInt32(1)) : new Marca() { Id = 0 },
                        Nombre = (!Reader.IsDBNull(2)) ? Reader.GetString(2) : String.Empty,
                        Estado = (!Reader.IsDBNull(3)) ? Reader.GetString(3) : String.Empty,
                        UsuarioRegistro = (!Reader.IsDBNull(4)) ? UsuarioRepo.BuscarPorId(Reader.GetInt32(4)) : new Usuario() { Id = 4 },
                        FechaRegistro = (!Reader.IsDBNull(5)) ? Reader.GetDateTime(5) : Convert.ToDateTime("01/01/1900")
                    });
                }
            }

            return ListadoModelos;
		}

		public Modelo BuscarPorId(int id)
		{
            DbCommand Comando = BaseDatos.GetSqlStringCommand("select idmodelo, idmarca, nombre, estado, usureg, fecreg from modelo where idmodelo = @idmodelo");
            BaseDatos.AddInParameter(Comando, "@idmodelo", DbType.Int32, id);

            using (IDataReader Reader = BaseDatos.ExecuteReader(Comando))
            {
                if (Reader.Read())
                {
                    return new Modelo()
                    {
                        Id = (!Reader.IsDBNull(0)) ? Reader.GetInt32(0) : 0,
                        Marca = (!Reader.IsDBNull(1)) ? MarcaRepo.BuscarPorId(Reader.GetInt32(1)) : new Marca() { Id = 0 },
                        Nombre = (!Reader.IsDBNull(2)) ? Reader.GetString(2) : String.Empty,
                        Estado = (!Reader.IsDBNull(3)) ? Reader.GetString(3) : String.Empty,
                        UsuarioRegistro = (!Reader.IsDBNull(4)) ? UsuarioRepo.BuscarPorId(Reader.GetInt32(4)) : new Usuario() { Id = 4 },
                        FechaRegistro = (!Reader.IsDBNull(5)) ? Reader.GetDateTime(5) : Convert.ToDateTime("01/01/1900")
                    };
                }
            }

            return null;
		}

		public Modelo Insertar(Modelo entity)
		{
			throw new NotImplementedException();
		}

		public Modelo Actualizar(Modelo entity)
		{
			throw new NotImplementedException();
		}

		public bool Eliminar(Modelo entity)
		{
			throw new NotImplementedException();
		}
	}
}
