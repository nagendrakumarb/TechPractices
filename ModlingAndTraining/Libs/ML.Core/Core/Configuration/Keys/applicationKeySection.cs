// Decompiled with JetBrains decompiler
// Type: ML.Core.Configuration.Keys.applicationKeySection
// Assembly: ML.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 8665DF82-FF26-467F-B5DB-E30D7FB365C9
// Assembly location: F:\OneDrive\Other\Practice\DataModeling\App\bin\ML.Core.dll

using System.Configuration;

namespace ML.Core.Configuration.Keys
{
  public class applicationKeySection : ConfigurationElement
  {
    private static ConfigurationProperty appKeys = new ConfigurationProperty("", typeof (applicationKeyCollection), (object) null, ConfigurationPropertyOptions.IsDefaultCollection | ConfigurationPropertyOptions.IsRequired);
    private static ConfigurationPropertyCollection ConfigProperties = new ConfigurationPropertyCollection();

    static applicationKeySection()
    {
      applicationKeySection.ConfigProperties.Add(applicationKeySection.appKeys);
    }

    [ConfigurationProperty("applicationKeys", IsRequired = true)]
    public applicationKeyCollection AppKeys
    {
      get
      {
        return (applicationKeyCollection) this[applicationKeySection.appKeys];
      }
    }

    protected override ConfigurationPropertyCollection Properties
    {
      get
      {
        return applicationKeySection.ConfigProperties;
      }
    }
  }
}
