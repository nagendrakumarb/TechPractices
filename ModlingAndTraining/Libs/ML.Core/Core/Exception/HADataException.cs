// Decompiled with JetBrains decompiler
// Type: ML.Core.Exception.HADataException
// Assembly: ML.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 8665DF82-FF26-467F-B5DB-E30D7FB365C9
// Assembly location: F:\OneDrive\Other\Practice\DataModeling\App\bin\ML.Core.dll

using System.Runtime.Serialization;

namespace ML.Core.Exception
{
  public class HADataException : BaseExcepion
  {
    public HADataException()
    {
    }

    public HADataException(string errorCode)
      : base(errorCode)
    {
    }

    public HADataException(string errorCode, string message)
      : base(errorCode, message)
    {
    }

    public HADataException(string errorCode, string message, System.Exception inner)
      : base(errorCode, message, inner)
    {
    }

    protected HADataException(SerializationInfo info, StreamingContext context)
      : base(info, context)
    {
    }

    public HADataException(string errorCode, System.Exception inner)
      : base(errorCode, inner)
    {
    }
  }
}
