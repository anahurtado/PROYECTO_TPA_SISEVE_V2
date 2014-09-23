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
	public class CoberturaPlanNegocio : ICoberturaPlanNegocio
	{
		protected ICoberturaPlanRepositorio CoberturaPlanRepo = CoberturaPlanRepositorio.ObtenerInstancia();

		public IEnumerable<CoberturaPlan> BuscarTodos()
		{
			return CoberturaPlanRepo.BuscarTodos();
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
			return CoberturaPlanRepo.BuscarPorId(planId, coberturaId);
		}
	}
}
