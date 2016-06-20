using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Runtime.Serialization;

namespace webapiOwinSwagger.Models.Objetos
{
    /// <summary>
    /// Datos principales del Usuario.
    /// </summary>
    [Table("Usuarios")]
    public class usuario
    {
        /// <summary>
        /// Id Usuario.
        /// </summary>
        [Required]
        [Key, ForeignKey("domicilio")]
        [Column("idUsuario")]
        public int id { get; set; }

        /// <summary>
        /// Nombre completo.
        /// </summary>
        [Required]
        [Column("nombreCompleto")]
        public string nombre { get; set; }

        /// <summary>
        /// Fecha de nacimiento.
        /// </summary>
        [Required]
        [Column("fechaNacimiento")]
        public DateTime? fechaNacimiento { get; set; }

        /// <summary>
        /// Relacion foranea con el domicilio.
        /// </summary>
        public virtual domicilio domicilio { get; set; }

        /// <summary>
        /// Relacion foranea con los prestamos.
        /// </summary>
        public virtual ICollection<prestamo> prestamos { get; set; }
    }
}