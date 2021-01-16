// Decompiled with JetBrains decompiler
// Type: ML.Core.Exception.BaseExcepion
// Assembly: ML.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 8665DF82-FF26-467F-B5DB-E30D7FB365C9
// Assembly location: F:\OneDrive\Other\Practice\DataModeling\App\bin\ML.Core.dll

using System;
using System.Runtime.Serialization;

namespace ML.Core.Exception
{
  public abstract class BaseExcepion : ApplicationException
  {
    private string errorCode;
    private ErrorLevel errorLevel;

    protected BaseExcepion()
    {
    }

    protected BaseExcepion(string errorCode)
      : base(errorCode)
    {
      this.errorCode = errorCode;
      this.LoggingException((string) null);
    }

    protected BaseExcepion(string errorCode, System.Exception inner)
      : base("", inner)
    {
      this.errorCode = errorCode;
      this.LoggingException((string) null);
    }

    protected BaseExcepion(string errorCode, string message)
      : base(message)
    {
      this.errorCode = errorCode;
      this.LoggingException(message);
    }

    protected BaseExcepion(string errorCode, string message, System.Exception inner)
      : base(message, inner)
    {
      this.errorCode = errorCode;
      this.LoggingException(message);
    }

    protected BaseExcepion(string errorCode, string message, ErrorLevel errorLevel)
      : base(message)
    {
      this.errorCode = errorCode;
      this.errorLevel = errorLevel;
      this.LoggingException(message);
    }

    protected BaseExcepion(
      string errorCode,
      string message,
      System.Exception inner,
      ErrorLevel errorLevel)
      : base(message, inner)
    {
      this.errorCode = errorCode;
      this.errorLevel = errorLevel;
      this.LoggingException(message);
    }

    protected BaseExcepion(SerializationInfo info, StreamingContext context)
      : base(info, context)
    {
    }

    public string ErrorCode
    {
      get
      {
        return this.errorCode;
      }
    }

    public ErrorLevel ErrorLevel
    {
      get
      {
        return this.errorLevel;
      }
    }

    private void LoggingException(string message)
    {
    }
  }
}
