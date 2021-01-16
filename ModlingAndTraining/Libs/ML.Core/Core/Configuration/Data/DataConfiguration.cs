// Decompiled with JetBrains decompiler
// Type: ML.Core.Configuration.Data.DataConfiguration
// Assembly: ML.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 8665DF82-FF26-467F-B5DB-E30D7FB365C9
// Assembly location: F:\OneDrive\Other\Practice\DataModeling\App\bin\ML.Core.dll

using System.Configuration;

namespace ML.Core.Configuration.Data
{
  public class DataConfiguration : ConfigurationSection
  {
    private static ConfigurationProperty dbConnections = new ConfigurationProperty(nameof (dbConnections), typeof (DbConnectionSection), (object) null, ConfigurationPropertyOptions.IsRequired);
    private static ConfigurationPropertyCollection dataConfigProperties = new ConfigurationPropertyCollection();

    static DataConfiguration()
    {
      DataConfiguration.dataConfigProperties.Add(DataConfiguration.dbConnections);
    }

    [ConfigurationProperty("dbConnections", IsRequired = true)]
    public DbConnectionSection DbConnections
    {
      get
      {
        return (DbConnectionSection) this[DataConfiguration.dbConnections];
      }
    }

    protected override ConfigurationPropertyCollection Properties
    {
      get
      {
        return DataConfiguration.dataConfigProperties;
      }
    }
  }
}
