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
	public class CiaSegNegocio : ICiaSegNegocio
	{
		protected ICiaSegRepositorio CiaSegRepo = CiaSegRepositorio.ObtenerInstancia();


		public IEnumerable<CiaSeg> BuscarTodos()
		{
			return CiaSegRepo.BuscarTodos();
		}

		public CiaSeg BuscarPorId(int id)
		{
			return CiaSegRepo.BuscarPorId(id);
		}

		public CiaSeg Insertar(CiaSeg ciaSeg)
		{
			return CiaSegRepo.Insertar(ciaSeg);
		}

		public CiaSeg Actualizar(CiaSeg ciaSeg)
		{
			return CiaSegRepo.Actualizar(ciaSeg);
		}

		public bool Eliminar(CiaSeg ciaSeg)
		{
			return CiaSegRepo.Eliminar(ciaSeg);
		}

		public IEnumerable<CiaSeg> BuscarTodosActivos()
		{
			return CiaSegRepo.BuscarTodos().Where(item => item.Estado == "A");
		}
	}
}
