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
	public class CanalRepositorio : Repositorio<CanalRepositorio>, ICanalRepositorio
	{

		public IEnumerable<Canal> BuscarTodos()
		{
			DbCommand Comando = BaseDatos.GetSqlStringCommand("select idcanal, nombre, iduni_neg, estado, usu_reg, fec_reg from canal");
			IList<Canal> ListadoCanal = new List<Canal>();

			using (IDataReader Reader = BaseDatos.ExecuteReader(Comando))
			{
				while (Reader.Read())
				{
					ListadoCanal.Add(new Canal()
					{
						Id = (!Reader.IsDBNull(0)) ? Reader.GetInt32(0) : 0,
						Nombre = (!Reader.IsDBNull(1)) ? Reader.GetString(1) : String.Empty,
						UniNeg = new UniNeg() { Id = (!Reader.IsDBNull(2)) ? Reader.GetInt32(2) : 0, },
						Estado = (!Reader.IsDBNull(3)) ? Reader.GetString(3) : String.Empty,
						UsuarioRegistro = new Usuario() { Id = (!Reader.IsDBNull(4)) ? Reader.GetInt32(4) : 0 },
						FechaRegistro = (!Reader.IsDBNull(5)) ? Reader.GetDateTime(5) : Convert.ToDateTime("01/01/1900")
					});
				}
			}

			return ListadoCanal;
		}

		public Canal BuscarPorId(int id)
		{
			throw new NotImplementedException();
		}

		public Canal Insertar(Canal entity)
		{
			throw new NotImplementedException();
		}

		public Canal Actualizar(Canal entity)
		{
			throw new NotImplementedException();
		}

		public bool Eliminar(Canal entity)
		{
			throw new NotImplementedException();
		}
	}
}
