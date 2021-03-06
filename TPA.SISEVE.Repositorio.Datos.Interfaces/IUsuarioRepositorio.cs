﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using TPA.SISEVE.Dominio.Entidad;

namespace TPA.SISEVE.Repositorio.Datos.Interfaces
{
	public interface IUsuarioRepositorio : IRepositorio<Usuario>
	{
		Usuario BuscarPorDni(string dni);
	}
}
