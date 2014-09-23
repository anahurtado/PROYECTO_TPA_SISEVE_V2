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
    public class MarcaController : ApiController
    {

        protected IMarcaNegocio MarcaNegocio = new MarcaNegocio();

        [Authorize]
        [HttpGet]
        public HttpResponseMessage Get()
        {
            IEnumerable<Marca> ListadoMarcas = MarcaNegocio.BuscarTodosActivos();

            if (ListadoMarcas.Count() <= 0)
            {
                return Request.CreateResponse(HttpStatusCode.NoContent);
            }
            return Request.CreateResponse(HttpStatusCode.OK, ListadoMarcas);
        }


        [Authorize]
        [HttpGet]
        public HttpResponseMessage Get(int id)
        {
            Marca Marca = MarcaNegocio.BuscarPorId(id);

            if (Marca == null)
            {
                return Request.CreateResponse(HttpStatusCode.NoContent);
            }
            return Request.CreateResponse(HttpStatusCode.OK, Marca);
        }

    }
}
