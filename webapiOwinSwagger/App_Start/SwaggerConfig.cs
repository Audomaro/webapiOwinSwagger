using Swashbuckle.Application;
using System.Web.Http;

namespace webapiOwinSwagger.App_Start
{
    /// <summary>
    /// Configuracion para Swagger.
    /// </summary>
    public class SwaggerConfig
    {
        /// <summary>
        /// Implementacion de Swagger a una configuracion.
        /// </summary>
        /// <param name="config">Configuracion</param>
        public static void Register(HttpConfiguration config)
        {
            config
                .EnableSwagger(c =>
                {
                    c.SingleApiVersion("v1", "webapiOwinSwagger");
                    c.IncludeXmlComments(GetXmlCommentsPath());
                })
                .EnableSwaggerUi(c =>
                {
                });
        }

        /// <summary>
        /// Esta funcion optiene el archivo de comentarios relacionado al proyecto.
        /// </summary>
        /// <returns></returns>
        private static string GetXmlCommentsPath()
        {
            return $" {System.AppDomain.CurrentDomain.BaseDirectory }\\bin\\webapiOwinSwagger.XML";
        }
    }
}
