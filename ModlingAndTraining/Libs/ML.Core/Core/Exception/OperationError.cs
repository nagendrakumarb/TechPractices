// Decompiled with JetBrains decompiler
// Type: ML.Core.Exception.OperationError
// Assembly: ML.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 8665DF82-FF26-467F-B5DB-E30D7FB365C9
// Assembly location: F:\OneDrive\Other\Practice\DataModeling\App\bin\ML.Core.dll

using System;
using System.Data.SqlClient;

namespace ML.Core.Exception
{
  [Serializable]
  public class OperationError
  {
    public string Code { get; set; }

    public string Message { get; set; }

    public OperationError(string errorCode, string errorMessage)
    {
      this.Code = errorCode;
      this.Message = errorMessage;
    }

    public static void SetError(OperationError error, System.Exception ex)
    {
      if (ex == null)
        return;
      error.Code = ex.Source;
      error.Message = ex.Message;
    }

    public static void SetError(OperationError error, SqlException ex)
    {
      if (ex == null)
        return;
      error.Code = Convert.ToString(ex.ErrorCode);
      error.Message = ex.Message;
    }
  }
}
