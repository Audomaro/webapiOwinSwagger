using System.Web.Http;
using WebActivatorEx;
using webapiOwinSwagger;
using Swashbuckle.Application;

namespace webapiOwinSwagger.App_Start
{
    public class SwaggerConfig
    {
        public static void Register(HttpConfiguration config)
        {
            config
                .EnableSwagger(c =>
                {
                    c.SingleApiVersion("v1", "webapiOwinSwagger");
                })
                .EnableSwaggerUi(c =>
                {
                });
        }
    }
}
