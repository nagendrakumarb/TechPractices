// Decompiled with JetBrains decompiler
// Type: MachineLearning.Data.BaseModel
// Assembly: ML.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 8665DF82-FF26-467F-B5DB-E30D7FB365C9
// Assembly location: F:\OneDrive\Other\Practice\DataModeling\App\bin\ML.Core.dll

using MachineLearning.Data.CommandHelper;

namespace MachineLearning.Data
{
  public class BaseModel
  {
    protected BaseDbHelper dbHelper;

    public BaseModel()
    {
      this.dbHelper = DbFactory.GetDbHelper();
    }

    public BaseModel(string connectionName)
    {
      this.dbHelper = DbFactory.GetDbHelper(connectionName);
    }
  }
}
