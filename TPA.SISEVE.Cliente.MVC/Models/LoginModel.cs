using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using TPA.SISEVE.Cliente.MVC.Validations;

namespace TPA.SISEVE.Cliente.MVC.Models
{
	public class LoginModel
	{
		[Display(Name = "D.N.I.")]
		[Required(ErrorMessage = "Ingrese el D.N.I. del usuario.")]
		[UsuarioExiste(ErrorMessage = "El usuario no está registrado.")]
		public string DNI { get; set; }


		[Display(Name = "Contraseña")]
		[DataType(DataType.Password)]
		[Required(ErrorMessage = "Ingrese la contraseña del usuario.")]
		[ContraseñaCorrecta("DNI", ErrorMessage = "La contraseña del usuario es incorrecta.")]
		public string Contraseña { get; set; }
	}
}