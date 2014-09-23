using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using TPA.SISEVE.Dominio.Entidad;
using TPA.SISEVE.Dominio.Negocio.Interfaces;
using TPA.SISEVE.Repositorio.Datos;
using TPA.SISEVE.Repositorio.Datos.Interfaces;

namespace TPA.SISEVE.Dominio.Negocio
{
	public class CanalNegocio : ICanalNegocio
	{

		protected ICanalRepositorio CanalRepo = CanalRepositorio.ObtenerInstancia();

		public IEnumerable<Canal> BuscarTodos()
		{
			return CanalRepo.BuscarTodos();
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

		public IEnumerable<Canal> BuscarTodosActivos()
		{
			return CanalRepo.BuscarTodos().Where(canal => canal.Estado == "A");
		}
	}
}
