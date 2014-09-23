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
	public class ModeloNegocio : IModeloNegocio
	{
		protected IModeloRepositorio ModeloRepo = ModeloRepositorio.ObtenerInstancia();

        public IEnumerable<Modelo> BuscarPorMarca(Marca marca)
        {
            return ModeloRepo.BuscarPorMarca(marca);
        }

        public IEnumerable<Modelo> BuscarTodos()
        {
            return ModeloRepo.BuscarTodos();
        }

        public Modelo BuscarPorId(int id)
        {
            return ModeloRepo.BuscarPorId(id);
        }

        public Modelo Insertar(Modelo entity)
        {
            throw new NotImplementedException();
        }

        public Modelo Actualizar(Modelo entity)
        {
            throw new NotImplementedException();
        }

        public bool Eliminar(Modelo entity)
        {
            throw new NotImplementedException();
        }
    }
}
