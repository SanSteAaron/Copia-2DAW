using Microsoft.AspNetCore.Mvc;
using MvcTienda_Aaron.Data;
using MvcTienda_Aaron.Models;
using Microsoft.EntityFrameworkCore;

namespace MvcTienda_Aaron.Controllers
{
    public class EscaparateController : Controller
    {
        private readonly MvcTienda_AaronContexto _context;

        public EscaparateController(MvcTienda_AaronContexto context)
        {
            _context = context;
        }

        // GET: Escaparate
        public async Task<IActionResult> Index(int? id)
        {
            var productos = _context.Productos.AsQueryable();

            if (id == null)
            {
                productos = productos.Where(x => x.Escaparate == true);
            }
            else
            {
                productos = productos.Where(x => x.CategoriaId == id);

                ViewBag.DescripcionCategoría = _context.Categorias.Find(id).Descripcion.ToString();
            }

            ViewData["Listacategorias"] = _context.Categorias.OrderBy(c => c.Descripcion).ToList();

            productos = productos.Include(a => a.Categoria);

            return View(await productos.ToListAsync());
        }

        //GET AñadirCarrito
        public async Task<ActionResult> AñadirCarrito(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var producto = await _context.Productos
                            .Include(p => p.Categoria)
                            .FirstOrDefaultAsync(m => m.Id == id);

            if (producto == null)
            {
                return NotFound();
            }

            return View(producto);
        }

        //POST Escaparate/AgregarCarrito/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> AñadirCarrito(int id)
        {
            var producto = await _context.Productos
                            .FirstOrDefaultAsync(m => m.Id == id);

            if (producto == null)
            {
                return NotFound();
            }

            Pedido pedido = new Pedido();
            Detalle detalle = new Detalle();

            Cliente usuario = await _context.Clientes.Where(p => p.Email == User.Identity.Name).FirstOrDefaultAsync();

            if (HttpContext.Session.GetString("NumPedido") == null)
            {
                pedido.Fecha = DateTime.Now;
                pedido.Confirmado = null;
                pedido.Preparado = null;
                pedido.Enviado = null;
                pedido.Cobrado = null;
                pedido.Devuelto = null;
                pedido.Anulado = null;
                pedido.ClienteId = usuario.Id;
                pedido.EstadoId = 1;
                if (ModelState.IsValid)
                {
                    _context.Add(pedido);
                    await _context.SaveChangesAsync();
                }

                HttpContext.Session.SetString("NumPedido", pedido.Id.ToString());
            }

            string strNumeroPedido = HttpContext.Session.GetString("NumPedido");
            detalle.PedidoId = Convert.ToInt32(strNumeroPedido);

            detalle.ProductoId = id;
            detalle.Cantidad = 1;
            detalle.Precio = producto.Precio;
            detalle.Descuento = 0;
            if (ModelState.IsValid)
            {
                _context.Add(detalle);
                await _context.SaveChangesAsync();
            }

            return RedirectToAction(nameof(Index));

        }
    }
}
