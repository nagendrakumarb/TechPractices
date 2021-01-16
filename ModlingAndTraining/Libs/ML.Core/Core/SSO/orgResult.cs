// Decompiled with JetBrains decompiler
// Type: ML.Core.SSO.orgResult
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
  [GeneratedCode("wsdl", "2.0.50727.3038")]
  [DebuggerStepThrough]
  [DesignerCategory("code")]
  [Serializable]
  public class orgResult
  {
    private string apiTokenField;
    private string captchaUrlField;
    private int errCodeField;
    private bool errCodeFieldSpecified;
    private string errMessageField;
    private string sessionIdField;

    [XmlElement(Form = XmlSchemaForm.Unqualified)]
    public string apiToken
    {
      get
      {
        return this.apiTokenField;
      }
      set
      {
        this.apiTokenField = value;
      }
    }

    [XmlElement(Form = XmlSchemaForm.Unqualified)]
    public string captchaUrl
    {
      get
      {
        return this.captchaUrlField;
      }
      set
      {
        this.captchaUrlField = value;
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
    public string sessionId
    {
      get
      {
        return this.sessionIdField;
      }
      set
      {
        this.sessionIdField = value;
      }
    }
  }
}
