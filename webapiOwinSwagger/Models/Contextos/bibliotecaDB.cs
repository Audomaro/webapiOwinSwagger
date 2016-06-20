using System.Data.Entity;
using webapiOwinSwagger.Models.Objetos;

namespace webapiOwinSwagger.Models.Contextos
{
    /// <summary>
    /// Contexto para la base de datos.
    /// </summary>
    public partial class bibliotecaDB : DbContext
    {
        /// <summary>
        /// Inicializador del contexto.
        /// </summary>
        public bibliotecaDB() : base ("name=bibliotecaDb") {
            Configuration.ProxyCreationEnabled = false;

            this.Configuration.LazyLoadingEnabled = false;
        }

        /// <summary>
        ///  Fluent api.
        /// </summary>
        /// <param name="modelBuilder">modelBuilder</param>
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            // Configuracion de mapeos con fluent api, la carpeta esta excluida del proyecto.
            //modelBuilder.Configurations.Add(new usuarioMap());
            //modelBuilder.Configurations.Add(new domicilioMap());
            //modelBuilder.Configurations.Add(new prestamoMap());
        }

        /// <summary>
        /// DbSet para usuarios.
        /// </summary>
        public virtual DbSet<usuario> usuarios { get; set; }

        /// <summary>
        /// DbSet para los domicilios.
        /// </summary>
        public virtual DbSet<domicilio> domicilios { get; set; }


        /// <summary>
        /// DbSet para los prestamos.
        /// </summary>
        public virtual DbSet<prestamo> prestamos { get; set; }
    }
}