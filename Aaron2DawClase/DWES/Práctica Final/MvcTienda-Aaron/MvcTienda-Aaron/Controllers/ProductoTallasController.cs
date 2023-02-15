using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using MvcTienda_Aaron.Data;
using MvcTienda_Aaron.Models;

namespace MvcTienda_Aaron.Controllers
{
    [Authorize(Roles = "Administrador")]
    public class ProductoTallasController : Controller
    {
        private readonly MvcTienda_AaronContexto _context;

        public ProductoTallasController(MvcTienda_AaronContexto context)
        {
            _context = context;
        }

        // GET: ProductoTallas
        public async Task<IActionResult> Index()
        {
            var mvcTienda_AaronContexto = _context.ProductosTalla.Include(p => p.Producto).Include(p => p.Talla);
            return View(await mvcTienda_AaronContexto.ToListAsync());
        }

        // GET: ProductoTallas/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.ProductosTalla == null)
            {
                return NotFound();
            }

            var productoTalla = await _context.ProductosTalla
                .Include(p => p.Producto)
                .Include(p => p.Talla)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (productoTalla == null)
            {
                return NotFound();
            }

            return View(productoTalla);
        }

        // GET: ProductoTallas/Create
        public IActionResult Create()
        {
            ViewData["ProductoId"] = new SelectList(_context.Productos, "Id", "Descripcion");
            ViewData["TallaId"] = new SelectList(_context.Talla, "Id", "Descripcion");
            return View();
        }

        // POST: ProductoTallas/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,ProductoId,TallaId,Stock")] ProductoTalla productoTalla)
        {
            if (ModelState.IsValid)
            {
                _context.Add(productoTalla);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["ProductoId"] = new SelectList(_context.Productos, "Id", "Descripcion", productoTalla.ProductoId);
            ViewData["TallaId"] = new SelectList(_context.Talla, "Id", "Descripcion", productoTalla.TallaId);
            return View(productoTalla);
        }

        // GET: ProductoTallas/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.ProductosTalla == null)
            {
                return NotFound();
            }

            var productoTalla = await _context.ProductosTalla.FindAsync(id);
            if (productoTalla == null)
            {
                return NotFound();
            }
            ViewData["ProductoId"] = new SelectList(_context.Productos, "Id", "Descripcion", productoTalla.ProductoId);
            ViewData["TallaId"] = new SelectList(_context.Talla, "Id", "Descripcion", productoTalla.TallaId);
            return View(productoTalla);
        }

        // POST: ProductoTallas/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,ProductoId,TallaId,Stock")] ProductoTalla productoTalla)
        {
            if (id != productoTalla.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(productoTalla);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ProductoTallaExists(productoTalla.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["ProductoId"] = new SelectList(_context.Productos, "Id", "Descripcion", productoTalla.ProductoId);
            ViewData["TallaId"] = new SelectList(_context.Talla, "Id", "Descripcion", productoTalla.TallaId);
            return View(productoTalla);
        }

        // GET: ProductoTallas/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.ProductosTalla == null)
            {
                return NotFound();
            }

            var productoTalla = await _context.ProductosTalla
                .Include(p => p.Producto)
                .Include(p => p.Talla)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (productoTalla == null)
            {
                return NotFound();
            }

            return View(productoTalla);
        }

        // POST: ProductoTallas/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.ProductosTalla == null)
            {
                return Problem("Entity set 'MvcTienda_AaronContexto.ProductosTalla'  is null.");
            }
            var productoTalla = await _context.ProductosTalla.FindAsync(id);
            if (productoTalla != null)
            {
                _context.ProductosTalla.Remove(productoTalla);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool ProductoTallaExists(int id)
        {
          return _context.ProductosTalla.Any(e => e.Id == id);
        }
    }
}
