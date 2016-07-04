using Microsoft.Owin;
using Microsoft.Owin.Cors;
using Microsoft.Owin.Security.OAuth;
using Newtonsoft.Json;
using Owin;
using System;
using System.Threading.Tasks;
using System.Web.Cors;
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

            #region Cargar CORS antes de cualquier middleware
            // Indicacion para usar la definida anterior.
            var policy = new CorsPolicy()
            {
                AllowAnyHeader = true,
                AllowAnyMethod = true,
                AllowAnyOrigin = true,
                SupportsCredentials = true
            };

            policy.Headers.Add("EXPD-Header");
            policy.Headers.Add("EXPD-Header");

            app.UseCors(new CorsOptions
            {
                PolicyProvider = new CorsPolicyProvider
                {
                    PolicyResolver = context => Task.FromResult(policy)
                }
            });
            #endregion

            ConfigureOAuth(app);

            app.UseWebApi(config);


        }

        private void ConfigureOAuth(IAppBuilder app)
        {
            OAuthAuthorizationServerOptions oAuthServerOptions = new OAuthAuthorizationServerOptions()
            {
                AllowInsecureHttp = true,
                TokenEndpointPath = new PathString("/token"),
                //AccessTokenExpireTimeSpan = TimeSpan.FromDays(1),
                AccessTokenExpireTimeSpan = TimeSpan.FromDays(1),
                Provider = new SimpleAuthorizationServerProvider()
            };
            //Token Generation
            app.UseOAuthAuthorizationServer(oAuthServerOptions);
            app.UseOAuthBearerAuthentication(new OAuthBearerAuthenticationOptions());
        }
    }
}
