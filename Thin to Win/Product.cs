using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Thin_to_Win.Models
{
    public class Product
    {
        public string ProductID { get; set; }
        public string Name { get; set; }
        public string ShortDescription { get; set; }
        public string LongDescription { get; set; }
        public decimal UnitPrice { get; set; }
        public string ImageFile { get; set; }
    }
}