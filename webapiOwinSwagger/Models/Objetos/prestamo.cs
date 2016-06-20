using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Runtime.Serialization;

namespace webapiOwinSwagger.Models.Objetos
{
    /// <summary>
    /// Datos del prestamo.
    /// </summary>
    [Table("Prestamos")]
    public class prestamo
    {
        /// <summary>
        /// Id del prestamo.
        /// </summary>
        [Key]
        [Required]
        [Column("idPrestamo")]
        public int id { get; set; }

        /// <summary>
        /// Id del usuario que lo solicito.
        /// </summary>
        [Required]
        [Column("idUsuario")]
        [ForeignKey("usuario")]
        public int idUsuario { get; set; }

        /// <summary>
        /// Fecha en que se realizo.
        /// </summary>
        [Required]
        [Column("Fecha")]
        public DateTime fecha { get; set; }

        /// <summary>
        /// Relacion foranea con el usuario..
        /// </summary>
        public virtual usuario usuario { get; set; }
    }
}