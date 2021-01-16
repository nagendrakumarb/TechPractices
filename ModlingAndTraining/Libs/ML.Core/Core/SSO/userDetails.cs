// Decompiled with JetBrains decompiler
// Type: ML.Core.SSO.userDetails
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
  [DebuggerStepThrough]
  [XmlType(Namespace = "http://soa.tricipher.com/")]
  [GeneratedCode("wsdl", "2.0.50727.3038")]
  [Serializable]
  public class userDetails
  {
    private string emailField;
    private string firstNameField;
    private string[] kbaField;
    private string lastNameField;
    private string phoneField;
    private int statusField;
    private bool statusFieldSpecified;
    private int userIdField;
    private bool userIdFieldSpecified;
    private string usernameField;
    private byte[] welcomeImageField;
    private string welcomeMessageField;

    [XmlElement(Form = XmlSchemaForm.Unqualified)]
    public string email
    {
      get
      {
        return this.emailField;
      }
      set
      {
        this.emailField = value;
      }
    }

    [XmlElement(Form = XmlSchemaForm.Unqualified)]
    public string firstName
    {
      get
      {
        return this.firstNameField;
      }
      set
      {
        this.firstNameField = value;
      }
    }

    [XmlElement("kba", Form = XmlSchemaForm.Unqualified, IsNullable = true)]
    public string[] kba
    {
      get
      {
        return this.kbaField;
      }
      set
      {
        this.kbaField = value;
      }
    }

    [XmlElement(Form = XmlSchemaForm.Unqualified)]
    public string lastName
    {
      get
      {
        return this.lastNameField;
      }
      set
      {
        this.lastNameField = value;
      }
    }

    [XmlElement(Form = XmlSchemaForm.Unqualified)]
    public string phone
    {
      get
      {
        return this.phoneField;
      }
      set
      {
        this.phoneField = value;
      }
    }

    [XmlElement(Form = XmlSchemaForm.Unqualified)]
    public int status
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
    public int userId
    {
      get
      {
        return this.userIdField;
      }
      set
      {
        this.userIdField = value;
      }
    }

    [XmlIgnore]
    public bool userIdSpecified
    {
      get
      {
        return this.userIdFieldSpecified;
      }
      set
      {
        this.userIdFieldSpecified = value;
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

    [XmlElement(DataType = "base64Binary", Form = XmlSchemaForm.Unqualified)]
    public byte[] welcomeImage
    {
      get
      {
        return this.welcomeImageField;
      }
      set
      {
        this.welcomeImageField = value;
      }
    }

    [XmlElement(Form = XmlSchemaForm.Unqualified)]
    public string welcomeMessage
    {
      get
      {
        return this.welcomeMessageField;
      }
      set
      {
        this.welcomeMessageField = value;
      }
    }
  }
}
