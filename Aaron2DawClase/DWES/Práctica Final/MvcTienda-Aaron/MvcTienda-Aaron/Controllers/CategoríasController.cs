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
    public class CategoríasController : Controller
    {
        private readonly MvcTienda_AaronContexto _context;

        public CategoríasController(MvcTienda_AaronContexto context)
        {
            _context = context;
        }

        // GET: Categorías
        public async Task<IActionResult> Index()
        {
              return View(await _context.Categorias.ToListAsync());
        }

        // GET: Categorías/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.Categorias == null)
            {
                return NotFound();
            }

            var categoría = await _context.Categorias
                .FirstOrDefaultAsync(m => m.Id == id);
            if (categoría == null)
            {
                return NotFound();
            }

            return View(categoría);
        }

        // GET: Categorías/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Categorías/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Descripcion")] Categoría categoría)
        {
            if (ModelState.IsValid)
            {
                _context.Add(categoría);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(categoría);
        }

        // GET: Categorías/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.Categorias == null)
            {
                return NotFound();
            }

            var categoría = await _context.Categorias.FindAsync(id);
            if (categoría == null)
            {
                return NotFound();
            }
            return View(categoría);
        }

        // POST: Categorías/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Descripcion")] Categoría categoría)
        {
            if (id != categoría.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(categoría);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!CategoríaExists(categoría.Id))
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
            return View(categoría);
        }

        // GET: Categorías/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.Categorias == null)
            {
                return NotFound();
            }

            var categoría = await _context.Categorias
                .FirstOrDefaultAsync(m => m.Id == id);
            if (categoría == null)
            {
                return NotFound();
            }

            return View(categoría);
        }

        // POST: Categorías/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.Categorias == null)
            {
                return Problem("Entity set 'MvcTienda_AaronContexto.Categorias'  is null.");
            }
            var categoría = await _context.Categorias.FindAsync(id);
            if (categoría != null)
            {
                _context.Categorias.Remove(categoría);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool CategoríaExists(int id)
        {
          return _context.Categorias.Any(e => e.Id == id);
        }
    }
}
