using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TPA.SISEVE.Dominio.Entidad;
using TPA.SISEVE.Dominio.Negocio;
using TPA.SISEVE.Dominio.Negocio.Interfaces;

namespace TPA.SISEVE.Cliente.MVC.Models
{
	public class PlanModel
	{

		[Display(Name = "Compañía de Seguros")]
		[Required(ErrorMessage = "Debe seleccionar una compañía de seguros.")]
		public int CiaSegId { get; set; }

		[Display(Name = "Canal")]
		[Required(ErrorMessage = "Debe seleccionar un canal.")]
		public int CanalId { get; set; }

		[Display(Name = "Producto")]
		[Required(ErrorMessage = "Debe seleccionar un plan.")]
		public int ProductoId { get; set; }

		[Display(Name = "Nombre")]
		[Required(ErrorMessage = "Ingrese el nombre del plan.")]
		public string Nombre { get; set; }

		[Display(Name = "Descripción Comercial")]
		[Required(ErrorMessage = "Ingrese la descripción comercial.")]
		public string DescripcionComercial { get; set; }

		[Display(Name = "Tipo de Vigencia")]
		[Required(ErrorMessage = "Debe seleccionar un tipo de vigencia.")]
		public string TipoVigencia { get; set; }

		[Display(Name = "Suma Asegurada Mínima")]
		[Required(ErrorMessage = "Ingrese la suma asegurada mínima.")]
		public double SumaAseguradaMinima { get; set; }

		[Display(Name = "Suma Asegurada Máxima")]
		[Required(ErrorMessage = "Ingrese la suma asegurada máxima.")]
		public double SumaAseguradaMaxima { get; set; }

		[Display(Name = "Impuesto I.G.V.")]
		[Required(ErrorMessage = "Debe seleccionar el I.G.V.")]
		public string ImpuestoIGV { get; set; }

		[Display(Name = "Impuesto Derecho Emisión")]
		[Required(ErrorMessage = "Debe seleccionar el impuesto de derecho de emisión")]
		public string ImpuestoDerechoEmision { get; set; }

		[Display(Name = "Prima Monto Mínimo")]
		[Required(ErrorMessage = "Ingrese la suma asegurada mínima.")]
		public double PrimaMontoMinima { get; set; }

		[Display(Name = "Prima Monto Máximo")]
		[Required(ErrorMessage = "Ingrese la suma asegurada máxima.")]
		public double PrimaMontoMaxima { get; set; }

	}
}