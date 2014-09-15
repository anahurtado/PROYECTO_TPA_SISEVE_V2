using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Reflection;
using System.Web;
using TPA.SISEVE.Dominio.Entidad;
using TPA.SISEVE.Dominio.Negocio;
using TPA.SISEVE.Dominio.Negocio.Interfaces;

namespace TPA.SISEVE.Cliente.MVC.Validations
{
    [AttributeUsage(AttributeTargets.Property, AllowMultiple=false, Inherited=false)]
    public class ContraseñaCorrecta : ValidationAttribute
    {

        public string DNIProperty { get; set; }

        public ContraseñaCorrecta(string dniProperty)
        {
            this.DNIProperty = dniProperty;
        }


        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
			if (value != null)
			{
				string DNI = this.ObtenerDNI(validationContext);

				if (String.IsNullOrEmpty(DNI))
				{
					return new ValidationResult(String.Format("Unknown Propery {0} in class {1}", DNIProperty, this.GetType().ToString()));
				}

				Usuario Usuario = new Usuario{ DNI = DNI , ClaveAcceso = value.ToString() };
				IUsuarioNegocio UsuarioNegocio = new UsuarioNegocio();

				if (!UsuarioNegocio.ClaveAccesoCorrecta(Usuario))
				{
					return new ValidationResult(FormatErrorMessage(validationContext.DisplayName));
				}
			}

            return ValidationResult.Success;
        }


        protected string ObtenerDNI(ValidationContext validationContext)
        {
            PropertyInfo DNIPropertyInfo = validationContext.ObjectType.GetProperty(DNIProperty);
            return (DNIPropertyInfo != null) ? DNIPropertyInfo.GetValue(validationContext.ObjectInstance, null).ToString() : "";
        }
    }
}