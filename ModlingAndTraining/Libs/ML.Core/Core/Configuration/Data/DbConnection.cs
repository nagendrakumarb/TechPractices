// Decompiled with JetBrains decompiler
// Type: ML.Core.Configuration.Data.DbConnection
// Assembly: ML.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 8665DF82-FF26-467F-B5DB-E30D7FB365C9
// Assembly location: F:\OneDrive\Other\Practice\DataModeling\App\bin\ML.Core.dll

using System.Configuration;

namespace ML.Core.Configuration.Data
{
  public class DbConnection : ConfigurationElement
  {
    private static ConfigurationProperty name = new ConfigurationProperty(nameof (name), typeof (string), (object) null, ConfigurationPropertyOptions.IsRequired);
    private static ConfigurationProperty provider = new ConfigurationProperty(nameof (provider), typeof (string), (object) null, ConfigurationPropertyOptions.IsRequired);
    private static ConfigurationProperty value = new ConfigurationProperty(nameof (value), typeof (string), (object) null, ConfigurationPropertyOptions.IsRequired);
    private static ConfigurationPropertyCollection configProperties = new ConfigurationPropertyCollection();

    static DbConnection()
    {
      DbConnection.configProperties.Add(DbConnection.name);
      DbConnection.configProperties.Add(DbConnection.provider);
      DbConnection.configProperties.Add(DbConnection.value);
    }

    [ConfigurationProperty("name", IsKey = true)]
    public string Name
    {
      get
      {
        return (string) this[DbConnection.name];
      }
    }

    [ConfigurationProperty("provider", IsKey = true)]
    public string Provider
    {
      get
      {
        return (string) this[DbConnection.provider];
      }
    }

    [ConfigurationProperty("value", IsRequired = true)]
    public string Value
    {
      get
      {
        return (string) this[DbConnection.value];
      }
    }
  }
}
