//------------------------------------------------------------------------------
// <auto-generated>
//     Codice generato da un modello.
//
//     Le modifiche manuali a questo file potrebbero causare un comportamento imprevisto dell'applicazione.
//     Se il codice viene rigenerato, le modifiche manuali al file verranno sovrascritte.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Grid
{
    using System;
    using System.Collections.Generic;
    
    public partial class Utente
    {
        public int id { get; set; }
        public string nome { get; set; }
        public string cognome { get; set; }
        public string email { get; set; }
        public Nullable<int> amministratore { get; set; }
        public Nullable<float> euro { get; set; }
    }
}
