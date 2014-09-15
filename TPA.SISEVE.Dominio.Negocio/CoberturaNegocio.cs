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
	public class CoberturaNegocio : ICoberturaNegocio
	{

		ICoberturaRepositorio CoberturaRepo = CoberturaRepositorio.ObtenerInstancia();

		public IEnumerable<Cobertura> BuscarTodos()
		{
			return CoberturaRepo.BuscarTodos();
		}

		public Cobertura BuscarPorId(int id)
		{
			return CoberturaRepo.BuscarPorId(id);
		}

		public Cobertura Insertar(Cobertura cobertura)
		{
			return CoberturaRepo.Insertar(cobertura);
		}

		public Cobertura Actualizar(Cobertura cobertura)
		{
			return CoberturaRepo.Actualizar(cobertura);
		}

		public bool Eliminar(Cobertura cobertura)
		{
			return CoberturaRepo.Eliminar(cobertura);
		}
	}
}
