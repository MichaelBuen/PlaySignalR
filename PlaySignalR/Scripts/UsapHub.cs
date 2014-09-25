using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.SignalR;

namespace PlaySignalR.Scripts
{
    public class UsapHub : Hub
    {
        public void Distribute(string name, string message)
        {
            Clients.All.receive(name, message);
        }
    }
}