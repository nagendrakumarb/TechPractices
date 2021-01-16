// Decompiled with JetBrains decompiler
// Type: ML.Core.SSO.identityProviderDetails
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
  [XmlType(Namespace = "http://soa.tricipher.com/")]
  [DebuggerStepThrough]
  [DesignerCategory("code")]
  [GeneratedCode("wsdl", "2.0.50727.3038")]
  [Serializable]
  public class identityProviderDetails
  {
    private string certField;
    private int idField;
    private bool idFieldSpecified;
    private string metaDataField;
    private string metaDataUrlField;
    private string nameField;
    private string orgNameField;
    private string profileField;

    [XmlElement(Form = XmlSchemaForm.Unqualified)]
    public string cert
    {
      get
      {
        return this.certField;
      }
      set
      {
        this.certField = value;
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
    public string metaData
    {
      get
      {
        return this.metaDataField;
      }
      set
      {
        this.metaDataField = value;
      }
    }

    [XmlElement(Form = XmlSchemaForm.Unqualified)]
    public string metaDataUrl
    {
      get
      {
        return this.metaDataUrlField;
      }
      set
      {
        this.metaDataUrlField = value;
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
    public string orgName
    {
      get
      {
        return this.orgNameField;
      }
      set
      {
        this.orgNameField = value;
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
  }
}
