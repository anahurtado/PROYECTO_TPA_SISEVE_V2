﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using TPA.SISEVE.Dominio.Entidad;

namespace TPA.SISEVE.Dominio.Negocio.Interfaces
{
	public interface IModeloNegocio : INegocio<Modelo>
	{
		IEnumerable<Modelo> BuscarPorMarca(Marca marca);
	}
}
