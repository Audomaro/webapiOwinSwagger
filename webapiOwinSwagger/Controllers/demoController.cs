using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;

namespace webapiOwinSwagger.Controllers
{
    /// <summary>
    /// Controlador demo.
    /// </summary>
    [RoutePrefix("api/demo")]
    public class demoController : ApiController
    {
        /// <summary>
        /// Hola mundo.
        /// </summary>
        /// <returns>saludo.</returns>
        [HttpGet]
        [ResponseType(typeof(string))]
        [Route("saludo")]
        public IHttpActionResult holaMundo()
        {
            return Ok("Hola mundo =D");
        }
    }
}
