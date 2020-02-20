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
    using System.ComponentModel.DataAnnotations;

    public partial class TBL_KITAP
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TBL_KITAP()
        {
            this.TBL_HAREKET = new HashSet<TBL_HAREKET>();
            this.TBL_HAREKET1 = new HashSet<TBL_HAREKET>();
            this.TBL_HAREKET2 = new HashSet<TBL_HAREKET>();
        }
    
        public int ID { get; set; }
        public string AD { get; set; }
        public Nullable<byte> KATEGORI { get; set; }
        public Nullable<int> YAZAR { get; set; }
       
        [StringLength(4, ErrorMessage = "Sadece Y�l Giriniz ( �rnek: 2020 ).")]
        public string BASKIYILI { get; set; }
        public string YAYINEVI { get; set; }
        public string SAYFA { get; set; }
        public Nullable<bool> DURUM { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_HAREKET> TBL_HAREKET { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_HAREKET> TBL_HAREKET1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_HAREKET> TBL_HAREKET2 { get; set; }
        public virtual TBL_KATEGORI TBL_KATEGORI { get; set; }
        public virtual TBL_YAZAR TBL_YAZAR { get; set; }
    }
}
