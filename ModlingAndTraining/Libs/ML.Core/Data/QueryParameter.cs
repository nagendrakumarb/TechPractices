// Decompiled with JetBrains decompiler
// Type: MachineLearning.Data.QueryParameter
// Assembly: ML.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 8665DF82-FF26-467F-B5DB-E30D7FB365C9
// Assembly location: F:\OneDrive\Other\Practice\DataModeling\App\bin\ML.Core.dll

namespace MachineLearning.Data
{
  public class QueryParameter
  {
    public QueryParameter(string name, object value, QueryParameterDirection direction)
    {
      this.Name = name;
      this.Value = value;
      this.Direction = direction;
    }

    public string Name { get; set; }

    public object Value { get; set; }

    public QueryParameterDirection Direction { get; set; }
  }
}
