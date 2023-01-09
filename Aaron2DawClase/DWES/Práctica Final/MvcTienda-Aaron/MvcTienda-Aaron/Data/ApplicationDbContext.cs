using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using MvcTienda_Aaron.Models;

namespace MvcTienda_Aaron.Data
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }
        public DbSet<MvcTienda_Aaron.Models.Cliente> Cliente { get; set; }
    }
}