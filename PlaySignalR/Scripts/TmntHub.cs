using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.SignalR;

namespace PlaySignalR.Scripts
{
    // Teenage Mutant Ninja Turtles Hub
    public class TmntHub : Hub
    {
        public void TellAprilONeil(string name, string message)
        {
            Clients.All.cowabungaToTurtles(name, message);
        }
    }
}