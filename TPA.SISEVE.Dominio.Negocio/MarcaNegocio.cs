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
	public class MarcaNegocio : IMarcaNegocio
	{

		protected IMarcaRepositorio MarcaRepo = MarcaRepositorio.ObtenerInstancia();

		public IEnumerable<Marca> BuscarTodosActivos()
		{
			return BuscarTodos().Where(marca => marca.Estado == "A");
		}

		public IEnumerable<Marca> BuscarTodos()
		{
            return MarcaRepo.BuscarTodos();
		}

		public Marca BuscarPorId(int id)
		{
            return MarcaRepo.BuscarPorId(id);
		}

		public Marca Insertar(Marca entity)
		{
			throw new NotImplementedException();
		}

		public Marca Actualizar(Marca entity)
		{
			throw new NotImplementedException();
		}

		public bool Eliminar(Marca entity)
		{
			throw new NotImplementedException();
		}
	}
}
