using Microsoft.Owin;
using Owin;
using System.Web.Http;
using webapiOwinSwagger.App_Start;

[assembly: OwinStartup(typeof(webapiOwinSwagger.Startup))]

namespace webapiOwinSwagger
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {

            HttpConfiguration config = new HttpConfiguration();

            WebApiConfig.Register(config);

            SwaggerConfig.Register(config);

            app.UseWebApi(config);
        }
    }
}
