//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Devrekani_Sehitler_Kutuphanesi.Models.Entity
{
    using System;
    using System.Collections.Generic;
    
    public partial class TBL_HAREKET
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TBL_HAREKET()
        {
            this.TBL_CEZALAR = new HashSet<TBL_CEZALAR>();
        }
    
        public byte ID { get; set; }
        public Nullable<int> KITAP { get; set; }
        public Nullable<int> UYE { get; set; }
        public Nullable<byte> PERSONEL { get; set; }
        public Nullable<System.DateTime> ALISTARIHI { get; set; }
        public Nullable<System.DateTime> IADETARIHI { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_CEZALAR> TBL_CEZALAR { get; set; }
        public virtual TBL_KITAP TBL_KITAP { get; set; }
        public virtual TBL_KITAP TBL_KITAP1 { get; set; }
        public virtual TBL_KITAP TBL_KITAP2 { get; set; }
        public virtual TBL_PERSONEL TBL_PERSONEL { get; set; }
        public virtual TBL_UYELER TBL_UYELER { get; set; }
        public virtual TBL_UYELER TBL_UYELER1 { get; set; }
    }
}
