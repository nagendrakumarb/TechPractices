// Decompiled with JetBrains decompiler
// Type: ML.Core.Security.CryptographyExtensionMethods
// Assembly: ML.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 8665DF82-FF26-467F-B5DB-E30D7FB365C9
// Assembly location: F:\OneDrive\Other\Practice\DataModeling\App\bin\ML.Core.dll

//using MachineLearning.Security.Cryptography;

namespace ML.Core.Security
{
  public static class CryptographyExtensionMethods
  {
    //private static Encryption encryption = new Encryption();

    public static string RijndaelEncrypt(this string target)
    {
            return target;
     // return new RijndaelEncryption().Encrypt(target);
    }

    public static string RijndaelDecrypt(this string target)
    {
            return target;
      //return new RijndaelEncryption().Decrypt(target);
    }

    public static string DecryptFromBase64(this string target, string base64String)
    {
            return target;
      //return new ClientSideEncryption().DecryptFromBase64(target, base64String);
    }

    public static string HAEncrypt(this string target)
    {
            return target;
   //   return CryptographyExtensionMethods.encryption.Encrypt((object) target);
    }

    public static string HADecrypt(this string target)
    {
            return target;
      //return CryptographyExtensionMethods.encryption.Decrypt1(target);
    }

    //public static string Bappa(this string target, string hBoat)
    //{
    //        return target;
    //  //return CryptographyExtensionMethods.encryption.Bappa((object) target, (object) hBoat);
    //}

    //public static string Morya(this string target, string hBoat)
    //{
    //  return CryptographyExtensionMethods.encryption.Morya((object) target, (object) hBoat);
    //}
  }
}
