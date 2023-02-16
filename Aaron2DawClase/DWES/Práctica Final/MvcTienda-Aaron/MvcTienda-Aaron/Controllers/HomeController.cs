using Microsoft.AspNetCore.Mvc;
using MvcTienda_Aaron.Data;
using MvcTienda_Aaron.Models;
using System.Diagnostics;

namespace MvcTienda_Aaron.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly MvcTienda_AaronContexto _context;
        public HomeController(ILogger<HomeController> logger, MvcTienda_AaronContexto context)
        {
            _logger = logger;
            _context = context;
        }

        public IActionResult Index()
        {
            // Busca el cliente correspondiente al usuario actual. Si existe, activa la
            // vista (View) y en caso contrario, se redirige para crear el empleado.
            string? emailUsuario = User.Identity.Name;
            Cliente? empleado = _context.Clientes.Where(c => c.Email == emailUsuario)
            .FirstOrDefault();
            if (User.Identity.IsAuthenticated && User.IsInRole("Usuario") && empleado == null)
            {
                return RedirectToAction("Create", "MisDatos");
            }
            return View();
        }
        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel {RequestId= Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
