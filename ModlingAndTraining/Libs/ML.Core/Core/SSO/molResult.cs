// Decompiled with JetBrains decompiler
// Type: ML.Core.SSO.molResult
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
  public class molResult
  {
    private int errCodeField;
    private bool errCodeFieldSpecified;
    private string messageField;
    private bool successField;

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
    public string message
    {
      get
      {
        return this.messageField;
      }
      set
      {
        this.messageField = value;
      }
    }

    [XmlElement(Form = XmlSchemaForm.Unqualified)]
    public bool success
    {
      get
      {
        return this.successField;
      }
      set
      {
        this.successField = value;
      }
    }
  }
}
