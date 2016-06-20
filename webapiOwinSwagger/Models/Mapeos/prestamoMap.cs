using System.Data.Entity.ModelConfiguration;
using webapiOwinSwagger.Models.Objetos;

namespace webapiOwinSwagger.Models.Mapeos
{
    /// <summary>
    /// Mapeo para relacion los datos de la tabla con la entidad prestamo.
    /// </summary>
    public class prestamoMap : EntityTypeConfiguration<prestamo>
    {
        /// <summary>
        /// Configuracion del mapeo.
        /// </summary>
        public prestamoMap() {
            HasKey(e => e.id);
            ToTable("prestamos");
            Property(e => e.id).HasColumnName("idPrestamo");
            Property(e => e.idUsuario).HasColumnName("idUsuario");
            Property(e => e.fecha).HasColumnName("fecha");
            HasRequired(e => e.usuario)
                .WithMany(p => p.prestamos)
                .HasForeignKey(e => e.idUsuario);
        }
    }
}