// Decompiled with JetBrains decompiler
// Type: ML.Core.Configuration.Keys.applicationKeyCollection
// Assembly: ML.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 8665DF82-FF26-467F-B5DB-E30D7FB365C9
// Assembly location: F:\OneDrive\Other\Practice\DataModeling\App\bin\ML.Core.dll

using System.Configuration;

namespace ML.Core.Configuration.Keys
{
  [ConfigurationCollection(typeof (ApplicationKey), AddItemName = "add", CollectionType = ConfigurationElementCollectionType.BasicMap)]
  public class applicationKeyCollection : ConfigurationElementCollection
  {
    public override ConfigurationElementCollectionType CollectionType
    {
      get
      {
        return ConfigurationElementCollectionType.BasicMap;
      }
    }

    protected override string ElementName
    {
      get
      {
        return "add";
      }
    }

    protected override ConfigurationPropertyCollection Properties
    {
      get
      {
        return new ConfigurationPropertyCollection();
      }
    }

    public ApplicationKey this[int index]
    {
      get
      {
        return (ApplicationKey) this.BaseGet(index);
      }
      set
      {
        if (this.BaseGet(index) != null)
          this.BaseRemoveAt(index);
        this.BaseAdd(index, (ConfigurationElement) value);
      }
    }

    public ApplicationKey this[string name]
    {
      get
      {
        return (ApplicationKey) this.BaseGet((object) name);
      }
    }

    public void Add(ApplicationKey item)
    {
      this.BaseAdd((ConfigurationElement) item);
    }

    public void Remove(ApplicationKey item)
    {
      this.BaseRemove((object) item);
    }

    public void RemoveAt(int index)
    {
      this.BaseRemoveAt(index);
    }

    protected override ConfigurationElement CreateNewElement()
    {
      return (ConfigurationElement) new ApplicationKey();
    }

    protected override object GetElementKey(ConfigurationElement element)
    {
      return (object) (element as ApplicationKey).Name;
    }
  }
}
