using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


using Owin;
using Microsoft.AspNet.SignalR;




namespace PlaySignalR
{
    public class Startup
    {
        public void Configuration(Owin.IAppBuilder app)
        {
            app.MapSignalR();
            
        }
    }


}