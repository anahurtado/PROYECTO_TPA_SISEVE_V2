using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using TPA.SISEVE.Dominio.Entidad;
using TPA.SISEVE.Dominio.Negocio;
using TPA.SISEVE.Dominio.Negocio.Interfaces;

namespace TPA.SISEVE.Cliente.MVC.Controllers
{
    public class CoberturaPlanController : ApiController
    {
		protected ICoberturaPlanNegocio CoberturaPlanNegocio = new CoberturaPlanNegocio();

		[Authorize]
		[HttpGet]
		public HttpResponseMessage Get()
		{
			IEnumerable<CoberturaPlan> ListadoCoberturaPlan = CoberturaPlanNegocio.BuscarTodos();

			if (ListadoCoberturaPlan.Count() <= 0)
			{
				return Request.CreateResponse(HttpStatusCode.NoContent);
			}

			return Request.CreateResponse(HttpStatusCode.OK, ListadoCoberturaPlan);
		}

    }
}
