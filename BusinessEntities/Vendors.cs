using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessEntities
{
    public class Vendors
    {
        public int VendorId { get; set; }
        public string VendorName { get; set; }
        public string VendorLocation { get; set; }
        public string VendorPOC { get; set; }
        public int VendorPhoneNo { get; set; }
        public bool IsWeekEndAvailable { get; set; }
        public string OpenTime { get; set; }
        public string CloseTime { get; set; }
    }
}