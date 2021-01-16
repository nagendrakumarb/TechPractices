// Decompiled with JetBrains decompiler
// Type: ML.Core.Configuration.Data.DbConnectionSection
// Assembly: ML.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 8665DF82-FF26-467F-B5DB-E30D7FB365C9
// Assembly location: F:\OneDrive\Other\Practice\DataModeling\App\bin\ML.Core.dll

using System.Configuration;

namespace ML.Core.Configuration.Data
{
  public class DbConnectionSection : ConfigurationElement
  {
    private static ConfigurationProperty dbConnections = new ConfigurationProperty("", typeof (DbConnectionCollection), (object) null, ConfigurationPropertyOptions.IsDefaultCollection | ConfigurationPropertyOptions.IsRequired);
    private static ConfigurationProperty defaultConnection = new ConfigurationProperty(nameof (defaultConnection), typeof (string), (object) null, ConfigurationPropertyOptions.IsRequired);
    private static ConfigurationPropertyCollection ConfigProperties = new ConfigurationPropertyCollection();

    static DbConnectionSection()
    {
      DbConnectionSection.ConfigProperties.Add(DbConnectionSection.defaultConnection);
      DbConnectionSection.ConfigProperties.Add(DbConnectionSection.dbConnections);
    }

    [ConfigurationProperty("dbConnections", IsRequired = true)]
    public DbConnectionCollection Connections
    {
      get
      {
        return (DbConnectionCollection) this[DbConnectionSection.dbConnections];
      }
    }

    [ConfigurationProperty("defaultConnection", IsRequired = true)]
    public string DefaultConnection
    {
      get
      {
        return (string) this[DbConnectionSection.defaultConnection];
      }
    }

    protected override ConfigurationPropertyCollection Properties
    {
      get
      {
        return DbConnectionSection.ConfigProperties;
      }
    }
  }
}
