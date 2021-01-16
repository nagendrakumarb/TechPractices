// Decompiled with JetBrains decompiler
// Type: ML.Core.Utilities.AppKeys
// Assembly: ML.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 8665DF82-FF26-467F-B5DB-E30D7FB365C9
// Assembly location: F:\OneDrive\Other\Practice\DataModeling\App\bin\ML.Core.dll

using ML.Core.Configuration.Keys;
using System;
using System.Configuration;

namespace ML.Core.Utilities
{
  public class AppKeys
  {
    public static string GetKey(string key)
    {
      try
      {
        string empty = string.Empty;
        return (ConfigurationManager.GetSection("MachineLearning/MachineLearning.Keys") as ApplicationKeyConfiguration).ApplicationKeys.AppKeys[key].Value;
      }
      catch (System.Exception ex)
      {
        throw ex;
      }
    }
  }
}
