// Decompiled with JetBrains decompiler
// Type: ML.Core.SSO.applicationField
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
  public class applicationField
  {
    private string defaultValueField;
    private int fieldTypeField;
    private bool fieldTypeFieldSpecified;
    private string labelField;
    private string nameField;
    private string valueField;

    [XmlElement(Form = XmlSchemaForm.Unqualified)]
    public string defaultValue
    {
      get
      {
        return this.defaultValueField;
      }
      set
      {
        this.defaultValueField = value;
      }
    }

    [XmlElement(Form = XmlSchemaForm.Unqualified)]
    public int fieldType
    {
      get
      {
        return this.fieldTypeField;
      }
      set
      {
        this.fieldTypeField = value;
      }
    }

    [XmlIgnore]
    public bool fieldTypeSpecified
    {
      get
      {
        return this.fieldTypeFieldSpecified;
      }
      set
      {
        this.fieldTypeFieldSpecified = value;
      }
    }

    [XmlElement(Form = XmlSchemaForm.Unqualified)]
    public string label
    {
      get
      {
        return this.labelField;
      }
      set
      {
        this.labelField = value;
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
