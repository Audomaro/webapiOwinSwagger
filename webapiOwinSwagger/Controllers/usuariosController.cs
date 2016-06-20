using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using System.Web.Http.Description;
using webapiOwinSwagger.Models.Contextos;
using webapiOwinSwagger.Models.Objetos;

namespace webapiOwinSwagger.Controllers
{
    /// <summary>
    /// Controlador demo.
    /// </summary>
    [RoutePrefix("api/demo")]
    public class usuariosController : ApiController
    {
        /// <summary>
        /// Hola mundo.
        /// <returns>Lista de usuarios.</returns>
        /// </summary>
        [HttpGet]
        [ResponseType(typeof(List<usuario>))]
        [Route("listaUsuarios")]
        public IHttpActionResult listaUsuarios()
        {
            List<usuario> ul = new List<usuario>();
            using(bibliotecaDB db = new bibliotecaDB())
            {

                // Ejemplo donde se modifica los datos generales del usuario con el id = 1
                //domicilio x = new domicilio();
                //x.calle = "x";
                //x.colonia = "x";
                //x.telefono = "x";
                //x.numero = "x";
                //x.id = 1;


                //db.domicilios.Attach(x);
                //db.Entry(x).State = System.Data.Entity.EntityState.Modified;
                //db.SaveChanges();

                ul = db.usuarios.Include("domicilio").Include("prestamos").Select(e => e).ToList();
            }

            return Ok(ul);
        }
    }
}
