// Decompiled with JetBrains decompiler
// Type: ML.Core.Exception.OperationResult
// Assembly: ML.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 8665DF82-FF26-467F-B5DB-E30D7FB365C9
// Assembly location: F:\OneDrive\Other\Practice\DataModeling\App\bin\ML.Core.dll

namespace ML.Core.Exception
{
  public class OperationResult
  {
    public string Code { get; set; }

    public OperationError[] error { get; set; }

    public string message { get; set; }

    public bool Success { get; set; }
  }
}
