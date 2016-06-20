using System.Data.Entity.ModelConfiguration;
using webapiOwinSwagger.Models.Objetos;

namespace webapiOwinSwagger.Models.Mapeos
{
    /// <summary>
    /// Mapeo para relacion los datos de la tabla con la entidad usuario.
    /// </summary>
    public class usuarioMap : EntityTypeConfiguration<usuario>
    {
        /// <summary>
        /// Configuracion del mapeo.
        /// </summary>
        public usuarioMap() {
            HasKey(e => e.id);
            ToTable("Usuarios");
            Property(e => e.id).HasColumnName("idUsuario");
            Property(e => e.nombre).HasColumnName("nombreCompleto");
            Property(e => e.fechaNacimiento).HasColumnName("fechaNacimiento");
            HasRequired(e => e.domicilio).WithRequiredDependent();
        }
    }
}