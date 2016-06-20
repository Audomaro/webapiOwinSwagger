using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;

namespace webapiOwinSwagger.App_Start
{
    /// <summary>
    /// Configuracion del WebApi.
    /// </summary>
    public static class WebApiConfig
    {
        /// <summary>
        /// Implementacion de WebApi a una configuracion.
        /// </summary>
        /// <param name="config">Configuracion</param>
        public static void Register(HttpConfiguration config)
        {
            // TODO: Add any additional configuration code.

            // Web API routes
            config.MapHttpAttributeRoutes();
            config.Routes.MapHttpRoute(
                name: "DefaultApi",
                routeTemplate: "api/{controller}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );
        }
    }
}