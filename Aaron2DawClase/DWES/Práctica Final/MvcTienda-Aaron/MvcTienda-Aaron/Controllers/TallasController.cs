using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using MvcTienda_Aaron.Data;
using MvcTienda_Aaron.Models;

namespace MvcTienda_Aaron.Controllers
{
    public class TallasController : Controller
    {
        private readonly MvcTienda_AaronContexto _context;

        public TallasController(MvcTienda_AaronContexto context)
        {
            _context = context;
        }

        // GET: Tallas
        public async Task<IActionResult> Index()
        {
              return View(await _context.Talla.ToListAsync());
        }

        // GET: Tallas/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.Talla == null)
            {
                return NotFound();
            }

            var talla = await _context.Talla
                .FirstOrDefaultAsync(m => m.Id == id);
            if (talla == null)
            {
                return NotFound();
            }

            return View(talla);
        }

        // GET: Tallas/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Tallas/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Descripcion")] Talla talla)
        {
            if (ModelState.IsValid)
            {
                _context.Add(talla);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(talla);
        }

        // GET: Tallas/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.Talla == null)
            {
                return NotFound();
            }

            var talla = await _context.Talla.FindAsync(id);
            if (talla == null)
            {
                return NotFound();
            }
            return View(talla);
        }

        // POST: Tallas/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Descripcion")] Talla talla)
        {
            if (id != talla.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(talla);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!TallaExists(talla.Id))
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
            return View(talla);
        }

        // GET: Tallas/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.Talla == null)
            {
                return NotFound();
            }

            var talla = await _context.Talla
                .FirstOrDefaultAsync(m => m.Id == id);
            if (talla == null)
            {
                return NotFound();
            }

            return View(talla);
        }

        // POST: Tallas/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.Talla == null)
            {
                return Problem("Entity set 'MvcTienda_AaronContexto.Talla'  is null.");
            }
            var talla = await _context.Talla.FindAsync(id);
            if (talla != null)
            {
                _context.Talla.Remove(talla);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool TallaExists(int id)
        {
          return _context.Talla.Any(e => e.Id == id);
        }
    }
}
