// Decompiled with JetBrains decompiler
// Type: ML.Core.SSO.serviceProviderDetails
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
  [GeneratedCode("wsdl", "2.0.50727.3038")]
  [DesignerCategory("code")]
  [XmlType(Namespace = "http://soa.tricipher.com/")]
  [DebuggerStepThrough]
  [Serializable]
  public class serviceProviderDetails
  {
    private string audienceField;
    private string descriptionField;
    private int idField;
    private bool idFieldSpecified;
    private int lifetimeField;
    private bool lifetimeFieldSpecified;
    private string nameField;
    private string postUrlField;
    private string profileField;
    private string recipientField;
    private string targetUrlField;

    [XmlElement(Form = XmlSchemaForm.Unqualified)]
    public string audience
    {
      get
      {
        return this.audienceField;
      }
      set
      {
        this.audienceField = value;
      }
    }

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
    public int lifetime
    {
      get
      {
        return this.lifetimeField;
      }
      set
      {
        this.lifetimeField = value;
      }
    }

    [XmlIgnore]
    public bool lifetimeSpecified
    {
      get
      {
        return this.lifetimeFieldSpecified;
      }
      set
      {
        this.lifetimeFieldSpecified = value;
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

    [XmlElement(Form = XmlSchemaForm.Unqualified)]
    public string postUrl
    {
      get
      {
        return this.postUrlField;
      }
      set
      {
        this.postUrlField = value;
      }
    }

    [XmlElement(Form = XmlSchemaForm.Unqualified)]
    public string profile
    {
      get
      {
        return this.profileField;
      }
      set
      {
        this.profileField = value;
      }
    }

    [XmlElement(Form = XmlSchemaForm.Unqualified)]
    public string recipient
    {
      get
      {
        return this.recipientField;
      }
      set
      {
        this.recipientField = value;
      }
    }

    [XmlElement(Form = XmlSchemaForm.Unqualified)]
    public string targetUrl
    {
      get
      {
        return this.targetUrlField;
      }
      set
      {
        this.targetUrlField = value;
      }
    }
  }
}
