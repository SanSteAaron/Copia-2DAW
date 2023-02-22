using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using MvcTienda_Aaron.Data;
using MvcTienda_Aaron.Models;

namespace MvcTienda_Aaron.Controllers
{
    public class EscaparateController : Controller
    {
        private readonly MvcTienda_AaronContexto _context;
        public EscaparateController(MvcTienda_AaronContexto context)
        {
            _context = context;
        }

        //GET : Escaparate
        public async Task<IActionResult> Index(int? id)
        {
            var producto = _context.Productos.AsQueryable();
            var productotallas = _context.ProductosTalla.AsQueryable();
            ViewData["Listacategorias"] = _context.Categorias.AsQueryable();
            ViewData["Listatallas"] = _context.Talla.AsQueryable();
            ViewData["Listaproductos"] = producto.Where(p => p.Escaparate == true);
            if(id != null)
            {
                ViewData["Listaproductos"] = producto.Where(p => p.CategoriaId == id);
            }
            return View(await productotallas.ToListAsync());
        }

        //GET AñadirCarrito
        public async Task<IActionResult> AñadirCarrito(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var productotalla = await _context.ProductosTalla
                            .FirstOrDefaultAsync(m => m.Id == id);

            var producto = _context.Productos.AsQueryable();
            ViewData["ProductoAñadir"] = producto.Where(producto => producto.Id == productotalla.ProductoId);
            var talla = _context.Talla.AsQueryable();
            ViewData["TallaProducto"] = talla.Where(talla => talla.Id == productotalla.TallaId);

            if (productotalla == null)
            {
                return NotFound();
            }

            return View(productotalla);
        }

        //POST: Escaparate/AgregarCarrito/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task <ActionResult> AñadirCarrito(int id)
        {
            if(User.Identity.Name != null)
            {
                //var productotalla = await _context.ProductosTalla.FirstOrDefaultAsync(m => m.Id == id);
                ProductoTalla productotalla = await _context.ProductosTalla.Where(c => c.Id == id).FirstOrDefaultAsync();
                //var producto = await _context.Productos.FirstOrDefaultAsync(m => m.Id == productotalla.ProductoId);
                Producto producto = await _context.Productos.Where(c => c.Id == productotalla.ProductoId).FirstOrDefaultAsync();
                if (productotalla == null)
                {
                    return NotFound();
                }

                if (producto == null)
                {
                    return NotFound();
                }

                Pedido pedido = new Pedido();
                Detalle detalle = new Detalle();

                Cliente cliente = await _context.Clientes.Where(c => c.Email == User.Identity.Name).FirstOrDefaultAsync();
                if (HttpContext.Session.GetString("Núm. Pedido") == null)
                {
                    pedido.Fecha = DateTime.Now;
                    pedido.Confirmado = null;
                    pedido.Preparado = null;
                    pedido.Enviado = null;
                    pedido.Cobrado = null;
                    pedido.Devuelto = null;
                    pedido.Anulado = null;
                    pedido.ClienteId = cliente.Id;
                    pedido.EstadoId = 1;
                    if (ModelState.IsValid)
                    {
                        _context.Add(pedido);
                        await _context.SaveChangesAsync();
                    }

                    HttpContext.Session.SetString("Núm. Pedido", pedido.Id.ToString());
                }
                string strNumeroPedido = HttpContext.Session.GetString("Núm. Pedido");
                detalle.PedidoId = Convert.ToInt32(strNumeroPedido);

                detalle.ProductoTallaId = productotalla.Id;
                detalle.ProductoId = producto.Id;
                detalle.Cantidad = 1;
                detalle.Precio = producto.Precio;
                detalle.Descuento = 0;
                if (ModelState.IsValid)
                {
                    _context.Add(detalle);
                    await _context.SaveChangesAsync();
                }

                return RedirectToAction(nameof(Index), "Carrito");
            }
            else
            {
                return LocalRedirect("~/Identity/Account/Login");
            }
           
        }
    }
}
