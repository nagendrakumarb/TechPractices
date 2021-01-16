﻿// Decompiled with JetBrains decompiler
// Type: ML.Core.SSO.tokenResult
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
  [DebuggerStepThrough]
  [XmlType(Namespace = "http://soa.tricipher.com/")]
  [GeneratedCode("wsdl", "2.0.50727.3038")]
  [DesignerCategory("code")]
  [Serializable]
  public class tokenResult
  {
    private tokenResultEntry[] attributesField;
    private int errCodeField;
    private bool errCodeFieldSpecified;
    private string errMessageField;
    private string usernameField;

    [XmlArrayItem("entry", Form = XmlSchemaForm.Unqualified, IsNullable = false)]
    [XmlArray(Form = XmlSchemaForm.Unqualified)]
    public tokenResultEntry[] attributes
    {
      get
      {
        return this.attributesField;
      }
      set
      {
        this.attributesField = value;
      }
    }

    [XmlElement(Form = XmlSchemaForm.Unqualified)]
    public int errCode
    {
      get
      {
        return this.errCodeField;
      }
      set
      {
        this.errCodeField = value;
      }
    }

    [XmlIgnore]
    public bool errCodeSpecified
    {
      get
      {
        return this.errCodeFieldSpecified;
      }
      set
      {
        this.errCodeFieldSpecified = value;
      }
    }

    [XmlElement(Form = XmlSchemaForm.Unqualified)]
    public string errMessage
    {
      get
      {
        return this.errMessageField;
      }
      set
      {
        this.errMessageField = value;
      }
    }

    [XmlElement(Form = XmlSchemaForm.Unqualified)]
    public string username
    {
      get
      {
        return this.usernameField;
      }
      set
      {
        this.usernameField = value;
      }
    }
  }
}
