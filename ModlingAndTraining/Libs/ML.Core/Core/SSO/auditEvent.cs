// Decompiled with JetBrains decompiler
// Type: ML.Core.SSO.auditEvent
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
  [XmlType(Namespace = "http://soa.tricipher.com/")]
  [DebuggerStepThrough]
  [DesignerCategory("code")]
  [Serializable]
  public class auditEvent
  {
    private string applicationField;
    private string clientIPField;
    private string descriptionField;
    private bool statusField;
    private bool statusFieldSpecified;
    private string targetUsernameField;
    private DateTime timeField;
    private bool timeFieldSpecified;
    private string typeField;
    private string usernameField;

    [XmlElement(Form = XmlSchemaForm.Unqualified)]
    public string application
    {
      get
      {
        return this.applicationField;
      }
      set
      {
        this.applicationField = value;
      }
    }

    [XmlElement(Form = XmlSchemaForm.Unqualified)]
    public string clientIP
    {
      get
      {
        return this.clientIPField;
      }
      set
      {
        this.clientIPField = value;
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
    public bool status
    {
      get
      {
        return this.statusField;
      }
      set
      {
        this.statusField = value;
      }
    }

    [XmlIgnore]
    public bool statusSpecified
    {
      get
      {
        return this.statusFieldSpecified;
      }
      set
      {
        this.statusFieldSpecified = value;
      }
    }

    [XmlElement(Form = XmlSchemaForm.Unqualified)]
    public string targetUsername
    {
      get
      {
        return this.targetUsernameField;
      }
      set
      {
        this.targetUsernameField = value;
      }
    }

    [XmlElement(Form = XmlSchemaForm.Unqualified)]
    public DateTime time
    {
      get
      {
        return this.timeField;
      }
      set
      {
        this.timeField = value;
      }
    }

    [XmlIgnore]
    public bool timeSpecified
    {
      get
      {
        return this.timeFieldSpecified;
      }
      set
      {
        this.timeFieldSpecified = value;
      }
    }

    [XmlElement(Form = XmlSchemaForm.Unqualified)]
    public string type
    {
      get
      {
        return this.typeField;
      }
      set
      {
        this.typeField = value;
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
