using System.Data.Entity.ModelConfiguration;
using webapiOwinSwagger.Models.Objetos;

namespace webapiOwinSwagger.Models.Mapeos
{
    /// <summary>
    /// Mapeo para relacion los datos de la tabla con la entidad domicilio.
    /// </summary>
    public class domicilioMap : EntityTypeConfiguration<domicilio>
    {
        /// <summary>
        /// Configuracion del mapeo.
        /// </summary>
        public domicilioMap() {
            HasKey(e => e.id);
            ToTable("Usuarios");
            Property(e => e.id).HasColumnName("idUsuario");
            Property(e => e.calle).HasColumnName("calle");
            Property(e => e.numero).HasColumnName("numero");
            Property(e => e.telefono).HasColumnName("telefono");
            Property(e => e.colonia).HasColumnName("colonia");
        }
    }
}