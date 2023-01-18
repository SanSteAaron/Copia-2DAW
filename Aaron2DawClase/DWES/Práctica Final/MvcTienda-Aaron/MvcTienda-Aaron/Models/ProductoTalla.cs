namespace MvcTienda_Aaron.Models
{
    public class ProductoTalla
    {
        public int Id { get; set; }
        public int? ProductoId { get; set; }
        public Producto? Producto { get; set; }
        public int? TallaId { get; set; }
        public Talla? Talla { get; set; }
        public int? Stock { get; set; }    
    }
}
