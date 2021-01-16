

using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text.Json.Serialization;

namespace BlazingPizza
{
    /// <summary>
    /// Represents a customized pizza as part of an order
    /// </summary>
    public class Pizza
    {
        public const int DefaultSize = 12;
        public const int MinimumSize = 9;
        public const int MaximumSize = 17;

        //[Key]
        public int Id { get; set; }

      //  [Column("OrderId")]
     //   [ForeignKey("OrderId")]
      //  [JsonPropertyName("OrderId")]
        public int OrderId { get; set; }

        public PizzaSpecial Special { get; set; }
        
       // public Order Order { get; set; }

        public int SpecialId { get; set; }

        public int Size { get; set; }

        public List<PizzaTopping> Toppings { get; set; }

        public decimal GetBasePrice()
        {
            return ((decimal)Size / (decimal)DefaultSize) * Special.BasePrice;
        }

        public decimal GetTotalPrice()
        {
            return GetBasePrice() + Toppings.Sum(t => t.Topping.Price);
        }

        public string GetFormattedTotalPrice()
        {
            return GetTotalPrice().ToString("0.00");
        }
    }
}
