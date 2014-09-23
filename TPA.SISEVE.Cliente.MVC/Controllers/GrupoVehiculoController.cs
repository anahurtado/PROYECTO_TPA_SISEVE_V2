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
    public class GrupoVehiculoController : ApiController
    {

		IGrupoVehiculoNegocio GrupoVehiculoNegocio = new GrupoVehiculoNegocio();

		[Authorize]
		[HttpGet]
		public HttpResponseMessage Get()
		{
			IEnumerable<GrupoVehiculo> ListadoGrupoVehiculo = GrupoVehiculoNegocio.BuscarTodos();

			if (ListadoGrupoVehiculo.Count() <= 0)
			{
				return Request.CreateResponse(HttpStatusCode.NoContent);
			}

			return Request.CreateResponse(HttpStatusCode.OK, ListadoGrupoVehiculo);
		}


		[Authorize]
		[HttpGet]
		public HttpResponseMessage Get(int id)
		{
			GrupoVehiculo GrupoVehiculo = GrupoVehiculoNegocio.BuscarPorId(id);

			if (GrupoVehiculo == null)
			{
				return Request.CreateResponse(HttpStatusCode.NoContent);
			}

			return Request.CreateResponse(HttpStatusCode.OK, GrupoVehiculo);
		}

    }
}
