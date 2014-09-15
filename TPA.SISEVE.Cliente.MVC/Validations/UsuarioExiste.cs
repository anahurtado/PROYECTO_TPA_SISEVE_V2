using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using TPA.SISEVE.Dominio.Entidad;
using TPA.SISEVE.Dominio.Negocio;
using TPA.SISEVE.Dominio.Negocio.Interfaces;

namespace TPA.SISEVE.Cliente.MVC.Validations
{
    [AttributeUsage(AttributeTargets.Property, AllowMultiple=false, Inherited=false)]
    public class UsuarioExiste : ValidationAttribute
    {
        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            if (value != null)
            {
				Usuario Usuario = new Usuario() { DNI = value.ToString() };
				IUsuarioNegocio UsuarioNegocio = new UsuarioNegocio();

				if (!UsuarioNegocio.UsuarioExiste(Usuario))
				{
					return new ValidationResult(FormatErrorMessage(validationContext.DisplayName));
				}
            }

            return ValidationResult.Success;
        }

    }
}