using System.ComponentModel.DataAnnotations;
using System.Xml.Linq;

namespace MvcTienda_Aaron.Models
{
    public class Talla
    {
        public int Id { get; set; }
        [Display(Name = "Talla")]
        [Required(ErrorMessage = "La Talla es un campo requerido.")]
        public string? Descripcion { get; set; }
        public ICollection<ProductoTalla>? ProductoTallas { get; set; }   
    }
}
