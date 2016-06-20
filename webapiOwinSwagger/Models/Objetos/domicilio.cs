using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Runtime.Serialization;

namespace webapiOwinSwagger.Models.Objetos
{
    /// <summary>
    /// Datos generales del usuario.
    /// </summary>
    [Table("Usuarios")]
    public class domicilio
    {
        /// <summary>
        /// Id del usuario.
        /// </summary>
        [Key, ForeignKey("usuario")]
        [Required]
        [Column("idUsuario")]
        public int id { get; set; }

        /// <summary>
        /// Nombre de la calle.
        /// </summary>
        [Required]
        [Column("calle")]
        public string calle { get; set; }

        /// <summary>
        /// Numero de la casa.
        /// </summary>
        [Required]
        [Column("numero")]
        public string numero { get; set; }

        /// <summary>
        /// Nombre de la colonia.
        /// </summary>
        [Required]
        [Column("colonia")]
        public string colonia { get; set; }

        /// <summary>
        /// Telefono personal.
        /// </summary>
        [Required]
        [Column("telefono")]
        public string telefono { get; set; }

        /// <summary>
        /// Relacion foranea con el usuario.
        /// </summary>
        public virtual usuario usuario { get; set; }
    }
}