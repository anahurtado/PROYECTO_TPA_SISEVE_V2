using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using TPA.SISEVE.Dominio.Entidad;

namespace TPA.SISEVE.Dominio.Negocio.Interfaces
{
	public interface IUsuarioNegocio : INegocio<Usuario>
	{
		Usuario BuscarPorDNI(string dni);
		bool UsuarioExiste(Usuario usuario);
		bool ClaveAccesoCorrecta(Usuario usuario);
	}
}
