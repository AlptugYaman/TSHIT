//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TISHT
{
    using System;
    using System.Collections.Generic;
    
    public partial class Yetki
    {
        public Yetki()
        {
            this.Kullanici = new HashSet<Kullanici>();
        }
    
        public int yetkiId { get; set; }
        public string yetki1 { get; set; }
        public bool silindi { get; set; }
    
        public virtual ICollection<Kullanici> Kullanici { get; set; }
    }
}
