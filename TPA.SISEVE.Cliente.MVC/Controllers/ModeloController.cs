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
    public class ModeloController : ApiController
    {

        protected IModeloNegocio ModeloNegocio = new ModeloNegocio();

        [Authorize]
        [HttpGet]
        public HttpResponseMessage Get()
        {
            IEnumerable<Modelo> ListadoModelos;

            var QueryString = Request.GetQueryNameValuePairs();

            if (!String.IsNullOrEmpty(QueryString.FirstOrDefault(item => item.Key.ToLower() == "marcaid").Value))
            {
                ListadoModelos = ModeloNegocio.BuscarPorMarca(new Marca() { Id = Convert.ToInt32(QueryString.FirstOrDefault(item => item.Key.ToLower() == "marcaid").Value) });
            }
            else
            {
                ListadoModelos = ModeloNegocio.BuscarTodos();
            }

            if (ListadoModelos.Count() <= 0)
            {
                return Request.CreateResponse(HttpStatusCode.NoContent);
            }
            return Request.CreateResponse(HttpStatusCode.OK, ListadoModelos);
        }


        [Authorize]
        [HttpGet]
        public HttpResponseMessage Get(int id)
        {
            Modelo Modelo = ModeloNegocio.BuscarPorId(id);

            if (Modelo == null)
            {
                return Request.CreateResponse(HttpStatusCode.NoContent);
            }
            return Request.CreateResponse(HttpStatusCode.OK, Modelo);
        }

        



    }
}
