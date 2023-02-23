using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using MvcTienda_Aaron;
using MvcTienda_Aaron.Data;
using MvcTienda_Aaron.Models;

namespace MvcTienda.Controllers
{
    [Authorize(Roles = "Usuario")]
    public class MisPedidosController : Controller
    {
        private readonly MvcTienda_AaronContexto _context;

        public MisPedidosController(MvcTienda_AaronContexto context)
        {
            _context = context;
        }


        // GET: MisPedidos
        public async Task<IActionResult> Index(int? pagenumber)
        {
            //var mvcTiendaContexto = _context.Pedidos.Include(p => p.Cliente).Include(p => p.Estado);
            //return View(await mvcTiendaContexto.ToListAsync());

            // Se selecciona el empleado correspondiente al usuario actual
            string emailCliente = User.Identity.Name;

            var cliente = await _context.Clientes.Where(e => e.Email == emailCliente)
            .FirstOrDefaultAsync();


            if (cliente == null)
            {
                return RedirectToAction("Index", "Escaparate");
            }
            // Se seleccionan los avisos del Empleado correspondiente al usuario actual

            var misPedidos = from s in _context.Pedidos
            .Where(a => a.ClienteId == cliente.Id)
            .OrderByDescending(a => a.Fecha)
            .Include(a => a.Cliente)
            .Include(a => a.Detalles)
            .Include(a => a.Estado)
            .Where(p => p.EstadoId != 1)select s;
            int pageSize = 5;
            return View(await PaginatedList<Pedido>.CreateAsync(misPedidos.AsNoTracking(),
            pagenumber ?? 1, pageSize));
        }

        // GET: MisPedidos/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var pedido = await _context.Pedidos
                .Include(p => p.Cliente)
                .Include(p => p.Estado)
                .Include(p => p.Detalles)
                .ThenInclude(p => p.Producto)
                .Include(p => p.Detalles)
                .ThenInclude(p => p.ProductoTalla)
                .ThenInclude(p => p.Talla)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (pedido == null)
            {
                return NotFound();
            }

            return View(pedido);
        }
    }
}
