using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Thin_to_Win.Startup))]
namespace Thin_to_Win
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
