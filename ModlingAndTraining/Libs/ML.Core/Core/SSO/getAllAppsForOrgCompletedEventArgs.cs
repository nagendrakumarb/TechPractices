// Decompiled with JetBrains decompiler
// Type: ML.Core.SSO.getAllAppsForOrgCompletedEventArgs
// Assembly: ML.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 8665DF82-FF26-467F-B5DB-E30D7FB365C9
// Assembly location: F:\OneDrive\Other\Practice\DataModeling\App\bin\ML.Core.dll

using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;

namespace ML.Core.SSO
{
  [DebuggerStepThrough]
  [DesignerCategory("code")]
  [GeneratedCode("wsdl", "2.0.50727.3038")]
  public class getAllAppsForOrgCompletedEventArgs : AsyncCompletedEventArgs
  {
    private object[] results;

    internal getAllAppsForOrgCompletedEventArgs(
      object[] results,
      System.Exception exception,
      bool cancelled,
      object userState)
      : base(exception, cancelled, userState)
    {
      this.results = results;
    }

    public applicationListResult Result
    {
      get
      {
        this.RaiseExceptionIfNecessary();
        return (applicationListResult) this.results[0];
      }
    }
  }
}
