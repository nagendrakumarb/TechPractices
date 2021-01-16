// Decompiled with JetBrains decompiler
// Type: ML.Core.Configuration.Data.DbConnectionCollection
// Assembly: ML.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 8665DF82-FF26-467F-B5DB-E30D7FB365C9
// Assembly location: F:\OneDrive\Other\Practice\DataModeling\App\bin\ML.Core.dll

using System.Configuration;

namespace ML.Core.Configuration.Data
{
  [ConfigurationCollection(typeof (DbConnection), AddItemName = "connection", CollectionType = ConfigurationElementCollectionType.BasicMap)]
  public class DbConnectionCollection : ConfigurationElementCollection
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
        return "connection";
      }
    }

    protected override ConfigurationPropertyCollection Properties
    {
      get
      {
        return new ConfigurationPropertyCollection();
      }
    }

    public DbConnection this[int index]
    {
      get
      {
        return (DbConnection) this.BaseGet(index);
      }
      set
      {
        if (this.BaseGet(index) != null)
          this.BaseRemoveAt(index);
        this.BaseAdd(index, (ConfigurationElement) value);
      }
    }

    public DbConnection this[string name]
    {
      get
      {
        return (DbConnection) this.BaseGet((object) name);
      }
    }

    public void Add(DbConnection item)
    {
      this.BaseAdd((ConfigurationElement) item);
    }

    public void Remove(DbConnection item)
    {
      this.BaseRemove((object) item);
    }

    public void RemoveAt(int index)
    {
      this.BaseRemoveAt(index);
    }

    protected override ConfigurationElement CreateNewElement()
    {
      return (ConfigurationElement) new DbConnection();
    }

    protected override object GetElementKey(ConfigurationElement element)
    {
      return (object) (element as DbConnection).Name;
    }
  }
}
