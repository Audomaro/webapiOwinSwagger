using Microsoft.Owin;
using Newtonsoft.Json;
using Owin;
using System.Web.Http;
using webapiOwinSwagger.App_Start;

[assembly: OwinStartup(typeof(webapiOwinSwagger.Startup))]

namespace webapiOwinSwagger
{
    /// <summary>
    /// App OWIN.
    /// </summary>
    public class Startup
    {
        /// <summary>
        /// Configuracion de Startup.
        /// </summary>
        /// <param name="app">Hace referencia a la aplicacion.</param>
        public void Configuration(IAppBuilder app)
        {

            // Configuracion para nuestra aplicacion.
            HttpConfiguration config = new HttpConfiguration();

            // Configuracion para el api.
            WebApiConfig.Register(config);

            // Configuracion para Swagger.
            SwaggerConfig.Register(config);

            // Configuracion para json.
            config.Formatters.JsonFormatter.SerializerSettings.ReferenceLoopHandling = ReferenceLoopHandling.Ignore;
            config.Formatters.JsonFormatter.SerializerSettings.PreserveReferencesHandling = PreserveReferencesHandling.None;
            config.Formatters.JsonFormatter.SerializerSettings.DateTimeZoneHandling = DateTimeZoneHandling.Local;

            // Esta opcion elimina XML.
            config.Formatters.Remove(config.Formatters.XmlFormatter);
            // Indicacion para usar la definida anterior.
            app.UseWebApi(config);
        }
    }
}
