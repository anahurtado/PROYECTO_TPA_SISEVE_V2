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
	public class CiaSegRepositorio : Repositorio<CiaSegRepositorio>, ICiaSegRepositorio
	{

		protected CiaSegRepositorio() { }

		public IEnumerable<CiaSeg> BuscarTodos()
		{
            DbCommand Comando = BaseDatos.GetSqlStringCommand("select idciaseg, nombre, estado, usureg, fecreg from cia_seg");
			IList<CiaSeg> Listado = new List<CiaSeg>();

			using (IDataReader Reader = BaseDatos.ExecuteReader(Comando))
			{
				while (Reader.Read())
				{
					Listado.Add(
						new CiaSeg()
						{
							Id = (!Reader.IsDBNull(0)) ? Reader.GetInt32(0) : 0,
							Nombre = (!Reader.IsDBNull(1)) ? Reader.GetString(1) : String.Empty,
							Estado = (!Reader.IsDBNull(2)) ? Reader.GetString(2) : String.Empty,
							UsuarioRegistra = new Usuario() { Id = (!Reader.IsDBNull(3)) ? Reader.GetInt32(3) : 0 },
							FechaRegistro = (!Reader.IsDBNull(4)) ? Reader.GetDateTime(4) : Convert.ToDateTime("01/01/1900")
						}
					);
				}
			}

			return Listado;
		}

		public CiaSeg BuscarPorId(int id)
		{
            DbCommand Comando = BaseDatos.GetSqlStringCommand("select idciaseg, nombre, estado, usureg, fecreg from cia_seg where idciaseg = @idciaseg");
			BaseDatos.AddInParameter(Comando, "@idciaseg", DbType.Int32, id);

			using (IDataReader Reader = BaseDatos.ExecuteReader(Comando))
			{
				if (Reader.Read())
				{
					return new CiaSeg()
					{
						Id = (!Reader.IsDBNull(0)) ? Reader.GetInt32(0) : 0,
						Nombre = (!Reader.IsDBNull(1)) ? Reader.GetString(1) : String.Empty,
						Estado = (!Reader.IsDBNull(2)) ? Reader.GetString(2) : String.Empty,
						UsuarioRegistra = new Usuario() { Id = (!Reader.IsDBNull(3)) ? Reader.GetInt32(3) : 0 },
						FechaRegistro = (!Reader.IsDBNull(4)) ? Reader.GetDateTime(4) : Convert.ToDateTime("01/01/1900")
					};
				}
			}

			return null;
		}

		public CiaSeg Insertar(CiaSeg ciaSeg)
		{
			DbCommand Comando = BaseDatos.GetSqlStringCommand("insert into cia_seg(nombre, estado, usureg, fecreg) values(@nombre, @estado, @usureg, @fecreg) set @idciaseg = scope_identity()");
			BaseDatos.AddInParameter(Comando, "@nombre", DbType.String, ciaSeg.Nombre);
			BaseDatos.AddInParameter(Comando, "@estado", DbType.String, ciaSeg.Estado);
			BaseDatos.AddInParameter(Comando, "@usureg", DbType.Int32, ciaSeg.UsuarioRegistra.Id);
			BaseDatos.AddInParameter(Comando, "@fecreg", DbType.DateTime, ciaSeg.FechaRegistro);
			BaseDatos.AddOutParameter(Comando, "@idciaseg", DbType.Int32, 4);

			int FilasAfectadas = BaseDatos.ExecuteNonQuery(Comando);

			if (FilasAfectadas > 0)
			{
				int Id = Convert.ToInt32(Comando.Parameters["@idciaseg"].Value);
				return BuscarPorId(Id);
			}

			return null;
		}

		public CiaSeg Actualizar(CiaSeg ciaSeg)
		{
            DbCommand Comando = BaseDatos.GetSqlStringCommand("update cia_seg set nombre = @nombre, estado = @estado, usureg = @usureg, fecreg = @fecreg where idciaseg = @idciaseg");
			BaseDatos.AddInParameter(Comando, "@idciaseg", DbType.Int32, ciaSeg.Id);
			BaseDatos.AddInParameter(Comando, "@nombre", DbType.String, ciaSeg.Nombre);
			BaseDatos.AddInParameter(Comando, "@estado", DbType.String, ciaSeg.Estado);
			BaseDatos.AddInParameter(Comando, "@usureg", DbType.Int32, ciaSeg.UsuarioRegistra.Id);
			BaseDatos.AddInParameter(Comando, "@fecreg", DbType.DateTime, ciaSeg.FechaRegistro);

			int FilasAfectadas = BaseDatos.ExecuteNonQuery(Comando);

			return (FilasAfectadas > 0) ? BuscarPorId(ciaSeg.Id) : null;
		}

		public bool Eliminar(CiaSeg ciaSeg)
		{
            DbCommand Comando = BaseDatos.GetSqlStringCommand("delete from cia_seg where idciaseg = @idciaseg");
			BaseDatos.AddInParameter(Comando, "@idciaseg", DbType.Int32, ciaSeg.Id);

			int FilasAfectadas = BaseDatos.ExecuteNonQuery(Comando);
			
			return (FilasAfectadas > 0);
		}
	}
}
