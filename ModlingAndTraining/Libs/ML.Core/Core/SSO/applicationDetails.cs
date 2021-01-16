// Decompiled with JetBrains decompiler
// Type: ML.Core.SSO.applicationDetails
// Assembly: ML.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 8665DF82-FF26-467F-B5DB-E30D7FB365C9
// Assembly location: F:\OneDrive\Other\Practice\DataModeling\App\bin\ML.Core.dll

using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Xml.Schema;
using System.Xml.Serialization;

namespace ML.Core.SSO
{
  [DesignerCategory("code")]
  [XmlType(Namespace = "http://soa.tricipher.com/")]
  [GeneratedCode("wsdl", "2.0.50727.3038")]
  [DebuggerStepThrough]
  [Serializable]
  public class applicationDetails
  {
    private string descriptionField;
    private string iconUrlField;
    private int idField;
    private bool idFieldSpecified;
    private string nameField;

    [XmlElement(Form = XmlSchemaForm.Unqualified)]
    public string description
    {
      get
      {
        return this.descriptionField;
      }
      set
      {
        this.descriptionField = value;
      }
    }

    [XmlElement(Form = XmlSchemaForm.Unqualified)]
    public string iconUrl
    {
      get
      {
        return this.iconUrlField;
      }
      set
      {
        this.iconUrlField = value;
      }
    }

    [XmlElement(Form = XmlSchemaForm.Unqualified)]
    public int id
    {
      get
      {
        return this.idField;
      }
      set
      {
        this.idField = value;
      }
    }

    [XmlIgnore]
    public bool idSpecified
    {
      get
      {
        return this.idFieldSpecified;
      }
      set
      {
        this.idFieldSpecified = value;
      }
    }

    [XmlElement(Form = XmlSchemaForm.Unqualified)]
    public string name
    {
      get
      {
        return this.nameField;
      }
      set
      {
        this.nameField = value;
      }
    }
  }
}
