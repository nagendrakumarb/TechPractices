// Decompiled with JetBrains decompiler
// Type: ML.Core.SSO.attributeMapping
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
  public class attributeMapping
  {
    private string nameField;
    private string nameFormatField;
    private string valueField;

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
    public string nameFormat
    {
      get
      {
        return this.nameFormatField;
      }
      set
      {
        this.nameFormatField = value;
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
