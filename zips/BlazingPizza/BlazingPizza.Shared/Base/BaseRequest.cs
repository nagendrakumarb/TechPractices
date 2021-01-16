using System;
using System.Collections.Generic;
using System.Text;

namespace BlazingPizza.Base
{
    public class BaseRequest
    {
        public int RequestId { get; set; }

        public string UserId { get; set; }

        public DateTime CreatedTime { get; set; }
        public string Status { get; set; }

    }
}
