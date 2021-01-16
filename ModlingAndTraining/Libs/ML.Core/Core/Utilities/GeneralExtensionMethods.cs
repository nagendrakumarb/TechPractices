// Decompiled with JetBrains decompiler
// Type: ML.Core.Utilities.GeneralExtensionMethods
// Assembly: ML.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 8665DF82-FF26-467F-B5DB-E30D7FB365C9
// Assembly location: F:\OneDrive\Other\Practice\DataModeling\App\bin\ML.Core.dll

using Microsoft.VisualBasic;
using System.Net;
using System.Web;

namespace ML.Core.Utilities
{
  public static class GeneralExtensionMethods
  {
    public static string FindAndReplace(this string target)
    {
      if (null == target)
        return "";
      target = target.Replace("&#39;", "'");
      target = target.Replace("&quot;", "\"");
      return target;
    }

    public static string ReplaceSingleQuote(this string target)
    {
      if (null == target)
        return "";
      target = target.Replace("'", "&#39;");
      target = target.Replace("\"", "&quot;");
      return target;
    }

    public static string HtmlEncode(this string target)
    {
      if (null == target)
        return "";
      string empty = string.Empty;
      return WebUtility.HtmlEncode(target);
    }

    public static string HtmlDecode(this string target)
    {
      if (null == target)
        return "";
      string empty = string.Empty;
      return WebUtility.HtmlDecode(target);
    }

    public static string GetCell(this int target)
    {
      string str = "";
      double num1 = target;
      if (num1 < 26)
        str = ((char) (64 + num1)).ToString();
      else if (num1 == 26)
      {
        str = "Z";
      }
      else
      {
        while (num1 > 0)
        {
          double num2 = num1 % 26;
          str = num2 != 0 ? ((char) (64 + num2)).ToString() + str : "Z" + str;
          num1 = System.Math.Truncate(num1 / 26);
          if (num2 == 0)
            --num1;
        }
      }
      return str;
    }
  }
}
