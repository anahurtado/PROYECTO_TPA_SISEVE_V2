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
	public class GrupoVehiculoNegocio : IGrupoVehiculoNegocio
	{
		IGrupoVehiculoRepositorio GrupoVehiculoRepo = GrupoVehiculoRepositorio.ObtenerInstancia();

		public IEnumerable<GrupoVehiculo> BuscarTodos()
		{
			return GrupoVehiculoRepo.BuscarTodos();
		}

		public GrupoVehiculo BuscarPorId(int id)
		{
			return GrupoVehiculoRepo.BuscarPorId(id);
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
