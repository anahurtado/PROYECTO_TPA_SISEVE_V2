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
	public class GrupoVehiculoRepositorio : Repositorio<GrupoVehiculoRepositorio>, IGrupoVehiculoRepositorio
	{

		protected IPlanRepositorio PlanRepo = PlanRepositorio.ObtenerInstancia();
		protected IUsuarioRepositorio UsuarioRepo = UsuarioRepositorio.ObtenerInstancia();

		protected GrupoVehiculoRepositorio() { }

		public IEnumerable<GrupoVehiculo> BuscarTodos()
		{
			DbCommand Comando = BaseDatos.GetSqlStringCommand("select idgrupovehiculo, idplan, idclaseveh, idtipotimon, idcategoriaveh, idusoveh, grupoveh, estado, usureg, fecreg from grupo_vehiculo");
			IList<GrupoVehiculo> ListadoGrupoVehiculo = new List<GrupoVehiculo>();

			using (IDataReader Reader = BaseDatos.ExecuteReader(Comando))
			{
				while (Reader.Read())
				{
					ListadoGrupoVehiculo.Add(new GrupoVehiculo()
					{
						Id = (!Reader.IsDBNull(0)) ? Reader.GetInt32(0) : 0,
						Plan = (!Reader.IsDBNull(1)) ? PlanRepo.BuscarPorId(Reader.GetInt32(1)) : new Plan() { Id = 0 },
						ClaseVehiculoId = (!Reader.IsDBNull(2)) ? Reader.GetInt32(2) : 0,
						TipoTimonId = (!Reader.IsDBNull(3)) ? Reader.GetInt32(3) : 0,
						CategoriaVehiculoId = (!Reader.IsDBNull(4)) ? Reader.GetInt32(4) : 0,
						UsoVehiculoId = (!Reader.IsDBNull(5)) ? Reader.GetInt32(5) : 0,
						Nombre = (!Reader.IsDBNull(6)) ? Reader.GetString(6) : String.Empty,
						Estado = (!Reader.IsDBNull(7)) ? Reader.GetString(7) : String.Empty,
						UsuarioReigstro = (!Reader.IsDBNull(8)) ? UsuarioRepo.BuscarPorId(Reader.GetInt32(8)) : new Usuario() { Id = 0 },
						FechaRegistro = (!Reader.IsDBNull(9)) ? Reader.GetDateTime(9) : Convert.ToDateTime("01/01/1900")
					});
				}
			}

			return ListadoGrupoVehiculo;
		}

		public GrupoVehiculo BuscarPorId(int id)
		{
			DbCommand Comando = BaseDatos.GetSqlStringCommand("select idgrupovehiculo, idplan, idclaseveh, idtipotimon, idcategoriaveh, idusoveh, grupoveh, estado, usureg, fecreg from grupo_vehiculo where idgrupovehiculo = @idgrupovehiculo");
			BaseDatos.AddInParameter(Comando, "@idgrupovehiculo", DbType.Int32, id);

			using (IDataReader Reader = BaseDatos.ExecuteReader(Comando))
			{
				while (Reader.Read())
				{
					return new GrupoVehiculo()
					{
						Id = (!Reader.IsDBNull(0)) ? Reader.GetInt32(0) : 0,
						Plan = (!Reader.IsDBNull(1)) ? PlanRepo.BuscarPorId(Reader.GetInt32(1)) : new Plan() { Id = 0 },
						ClaseVehiculoId = (!Reader.IsDBNull(2)) ? Reader.GetInt32(2) : 0,
						TipoTimonId = (!Reader.IsDBNull(3)) ? Reader.GetInt32(3) : 0,
						CategoriaVehiculoId = (!Reader.IsDBNull(4)) ? Reader.GetInt32(4) : 0,
						UsoVehiculoId = (!Reader.IsDBNull(5)) ? Reader.GetInt32(5) : 0,
						Nombre = (!Reader.IsDBNull(6)) ? Reader.GetString(6) : String.Empty,
						Estado = (!Reader.IsDBNull(7)) ? Reader.GetString(7) : String.Empty,
						UsuarioReigstro = (!Reader.IsDBNull(8)) ? UsuarioRepo.BuscarPorId(Reader.GetInt32(8)) : new Usuario() { Id = 0 },
						FechaRegistro = (!Reader.IsDBNull(9)) ? Reader.GetDateTime(9) : Convert.ToDateTime("01/01/1900")
					};
				}
			}

			return null;
		}

		public GrupoVehiculo Insertar(GrupoVehiculo entity)
		{
			throw new NotImplementedException();
		}

		public GrupoVehiculo Actualizar(GrupoVehiculo entity)
		{
			throw new NotImplementedException();
		}

		public bool Eliminar(GrupoVehiculo entity)
		{
			throw new NotImplementedException();
		}
	}
}
