//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProjectFinal.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class PaymentLog
    {
        public int PaymentLogId { get; set; }
        public string OrderId { get; set; }
        public Nullable<decimal> Amount { get; set; }
        public Nullable<int> PaymentStatusId { get; set; }
        public Nullable<int> PaymentTypeId { get; set; }
        public string CustomerName { get; set; }
        public string CreateBy { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public string BankCode { get; set; }
        public string BankTranNo { get; set; }
        public string CardType { get; set; }
        public string OrderInfo { get; set; }
        public string TransactionNo { get; set; }
        public string ResponseCode { get; set; }
        public string TxnRef { get; set; }
    }
}
