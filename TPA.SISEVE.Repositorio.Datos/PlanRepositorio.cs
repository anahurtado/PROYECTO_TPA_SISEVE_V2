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
	public class PlanRepositorio : Repositorio<PlanRepositorio>, IPlanRepositorio
	{

		IProductoRepositorio ProductoRepo = ProductoRepositorio.ObtenerInstancia();
		IUsuarioRepositorio UsuarioRepo = UsuarioRepositorio.ObtenerInstancia();

		public IEnumerable<Plan> BuscarTodos()
		{
			DbCommand Comando = BaseDatos.GetSqlStringCommand("select idPlan, nombre, descripcion, idProducto, tipoVigencia, sumaAsegMin, sumaAsegMax, estado, usuReg, fecReg from [plan]");
			IList<Plan> ListadoPlan = new List<Plan>();

			using (IDataReader Reader = BaseDatos.ExecuteReader(Comando))
			{
				while (Reader.Read())
				{
					ListadoPlan.Add(new Plan()
					{
						Id = (!Reader.IsDBNull(0)) ? Reader.GetInt32(0) : 0,
						Nombre = (!Reader.IsDBNull(1)) ? Reader.GetString(1) : String.Empty,
						Descripcion = (!Reader.IsDBNull(2)) ? Reader.GetString(2) : String.Empty,
						Producto = (!Reader.IsDBNull(3)) ? ProductoRepo.BuscarPorId(Reader.GetInt32(3)) : new Producto() { Id = 0 },
						TipoVigencia = (!Reader.IsDBNull(4)) ? Reader.GetString(4) : String.Empty,
						SumaAseguradaMinima = (!Reader.IsDBNull(5)) ? Reader.GetDecimal(5) : 0,
						SumaAseguradaMaxima = (!Reader.IsDBNull(6)) ? Reader.GetDecimal(6) : 0,
						Estado = (!Reader.IsDBNull(7)) ? Reader.GetString(7) : String.Empty,
						UsuarioRegistro = (!Reader.IsDBNull(8)) ? UsuarioRepo.BuscarPorId(Reader.GetInt32(8)) : new Usuario() { Id = 0 }, 
						FechaRegistro = (!Reader.IsDBNull(9)) ? Reader.GetDateTime(9) : Convert.ToDateTime("01/01/1900")
					});
				}
			}

			return ListadoPlan;
		}

		public Plan BuscarPorId(int id)
		{
			DbCommand Comando = BaseDatos.GetSqlStringCommand("select idPlan, nombre, descripcion, idProducto, tipoVigencia, sumaAsegMin, sumaAsegMax, estado, usuReg, fecReg from [plan] where idPlan = @idPlan");
			BaseDatos.AddInParameter(Comando, "@idPlan", DbType.Int32, id);

			using (IDataReader Reader = BaseDatos.ExecuteReader(Comando))
			{
				if (Reader.Read())
				{
					return new Plan()
					{
						Id = (!Reader.IsDBNull(0)) ? Reader.GetInt32(0) : 0,
						Nombre = (!Reader.IsDBNull(1)) ? Reader.GetString(1) : String.Empty,
						Descripcion = (!Reader.IsDBNull(2)) ? Reader.GetString(2) : String.Empty,
						Producto = (!Reader.IsDBNull(3)) ? ProductoRepo.BuscarPorId(Reader.GetInt32(3)) : new Producto() { Id = 0 },
						TipoVigencia = (!Reader.IsDBNull(4)) ? Reader.GetString(4) : String.Empty,
						SumaAseguradaMinima = (!Reader.IsDBNull(5)) ? Reader.GetDecimal(5) : 0,
						SumaAseguradaMaxima = (!Reader.IsDBNull(6)) ? Reader.GetDecimal(6) : 0,
						Estado = (!Reader.IsDBNull(7)) ? Reader.GetString(7) : String.Empty,
						UsuarioRegistro = (!Reader.IsDBNull(8)) ? UsuarioRepo.BuscarPorId(Reader.GetInt32(8)) : new Usuario() { Id = 0 },
						FechaRegistro = (!Reader.IsDBNull(9)) ? Reader.GetDateTime(9) : Convert.ToDateTime("01/01/1900")
					};
				}
			}

			return null;
		}

		public Plan Insertar(Plan entity)
		{
			throw new NotImplementedException();
		}

		public Plan Actualizar(Plan entity)
		{
			throw new NotImplementedException();
		}

		public bool Eliminar(Plan entity)
		{
			throw new NotImplementedException();
		}
	}
}
