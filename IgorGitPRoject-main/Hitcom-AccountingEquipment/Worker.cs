//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Hitcom_AccountingEquipment
{
    using System;
    using System.Collections.Generic;
    
    public partial class Worker
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Worker()
        {
            this.Inventory = new HashSet<Inventory>();
            this.OperationHystory = new HashSet<OperationHystory>();
            this.Repair = new HashSet<Repair>();
        }
    
        public int id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string MiddleName { get; set; }
        public int FK_Gender_id { get; set; }
        public string PhoneNumber { get; set; }
        public string EmailOfWorker { get; set; }
        public int FK_StatusOfWorker_id { get; set; }
        public int FK_Position_id { get; set; }
        public string Login { get; set; }
        public string Password { get; set; }
        public bool CheckFirstVisit { get; set; }
        public byte[] Photo { get; set; }
        public string FIO
        {
            get
            {
                return FirstName + " " + LastName.Substring(0, 1) + " " + MiddleName.Substring(0, 1);
            }
        }

        public virtual Gender Gender { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Inventory> Inventory { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OperationHystory> OperationHystory { get; set; }
        public virtual Position Position { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Repair> Repair { get; set; }
        public virtual StatusOfWorker StatusOfWorker { get; set; }
    }
}
