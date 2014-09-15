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
	public class UsuarioNegocio : IUsuarioNegocio
	{

		protected IUsuarioRepositorio UsuarioRepo = UsuarioRepositorio.ObtenerInstancia();

		public Usuario BuscarPorDNI(string dni)
		{
			return UsuarioRepo.BuscarPorDni(dni);
		}

		public bool UsuarioExiste(Usuario usuario)
		{
			return (BuscarPorDNI(usuario.DNI) != null);
		}

		public bool ClaveAccesoCorrecta(Usuario usuario)
		{
			Usuario UsuarioEncontrado = BuscarPorDNI(usuario.DNI);
			return (UsuarioEncontrado != null && UsuarioEncontrado.ClaveAcceso.Equals(usuario.ClaveAcceso));
		}

		public IEnumerable<Usuario> BuscarTodos()
		{
			return UsuarioRepo.BuscarTodos();
		}

		public Usuario BuscarPorId(int id)
		{
			return UsuarioRepo.BuscarPorId(id);
		}

		public Usuario Insertar(Usuario usuario)
		{
			return UsuarioRepo.Insertar(usuario);
		}

		public Usuario Actualizar(Usuario usuario)
		{
			return UsuarioRepo.Actualizar(usuario);
		}

		public bool Eliminar(Usuario usuario)
		{
			return UsuarioRepo.Eliminar(usuario);
		}
	}
}
