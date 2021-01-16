using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Grpc.Core;
using BlazingPizza.OrderStatusUpdates;

namespace BlazingPizza.Server.Services
{
    public class PizzaOrderStatusService : OrderStatusUpdates.PizzaOrderStatus.PizzaOrderStatusBase
    {
        private readonly OrderStatusUpdater _orderStatusUpdater;

        public PizzaOrderStatusService(OrderStatusUpdater orderStatusUpdater)
        {
            _orderStatusUpdater = orderStatusUpdater;
        }

        public override async Task<Ack> SendStatus(StatusUpdate update, ServerCallContext context)
        {
            _orderStatusUpdater.UpdateOrderStatus(new OrderStatus()
            {
                RequestId = update.RequestId,
                UserId = update.UserId,
                Status = update.StatusText,
                CurrentLocation = new LatLong(update.Lat, update.Long)
            });
            Ack st = new Ack
            {
                Message = string.Format($"Received status {update.StatusText} for order {update.RequestId}.")
            };
            return st;
        }
    }
}
