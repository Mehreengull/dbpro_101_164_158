//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace F1
{
    using System;
    using System.Collections.Generic;
    
    public partial class Employee
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Employee()
        {
            this.Loans = new HashSet<Loan>();
        }
    
        public long empId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public Nullable<System.DateTime> DateofBirth { get; set; }
        public string State { get; set; }
        public string City { get; set; }
        public string Province { get; set; }
        public Nullable<decimal> Salary { get; set; }
        public string Gender { get; set; }
        public string Status { get; set; }
        public Nullable<int> Rank { get; set; }
        public Nullable<long> Type { get; set; }
        public string Email { get; set; }
        public Nullable<long> DepId { get; set; }
        public Nullable<System.DateTime> DateofJoining { get; set; }
        public Nullable<System.DateTime> DateContractEnd { get; set; }
        public string Cnic { get; set; }
        public string userID { get; set; }
    
        public virtual AppUser AppUser { get; set; }
        public virtual Department Department { get; set; }
        public virtual Lookup Lookup { get; set; }
        public virtual Rank Rank1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Loan> Loans { get; set; }
    }
}
