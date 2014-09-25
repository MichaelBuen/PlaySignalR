using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


using Owin;
using Microsoft.AspNet.SignalR;



// If you need to use other class name http://www.asp.net/aspnet/overview/owin-and-katana/owin-startup-class-detection
// [assembly: Microsoft.Owin.OwinStartup(typeof(PlaySignalR.StartMeUp))]


namespace PlaySignalR
{

    // By convention, SignalR look for Startup class name. Renaming this would cause runtime error if you don't specify OwinStartup attribute
    public class Startup
    {
        public void Configuration(Owin.IAppBuilder app)
        {
            app.MapSignalR();

        }
    }


}