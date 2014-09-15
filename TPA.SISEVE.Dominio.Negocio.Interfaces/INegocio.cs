using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TPA.SISEVE.Dominio.Negocio.Interfaces
{
	public interface INegocio<T> where T: class
	{
		IEnumerable<T> BuscarTodos();
		T BuscarPorId(int id);
		T Insertar(T entity);
		T Actualizar(T entity);
		bool Eliminar(T entity);
	}
}
