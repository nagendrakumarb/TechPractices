// Decompiled with JetBrains decompiler
// Type: ML.Core.SSO.getApplicationFieldsCompletedEventArgs
// Assembly: ML.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 8665DF82-FF26-467F-B5DB-E30D7FB365C9
// Assembly location: F:\OneDrive\Other\Practice\DataModeling\App\bin\ML.Core.dll

using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;

namespace ML.Core.SSO
{
  [DesignerCategory("code")]
  [GeneratedCode("wsdl", "2.0.50727.3038")]
  [DebuggerStepThrough]
  public class getApplicationFieldsCompletedEventArgs : AsyncCompletedEventArgs
  {
    private object[] results;

    internal getApplicationFieldsCompletedEventArgs(
      object[] results,
      System.Exception exception,
      bool cancelled,
      object userState)
      : base(exception, cancelled, userState)
    {
      this.results = results;
    }

    public applicationFieldListResult Result
    {
      get
      {
        this.RaiseExceptionIfNecessary();
        return (applicationFieldListResult) this.results[0];
      }
    }
  }
}
