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
	public class CoberturaPlanRepositorio : Repositorio<CoberturaPlanRepositorio>, ICoberturaPlanRepositorio
	{

		protected IPlanRepositorio PlanRepo = PlanRepositorio.ObtenerInstancia();
		protected ICoberturaRepositorio CoberturaRepo = CoberturaRepositorio.ObtenerInstancia();


		protected CoberturaPlanRepositorio() { }

		public IEnumerable<CoberturaPlan> BuscarTodos()
		{
			DbCommand Comando = BaseDatos.GetSqlStringCommand("select idplan, idcobertura, marcaprincipal, idreglatarifa, sumaasegurada, deducible, descripcion, orden, estado, usureg, fecreg from cobertura_plan");
			IList<CoberturaPlan> ListadoCoberturaPlan = new List<CoberturaPlan>();

			using(IDataReader Reader = BaseDatos.ExecuteReader(Comando))
			{
				while (Reader.Read())
				{
					ListadoCoberturaPlan.Add(new CoberturaPlan()
						{
							Plan = (!Reader.IsDBNull(0))? PlanRepo.BuscarPorId(Reader.GetInt32(0)) : new Plan() { Id = 0}, 
							Cobertura = (!Reader.IsDBNull(1)) ? CoberturaRepo.BuscarPorId(Reader.GetInt32(1)) : new Cobertura() { Id = 0 },
							MarcaPrincipal = (!Reader.IsDBNull(2)) ? Reader.GetString(2) : String.Empty,
							ReglaTarifaId = (!Reader.IsDBNull(3)) ? Reader.GetInt32(3) : 0,
							SumaAsegurada = (!Reader.IsDBNull(4)) ? Reader.GetDecimal(4) : 0,
							Deducible = (!Reader.IsDBNull(5)) ? Reader.GetString(5) : String.Empty,
							Descripcion = (!Reader.IsDBNull(6)) ? Reader.GetString(6) : String.Empty,
							Orden = (!Reader.IsDBNull(7)) ? Reader.GetString(7) : String.Empty,
							Estado = (!Reader.IsDBNull(8)) ? Reader.GetString(8) : String.Empty,
							UsuarioRegistro = new Usuario() { Id = (!Reader.IsDBNull(9)) ? Reader.GetInt32(9) : 0 },
							FechaRegistro = (!Reader.IsDBNull(10)) ? Reader.GetDateTime(10) : Convert.ToDateTime("01/01/1900")
						});
				}
			}

			return ListadoCoberturaPlan;
		}

		public CoberturaPlan BuscarPorId(int id)
		{
			throw new NotImplementedException();
		}

		public CoberturaPlan Insertar(CoberturaPlan entity)
		{
			throw new NotImplementedException();
		}

		public CoberturaPlan Actualizar(CoberturaPlan entity)
		{
			throw new NotImplementedException();
		}

		public bool Eliminar(CoberturaPlan entity)
		{
			throw new NotImplementedException();
		}

		public CoberturaPlan BuscarPorId(int planId, int coberturaId)
		{
			DbCommand Comando = BaseDatos.GetSqlStringCommand("select idplan, idcobertura, marcaprincipal, idreglatarifa, sumaasegurada, deducible, descripcion, orden, estado, usureg, fecreg from cobertura_plan where idplan = @idplan and idcobertura = @idcobertura");
			BaseDatos.AddInParameter(Comando, "@idplan", DbType.Int32, planId);
			BaseDatos.AddInParameter(Comando, "@idcobertura", DbType.Int32, coberturaId);

			using (IDataReader Reader = BaseDatos.ExecuteReader(Comando))
			{
				if (Reader.Read())
				{
					return new CoberturaPlan()
					{
						Cobertura = (!Reader.IsDBNull(1)) ? CoberturaRepo.BuscarPorId(Reader.GetInt32(1)) : new Cobertura() { Id = 0 },
						MarcaPrincipal = (!Reader.IsDBNull(2)) ? Reader.GetString(2) : String.Empty,
						ReglaTarifaId = (!Reader.IsDBNull(3)) ? Reader.GetInt32(3) : 0,
						SumaAsegurada = (!Reader.IsDBNull(4)) ? Reader.GetDecimal(4) : 0,
						Deducible = (!Reader.IsDBNull(5)) ? Reader.GetString(5) : String.Empty,
						Descripcion = (!Reader.IsDBNull(6)) ? Reader.GetString(6) : String.Empty,
						Orden = (!Reader.IsDBNull(7)) ? Reader.GetString(7) : String.Empty,
						Estado = (!Reader.IsDBNull(8)) ? Reader.GetString(8) : String.Empty,
						UsuarioRegistro = new Usuario() { Id = (!Reader.IsDBNull(9)) ? Reader.GetInt32(9) : 0 },
						FechaRegistro = (!Reader.IsDBNull(10)) ? Reader.GetDateTime(10) : Convert.ToDateTime("01/01/1900")
					};
				}
			}

			return null;
		}
	}
}
