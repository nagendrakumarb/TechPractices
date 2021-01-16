// Decompiled with JetBrains decompiler
// Type: ML.Core.SSO.federationMapDetails
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
  [DebuggerStepThrough]
  [XmlType(Namespace = "http://soa.tricipher.com/")]
  [Serializable]
  public class federationMapDetails
  {
    private int idField;
    private bool idFieldSpecified;
    private int idIdentityProviderField;
    private bool idIdentityProviderFieldSpecified;
    private int idServiceProviderField;
    private bool idServiceProviderFieldSpecified;

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
    public int idIdentityProvider
    {
      get
      {
        return this.idIdentityProviderField;
      }
      set
      {
        this.idIdentityProviderField = value;
      }
    }

    [XmlIgnore]
    public bool idIdentityProviderSpecified
    {
      get
      {
        return this.idIdentityProviderFieldSpecified;
      }
      set
      {
        this.idIdentityProviderFieldSpecified = value;
      }
    }

    [XmlElement(Form = XmlSchemaForm.Unqualified)]
    public int idServiceProvider
    {
      get
      {
        return this.idServiceProviderField;
      }
      set
      {
        this.idServiceProviderField = value;
      }
    }

    [XmlIgnore]
    public bool idServiceProviderSpecified
    {
      get
      {
        return this.idServiceProviderFieldSpecified;
      }
      set
      {
        this.idServiceProviderFieldSpecified = value;
      }
    }
  }
}
