using Microsoft.EntityFrameworkCore;
using MvcTienda_Aaron.Models;

namespace MvcTienda_Aaron.Data
{
    public class MvcTienda_AaronContexto : DbContext
    {
        public MvcTienda_AaronContexto(DbContextOptions<MvcTienda_AaronContexto> options)
              : base(options)
        {
        }
        public DbSet<Categoría>? Categorias { get; set; }
        public DbSet<Producto>? Productos { get; set; }
        public DbSet<Cliente>? Clientes { get; set; }
        public DbSet<Estado>? Estados { get; set; }
        public DbSet<Pedido>? Pedidos { get; set; }
        public DbSet<Detalle>? Detalles { get; set; }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            // Deshabilitar la eliminación en cascada en todas las relaciones
            base.OnModelCreating(modelBuilder);
            foreach (var relationship in
            modelBuilder.Model.GetEntityTypes().SelectMany(e => e.GetForeignKeys()))
            {
                relationship.DeleteBehavior = DeleteBehavior.Restrict;
            }
        }

    }
}
