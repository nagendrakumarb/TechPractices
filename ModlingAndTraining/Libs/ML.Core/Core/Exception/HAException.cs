// Decompiled with JetBrains decompiler
// Type: ML.Core.Exception.HAException
// Assembly: ML.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 8665DF82-FF26-467F-B5DB-E30D7FB365C9
// Assembly location: F:\OneDrive\Other\Practice\DataModeling\App\bin\ML.Core.dll

using System;
using System.Data.SqlClient;

namespace ML.Core.Exception
{
  [Serializable]
  public class HAException : ApplicationException
  {
    private ExceptionCode _ExceptionCode;
    private new string _message;
    private System.Exception _InnerException;
    private string _StackTrace;

    public HAException()
    {
    }

    public HAException(string message)
    {
      this.Message = message;
    }

    public HAException(System.Exception sysEx)
      : base(sysEx.Message, sysEx)
    {
      this.Message = base.Message;
      this.InnerException = base.InnerException;
      this.StackTrace = sysEx.StackTrace;
    }

    public HAException(string messsage, System.Exception sysEx)
      : base(sysEx.Message, sysEx)
    {
      this.Message = messsage + ":" + base.Message;
      this.InnerException = base.InnerException;
      this.StackTrace = sysEx.StackTrace;
    }

    public HAException(SqlException SqlEx)
      : base(SqlEx.Message, (System.Exception) SqlEx)
    {
      this.Message = base.Message;
      this.InnerException = base.InnerException;
      this.StackTrace = SqlEx.StackTrace;
    }

