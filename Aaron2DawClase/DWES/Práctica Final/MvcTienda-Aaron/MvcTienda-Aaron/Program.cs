using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using MvcTienda_Aaron;
using MvcTienda_Aaron.Data;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
var connectionString = builder.Configuration.GetConnectionString("DefaultConnection");
builder.Services.AddDbContext<ApplicationDbContext>(options =>
    options.UseSqlServer(connectionString));
builder.Services.AddDatabaseDeveloperPageExceptionFilter();

// Registrar el contexto de la base de datos
builder.Services.AddDbContext<MvcTienda_AaronContexto>(options =>
 options.UseSqlServer(connectionString));

// Configurar el estado de la sesi�n
builder.Services.AddDistributedMemoryCache();
builder.Services.AddSession(options =>
{
    options.IdleTimeout = TimeSpan.FromMinutes(20);
    options.Cookie.HttpOnly = true;
    options.Cookie.IsEssential = true;
});

// Deshabilitar confirmación de usuario. Configurar Identity para utilizar roles
builder.Services.AddDefaultIdentity<IdentityUser>(options => options.SignIn.RequireConfirmedAccount = false)
    .AddRoles<IdentityRole>()
    .AddEntityFrameworkStores<ApplicationDbContext>();
builder.Services.AddControllersWithViews();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseMigrationsEndPoint();
}
else
{
    app.UseExceptionHandler("/Home/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthentication();
app.UseAuthorization();

// Configurar el estado de la sesi�n
app.UseSession();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Escaparate}/{action=Index}/{id?}");
app.MapRazorPages();

// Crear los roles y el administrador predeterminados
using (var scope = app.Services.CreateScope())
{
    var services = scope.ServiceProvider;

    SeedData.InitializeAsync(services).Wait();
}


app.Run();
