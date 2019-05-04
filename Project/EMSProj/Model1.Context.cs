﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EMSProj
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class DB51Entities1 : DbContext
    {
        public DB51Entities1()
            : base("name=DB51Entities1")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<AppUser> AppUsers { get; set; }
        public virtual DbSet<Company> Companies { get; set; }
        public virtual DbSet<Department> Departments { get; set; }
        public virtual DbSet<Employee> Employees { get; set; }
        public virtual DbSet<Installment> Installments { get; set; }
        public virtual DbSet<Loan> Loans { get; set; }
        public virtual DbSet<Lookup> Lookups { get; set; }
        public virtual DbSet<Payment> Payments { get; set; }
        public virtual DbSet<Rank> Ranks { get; set; }
        public virtual DbSet<Role> Roles { get; set; }
        public virtual DbSet<DepartmentView> DepartmentViews { get; set; }
        public virtual DbSet<ELReport> ELReports { get; set; }
        public virtual DbSet<EmployeeReport> EmployeeReports { get; set; }
        public virtual DbSet<InstalmentDetail> InstalmentDetails { get; set; }
        public virtual DbSet<rankInfo> rankInfoes { get; set; }
    
        public virtual ObjectResult<EmployeeLoanReport_Result> EmployeeLoanReport()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<EmployeeLoanReport_Result>("EmployeeLoanReport");
        }
    }
}