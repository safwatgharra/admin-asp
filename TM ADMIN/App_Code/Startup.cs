using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TM_ADMIN.Startup))]
namespace TM_ADMIN
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
