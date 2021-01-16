// Decompiled with JetBrains decompiler
// Type: ML.Core.SSO.applicationFieldListResult
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
  public class applicationFieldListResult
  {
    private int errCodeField;
    private bool errCodeFieldSpecified;
    private string errMessageField;
    private applicationField[] fieldsField;

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

    [XmlElement("fields", Form = XmlSchemaForm.Unqualified, IsNullable = true)]
    public applicationField[] fields
    {
      get
      {
        return this.fieldsField;
      }
      set
      {
        this.fieldsField = value;
      }
    }
  }
}
