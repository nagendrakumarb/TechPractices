// Decompiled with JetBrains decompiler
// Type: ML.Core.SSO.tokenResultEntry
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
  [DesignerCategory("code")]
  [XmlType(AnonymousType = true, Namespace = "http://soa.tricipher.com/")]
  [GeneratedCode("wsdl", "2.0.50727.3038")]
  [Serializable]
  public class tokenResultEntry
  {
    private string keyField;
    private string valueField;

    [XmlElement(Form = XmlSchemaForm.Unqualified)]
    public string key
    {
      get
      {
        return this.keyField;
      }
      set
      {
        this.keyField = value;
      }
    }

    [XmlElement(Form = XmlSchemaForm.Unqualified)]
    public string value
    {
      get
      {
        return this.valueField;
      }
      set
      {
        this.valueField = value;
      }
    }
  }
}
