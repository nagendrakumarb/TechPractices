// Decompiled with JetBrains decompiler
// Type: ML.Core.Utilities.General
// Assembly: ML.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 8665DF82-FF26-467F-B5DB-E30D7FB365C9
// Assembly location: F:\OneDrive\Other\Practice\DataModeling\App\bin\ML.Core.dll

using System;
using System.Net.Mail;

namespace ML.Core.Utilities
{
  public class General
  {
    public bool SendEmail(MailMessage mailMessage, string SMTPMailServer)
    {
      try
      {
        new SmtpClient() { Host = SMTPMailServer }.Send(mailMessage);
        return true;
      }
      catch (System.Exception ex)
      {
        throw ex;
      }
    }
  }
}