    public HAException(ExceptionCode ExceptionCode)
    {
      this.ExceptionCode = ExceptionCode;
      switch (ExceptionCode)
      {
        case ExceptionCode.API_DISABLED_EXCEPTION:
          this.Message = "API is currently disabled.";
          break;
        case ExceptionCode.APPLICATION_VERSION_EXCEPTION:
          this.Message = "Application version configuration is not complete";
          break;
        case ExceptionCode.LOGIN_EXCEPTION:
          this.Message = "Login into the application";
          break;
        case ExceptionCode.SEGMENT_NOT_FOUND:
          this.Message = "Segment member doesn't exist or is not active or is not visible";
          break;
        case ExceptionCode.SEGMENT_ALREADY_EXISTS:
          this.Message = "Segment member already Exists ";
          break;
        case ExceptionCode.SEGMENT_NAME_NULL_EXCEPTION:
          this.Message = "Object name is null or not valid";
          break;
        case ExceptionCode.SEGMENT_COUNT_EXCEPTION:
          this.Message = "COA Segments doesn't exist or not configured";
          break;
        case ExceptionCode.SEGMENT_COLLECTION_EXCEPTION:
          this.Message = "Segment collection is not unique";
          break;
        case ExceptionCode.GLDATA_COLLECTION_EXCEPTION:
          this.Message = "GL Data object collection is not unique";
          break;
        case ExceptionCode.FILTERCOLLECTION_EXCEPTION:
          this.Message = "Filter Collection is not unique";
          break;
        case ExceptionCode.INVALID_USER:
          this.Message = "Invalid user";
          break;
        case ExceptionCode.INVALID_TENANT:
          this.Message = "Tenant doesn't exist";
          break;
        case ExceptionCode.INACTIVE_TENANT:
          this.Message = "Tenant is not active";
          break;
        case ExceptionCode.INVALID_PASSWORD:
          this.Message = "Invalid password";
          break;
        case ExceptionCode.INVALID_SEGMENT_TYPE:
          this.Message = "Segment type is not valid";
          break;
        case ExceptionCode.INVALID_FILTER_FIELD:
          this.Message = "Filter field is not valid";
          break;
        case ExceptionCode.INVALID_FILTER_OPERATOR:
          this.Message = "Filter operator is not valid";
          break;
        case ExceptionCode.INVALID_MEMBER_TYPE:
          this.Message = "Member type is not valid";
          break;
        case ExceptionCode.INVALID_ROLLUP_OPERATOR:
          this.Message = "Rollupoperator is not valid";
          break;
        case ExceptionCode.INVALID_ACCOUNT_GROUP:
          this.Message = "Account group is not valid";
          break;
        case ExceptionCode.INVALID_ACCOUNT_TYPE:
          this.Message = "Account type is not valid";
          break;
        case ExceptionCode.INVALID_CREDIT_DEBIT:
          this.Message = "Credit / debit is not valid";
          break;
        case ExceptionCode.INVALID_NORMAL_DATA_INPUT:
          this.Message = "Normal data input is not valid";
          break;
        case ExceptionCode.INVALID_VARIANCE:
          this.Message = "Variance is not valid";
          break;
        case ExceptionCode.INVALID_ACTIVE_STATUS:
          this.Message = "Active status is not valid";
          break;
        case ExceptionCode.INVALID_FILETYPE:
          this.Message = "File type is not supported";
          break;
        case ExceptionCode.INVALID_DELIMITER:
          this.Message = "Delimiter is not valid";
          break;
        case ExceptionCode.INVALID_FILEFORMAT:
          this.Message = "File format is not valid";
          break;
        case ExceptionCode.INVALID_RULE:
          this.Message = "Rule is not valid or does not exist";
          break;
        case ExceptionCode.CURRENCY_COUNT_EXCEPTION:
          this.Message = "Currencies do not exist or not loaded";
          break;
        case ExceptionCode.CURRENCY_TYPE_EXCEPTION:
          this.Message = "Currency types do not exist or not loaded";
          break;
        case ExceptionCode.COLLECTION_NULL_EXCEPTION:
          this.Message = "Object Collection is empty";
          break;
        case ExceptionCode.CODE_NULL_EXCEPTION:
          this.Message = "Code is null or empty";
          break;
        case ExceptionCode.SCENARIO_NULL_EXCEPTION:
          this.Message = "Scenario code is null or empty";
          break;
        case ExceptionCode.FISCAL_YEAR_NULL_EXCEPTION:
          this.Message = "Fiscal year is null or empty";
          break;
        case ExceptionCode.FISCAL_YEAR_NONNUMERIC_EXCEPTION:
          this.Message = "Fiscal year is not numeric";
          break;
        case ExceptionCode.FISCAL_YEAR_NEGATIVE_EXCEPTION:
          this.Message = "Fiscal year is negative or not valid";
          break;
        case ExceptionCode.FISCAL_PERIOD_NULL_EXCEPTION:
          this.Message = "Fiscal period is null or empty";
          break;
        case ExceptionCode.FISCAL_PERIOD_NONNUMERIC_EXCEPTION:
          this.Message = "Fiscal period is not numeric";
          break;
        case ExceptionCode.FISCAL_PERIOD_NEGATIVE_EXCEPTION:
          this.Message = "Fiscal period is negative or not valid";
          break;
        case ExceptionCode.SEGMENT1_NULL_EXCEPTION:
          this.Message = "Segment1 code is null or empty";
          break;
        case ExceptionCode.SEGMENT2_NULL_EXCEPTION:
          this.Message = "Segment2 code is null or empty";
          break;
        case ExceptionCode.RULE_NULL_EXCEPTION:
          this.Message = "Rule is null or empty";
          break;
        case ExceptionCode.DATA_NULL_EXCEPTION:
          this.Message = "Data is null or empty";
          break;
        case ExceptionCode.DATA_COLUMNS_MISSING_EXCEPTION:
          this.Message = "Souce data has less number of columns than configured for the rule in Host CPM ETL";
          break;
        case ExceptionCode.API_CONFIG_EXCEPTION:
          this.Message = "Web service api is not configured in Host CPM.";
          break;
        case ExceptionCode.DELIMITER_NULL_EXCEPTION:
          this.Message = "Delimiter is null or empty";
          break;
        case ExceptionCode.TO_EMAIL_NULL_EXCEPTION:
          this.Message = "To Email address is null or not configured";
          break;
        case ExceptionCode.EMAIL_NULL_EXCEPTION:
          this.Message = "From and To Emails are null or not configured";
          break;
        case ExceptionCode.MULTIPLE_VALUES_EXCEPTION:
          this.Message = "Data filtering based on multiple values is not supported";
          break;
        case ExceptionCode.AMOUNT_TYPE_NULL_EXCEPTION:
          this.Message = "Amount type is null or empty";
          break;
        case ExceptionCode.SCENARIO_CODE_EXCEPTION:
          this.Message = "Scenario code is not provided";
          break;
        case ExceptionCode.AMOUNT_TYPE_EXCEPTION:
          this.Message = "Amount type is not provided";
          break;
      }
    }

    public ExceptionCode ExceptionCode
    {
      get
      {
        return this._ExceptionCode;
      }
      set
      {
        this._ExceptionCode = value;
      }
    }

    public new string Message
    {
      get
      {
        return this._message;
      }
      set
      {
        this._message = value;
      }
    }

    public new System.Exception InnerException
    {
      get
      {
        return this._InnerException;
      }
      set
      {
        this._InnerException = value;
      }
    }

    public new string StackTrace
    {
      get
      {
        return this._StackTrace;
      }
      set
      {
        this._StackTrace = value;
      }
    }
  }
}
