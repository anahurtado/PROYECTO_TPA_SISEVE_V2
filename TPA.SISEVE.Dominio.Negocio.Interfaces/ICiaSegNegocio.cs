using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using TPA.SISEVE.Dominio.Entidad;

namespace TPA.SISEVE.Dominio.Negocio.Interfaces
{
	public interface ICiaSegNegocio : INegocio<CiaSeg>
	{

		IEnumerable<CiaSeg> BuscarTodosActivos();


	}
}
