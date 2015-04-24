using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessEntities
{
    public class FoodItems
    {
        public int FoodItemId { get; set; }
        public string FoodItemName { get; set; }
        public double FoodItemPrice { get; set; }
        public int FoodQuantity { get; set; }
        public double TaxPercentage { get; set; }
    }
}

