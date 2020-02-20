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

    public partial class TBL_UYELER
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TBL_UYELER()
        {
            this.TBL_CEZALAR = new HashSet<TBL_CEZALAR>();
            this.TBL_HAREKET = new HashSet<TBL_HAREKET>();
            this.TBL_HAREKET1 = new HashSet<TBL_HAREKET>();
        }
    
        public int ID { get; set; }
        [Required(ErrorMessage ="Ad k�sm� bo� b�rak�lamaz !")]
        [StringLength(20,ErrorMessage ="En fazla 20 karekter girebilirsiniz !")]
        public string AD { get; set; }
        public string SOYAD { get; set; }
        public string MAIL { get; set; }
        public string KULLANICIADI { get; set; }
        [Required(ErrorMessage = "�ifre k�sm� bo� b�rak�lamaz !")]
        [StringLength(20, ErrorMessage = "En fazla 20 karekter girebilirsiniz !")]
        public string SIFRE { get; set; }
        public string FOTOGRAF { get; set; }
        public string TELEFON { get; set; }
        public string OKUL { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_CEZALAR> TBL_CEZALAR { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_HAREKET> TBL_HAREKET { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_HAREKET> TBL_HAREKET1 { get; set; }
    }
}
