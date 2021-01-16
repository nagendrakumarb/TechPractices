// Decompiled with JetBrains decompiler
// Type: ML.Core.Configuration.Keys.ApplicationKey
// Assembly: ML.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 8665DF82-FF26-467F-B5DB-E30D7FB365C9
// Assembly location: F:\OneDrive\Other\Practice\DataModeling\App\bin\ML.Core.dll

using System.Configuration;

namespace ML.Core.Configuration.Keys
{
  public class ApplicationKey : ConfigurationElement
  {
    private static ConfigurationProperty name = new ConfigurationProperty(nameof (name), typeof (string), (object) null, ConfigurationPropertyOptions.IsRequired);
    private static ConfigurationProperty value = new ConfigurationProperty(nameof (value), typeof (string), (object) null, ConfigurationPropertyOptions.IsRequired);
    private static ConfigurationPropertyCollection configProperties = new ConfigurationPropertyCollection();

    static ApplicationKey()
    {
      ApplicationKey.configProperties.Add(ApplicationKey.name);
      ApplicationKey.configProperties.Add(ApplicationKey.value);
    }

    [ConfigurationProperty("name", IsKey = true)]
    public string Name
    {
      get
      {
        return (string) this[ApplicationKey.name];
      }
    }

    [ConfigurationProperty("value", IsRequired = true)]
    public string Value
    {
      get
      {
        return (string) this[ApplicationKey.value];
      }
    }
  }
}
