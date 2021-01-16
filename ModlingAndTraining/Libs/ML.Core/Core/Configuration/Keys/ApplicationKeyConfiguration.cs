// Decompiled with JetBrains decompiler
// Type: ML.Core.Configuration.Keys.ApplicationKeyConfiguration
// Assembly: ML.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 8665DF82-FF26-467F-B5DB-E30D7FB365C9
// Assembly location: F:\OneDrive\Other\Practice\DataModeling\App\bin\ML.Core.dll

using System.Configuration;

namespace ML.Core.Configuration.Keys
{
  public class ApplicationKeyConfiguration : ConfigurationSection
  {
    private static ConfigurationProperty applicationKeys = new ConfigurationProperty(nameof (applicationKeys), typeof (applicationKeySection), (object) null, ConfigurationPropertyOptions.IsRequired);
    private static ConfigurationPropertyCollection applicationKeyConfigProperties = new ConfigurationPropertyCollection();

    static ApplicationKeyConfiguration()
    {
      ApplicationKeyConfiguration.applicationKeyConfigProperties.Add(ApplicationKeyConfiguration.applicationKeys);
    }

    [ConfigurationProperty("applicationKeys", IsRequired = true)]
    public applicationKeySection ApplicationKeys
    {
      get
      {
        return (applicationKeySection) this[ApplicationKeyConfiguration.applicationKeys];
      }
    }

    protected override ConfigurationPropertyCollection Properties
    {
      get
      {
        return ApplicationKeyConfiguration.applicationKeyConfigProperties;
      }
    }
  }
}
