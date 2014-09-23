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
	public class CoberturaRepositorio : Repositorio<CoberturaRepositorio>, ICoberturaRepositorio
	{

		protected CoberturaRepositorio() { }

		public IEnumerable<Cobertura> BuscarTodos()
		{
			DbCommand Comando = BaseDatos.GetSqlStringCommand("select idcobertura, nombre, abrev, idciaseg, estado, usureg, fecreg from cobertura");
			IList<Cobertura> Listado = new List<Cobertura>();

			using (IDataReader Reader = BaseDatos.ExecuteReader(Comando))
			{
				while (Reader.Read())
				{
					Listado.Add(
						new Cobertura()
						{
							Id = (!Reader.IsDBNull(0)) ? Reader.GetInt32(0) : 0,
							Nombre = (!Reader.IsDBNull(1)) ? Reader.GetString(1) : String.Empty,
							Abreviatura = (!Reader.IsDBNull(2)) ? Reader.GetString(2) : String.Empty,
							CiaSeg = new CiaSeg() { Id = (!Reader.IsDBNull(3)) ? Reader.GetInt32(3) : 0 },
							Estado = (!Reader.IsDBNull(4)) ? Reader.GetString(4) : String.Empty,
							UsuarioRegistra = new Usuario() { Id = (!Reader.IsDBNull(5)) ? Reader.GetInt32(5) : 0 },
							FechaRegistro = (!Reader.IsDBNull(6)) ? Reader.GetDateTime(6) : Convert.ToDateTime("01/01/1900")
						}
					);
				}
			}

			return Listado;
		}

		public Cobertura BuscarPorId(int id)
		{
			DbCommand Comando = BaseDatos.GetSqlStringCommand("select idcobertura, nombre, abrev, idciaseg, estado, usureg, fecreg from cobertura where idcobertura = @idcobertura");
			BaseDatos.AddInParameter(Comando, "@idcobertura", DbType.Int32, id);

			using (IDataReader Reader = BaseDatos.ExecuteReader(Comando))
			{
				if (Reader.Read())
				{
					return new Cobertura()
					{
						Id = (!Reader.IsDBNull(0)) ? Reader.GetInt32(0) : 0,
						Nombre = (!Reader.IsDBNull(1)) ? Reader.GetString(1) : String.Empty,
						Abreviatura = (!Reader.IsDBNull(2)) ? Reader.GetString(2) : String.Empty,
						CiaSeg = new CiaSeg() { Id = (!Reader.IsDBNull(3)) ? Reader.GetInt32(3) : 0 },
						Estado = (!Reader.IsDBNull(4)) ? Reader.GetString(4) : String.Empty,
						UsuarioRegistra = new Usuario() { Id = (!Reader.IsDBNull(5)) ? Reader.GetInt32(5) : 0 },
						FechaRegistro = (!Reader.IsDBNull(6)) ? Reader.GetDateTime(6) : Convert.ToDateTime("01/01/1900")
					};
				}
			}

			return null;
		}

		public Cobertura Insertar(Cobertura cobertura)
		{
			DbCommand Comando = BaseDatos.GetSqlStringCommand("insert into cobertura(nombre, abrev, idciaseg, estado, usureg, fecreg) values(@nombre, @abrev, @idciaseg, @estado, @usureg, @fecreg) set @idcobertura = scope_identity()");
			BaseDatos.AddInParameter(Comando, "@nombre", DbType.String, cobertura.Nombre);
			BaseDatos.AddInParameter(Comando, "@abrev", DbType.String, cobertura.Abreviatura);
			BaseDatos.AddInParameter(Comando, "@idciaseg", DbType.Int32, cobertura.CiaSeg.Id);
			BaseDatos.AddInParameter(Comando, "@estado", DbType.String, cobertura.Estado);
			BaseDatos.AddInParameter(Comando, "@usureg", DbType.Int32, cobertura.UsuarioRegistra.Id);
			BaseDatos.AddInParameter(Comando, "@fecreg", DbType.DateTime, cobertura.FechaRegistro);
			BaseDatos.AddOutParameter(Comando, "@idcobertura", DbType.Int32, 4);

			int FilasAfectadas = BaseDatos.ExecuteNonQuery(Comando);

			if (FilasAfectadas > 0)
			{
				int Id = Convert.ToInt32(Comando.Parameters["@idciaseg"].Value);
                return BuscarPorId(Id);
			}

			return null;
		}

		public Cobertura Actualizar(Cobertura cobertura)
		{
			DbCommand Comando = BaseDatos.GetSqlStringCommand("update cobertura set nombre = @nombre, abrev = @abrev, idciaseg = @idciaseg, estado = @estado, usureg = @usureg, fecreg = @fecreg where idcobertura = @idcobertura");
			BaseDatos.AddInParameter(Comando, "@idcobertura", DbType.Int32, cobertura.Id);
			BaseDatos.AddInParameter(Comando, "@nombre", DbType.String, cobertura.Nombre);
			BaseDatos.AddInParameter(Comando, "@abrev", DbType.String, cobertura.Abreviatura);
			BaseDatos.AddInParameter(Comando, "@idciaseg", DbType.Int32, cobertura.CiaSeg.Id);
			BaseDatos.AddInParameter(Comando, "@estado", DbType.String, cobertura.Estado);
			BaseDatos.AddInParameter(Comando, "@usureg", DbType.Int32, cobertura.UsuarioRegistra.Id);
			BaseDatos.AddInParameter(Comando, "@fecreg", DbType.DateTime, cobertura.FechaRegistro);

			int FilasAfectadas = BaseDatos.ExecuteNonQuery(Comando);
			return (FilasAfectadas > 0) ? BuscarPorId(cobertura.Id) : null;
		}

		public bool Eliminar(Cobertura cobertura)
		{
			DbCommand Comando = BaseDatos.GetSqlStringCommand("delete from cobertura where idciaseg = @idciaseg");
			BaseDatos.AddInParameter(Comando, "@idciaseg", DbType.Int32, cobertura.Id);

			int FilasAfectadas = BaseDatos.ExecuteNonQuery(Comando);
			return (FilasAfectadas > 0);
		}
	}
}
