// Decompiled with JetBrains decompiler
// Type: MachineLearning.Data.CommandHelper.OracleHelper
// Assembly: ML.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 8665DF82-FF26-467F-B5DB-E30D7FB365C9
// Assembly location: F:\OneDrive\Other\Practice\DataModeling\App\bin\ML.Core.dll

using ML.Core.Configuration.Data;
using ML.Core.Exception;
using ML.Core.Utilities;
using System.Configuration;
using System.Data;
using System.Data.Common;
using System.Data.OracleClient;

namespace MachineLearning.Data.CommandHelper
{
  internal class OracleHelper : BaseDbHelper
  {
    public OracleHelper()
    {
    }

    public OracleHelper(string connectionString)
      : base(connectionString)
    {
    }

    protected override bool validateConnection(string connectionString)
    {
      try
      {
        string connectionString1 = string.Empty;
        string str1 = connectionString;
        char[] chArray = new char[1]{ ';' };
        foreach (string str2 in str1.Split(chArray))
        {
          if (str2.Split('=')[0].ToLower() != "Connect Timeout".ToLower())
            connectionString1 = connectionString1 + str2 + ";";
        }
        OracleConnection oracleConnection = new OracleConnection(connectionString1);
        oracleConnection.Open();
        oracleConnection.Close();
        return true;
      }
      catch (System.Exception ex)
      {
        throw ex;
      }
    }

    protected override string getDbConnection()
    {
      try
      {
        DataConfiguration section = ConfigurationManager.GetSection("MachineLearning/MachineLearning.Data") as DataConfiguration;
        OracleConnection oracleConnection = new OracleConnection(section.DbConnections.Connections[section.DbConnections.DefaultConnection].Value);
        this.validateConnection(oracleConnection.ConnectionString);
        return oracleConnection.ConnectionString;
      }
      catch (HADataException ex)
      {
        throw ex;
      }
      catch (System.Exception ex)
      {
        throw new HADataException(ex.Message);
      }
    }

    protected override System.Data.Common.DbConnection getDbConnection(
      string connectionString,
      bool fromConfig)
    {
      try
      {
        OracleConnection oracleConnection = new OracleConnection(connectionString);
        if (fromConfig)
        {
          if (AppKeys.GetKey("validateDbConnection") == "true")
            this.validateConnection(oracleConnection.ConnectionString);
        }
        else
          this.validateConnection(oracleConnection.ConnectionString);
        return (System.Data.Common.DbConnection) oracleConnection;
      }
      catch (HADataException ex)
      {
        throw ex;
      }
      catch (System.Exception ex)
      {
        throw new HADataException(ex.Message);
      }
    }

    protected override DbCommand createCommand(string query, QueryType queryType)
    {
      try
      {
        OracleCommand oracleCommand = new OracleCommand();
        if (queryType == QueryType.StoredProcedure)
          oracleCommand.CommandType = CommandType.StoredProcedure;
        else
          oracleCommand.CommandType = CommandType.Text;
        return (DbCommand) oracleCommand;
      }
      catch (HADataException ex)
      {
        throw ex;
      }
      catch (System.Exception ex)
      {
        throw new HADataException(ex.Message);
      }
    }

    protected override DbDataAdapter getDataAdapter(DbCommand cmd)
    {
      try
      {
        return (DbDataAdapter) new OracleDataAdapter((OracleCommand) cmd);
      }
      catch (HADataException ex)
      {
        throw ex;
      }
      catch (System.Exception ex)
      {
        throw new HADataException(ex.Message);
      }
    }

    protected override DbCommand onSetParameters(
      DbCommand cmd,
      QueryParameter[] paramCollection)
    {
      try
      {
        if (paramCollection != null)
        {
          foreach (QueryParameter queryParameter in paramCollection)
          {
            OracleParameter oracleParameter = new OracleParameter();
            oracleParameter.ParameterName = queryParameter.Name;
            switch (queryParameter.Direction)
            {
              case QueryParameterDirection.Input:
                oracleParameter.Direction = ParameterDirection.Input;
                oracleParameter.Value = queryParameter.Value;
                break;
              case QueryParameterDirection.InputOutPut:
                oracleParameter.Direction = ParameterDirection.InputOutput;
                oracleParameter.Value = queryParameter.Value;
                break;
              case QueryParameterDirection.Output:
                oracleParameter.Direction = ParameterDirection.Output;
                break;
              case QueryParameterDirection.ReturnValue:
                oracleParameter.Direction = ParameterDirection.ReturnValue;
                break;
            }
            cmd.Parameters.Add((object) oracleParameter);
          }
        }
        return cmd;
      }
      catch (HADataException ex)
      {
        throw ex;
      }
      catch (System.Exception ex)
      {
        throw new HADataException(ex.Message);
      }
    }
  }
}
