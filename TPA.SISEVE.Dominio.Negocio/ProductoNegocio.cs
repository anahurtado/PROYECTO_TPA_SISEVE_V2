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
	public class ProductoNegocio : IProductoNegocio
	{

		protected IProductoRepositorio ProductoRepo = ProductoRepositorio.ObtenerInstancia();

		public IEnumerable<Producto> BuscarTodos()
		{
			return ProductoRepo.BuscarTodos();
		}

		public Producto BuscarPorId(int id)
		{
			return ProductoRepo.BuscarPorId(id);
		}

		public Producto Insertar(Producto producto)
		{
			return ProductoRepo.Insertar(producto);
		}

		public Producto Actualizar(Producto producto)
		{
			return ProductoRepo.Actualizar(producto);
		}

		public bool Eliminar(Producto producto)
		{
			return ProductoRepo.Eliminar(producto);
		}
	}
}
