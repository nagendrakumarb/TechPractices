using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text.Json;
using System.Text.Json.Serialization;
using BlazingPizza.Base;

namespace BlazingPizza
{
    public class Order : BaseRequest
    {
        public LatLong DeliveryLocation { get; set; }

        public LatLong CurrentLocation { get; set; }

      
        public List<Pizza> Pizzas { get; set; } = new List<Pizza>();

        public decimal GetTotalPrice() => Pizzas.Sum(p => p.GetTotalPrice());

        public string GetFormattedTotalPrice() => GetTotalPrice().ToString("0.00");
    }
}
