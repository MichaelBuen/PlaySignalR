

namespace PlaySignalR
{
    // Teenage Mutant Ninja Turtles Hub
    public class TmntHub : Microsoft.AspNet.SignalR.Hub
    {
        public void TellAprilONeil(string name, string message)
        {
            Clients.All.cowabungaToTurtles(name, message);
        }
    }
}