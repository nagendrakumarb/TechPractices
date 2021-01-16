// Decompiled with JetBrains decompiler
// Type: MachineLearning.Data.CommandHelper.MSSQLHelper
// Assembly: ML.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 8665DF82-FF26-467F-B5DB-E30D7FB365C9
// Assembly location: F:\OneDrive\Other\Practice\DataModeling\App\bin\ML.Core.dll

using ML.Core.Configuration.Data;
using ML.Core.Exception;
using ML.Core.Utilities;
using System.Configuration;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;

namespace MachineLearning.Data.CommandHelper
{
  internal class MSSQLHelper : BaseDbHelper
  {
    public MSSQLHelper()
    {
    }

    public MSSQLHelper(string connectionString)
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
        SqlConnection sqlConnection = new SqlConnection(connectionString1);
        sqlConnection.Open();
        sqlConnection.Close();
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
        return section.DbConnections.Connections[section.DbConnections.DefaultConnection].Value;
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
        SqlConnection sqlConnection = new SqlConnection(connectionString);
        if (fromConfig)
        {
          if (AppKeys.GetKey("validateDbConnection") == "true")
            this.validateConnection(sqlConnection.ConnectionString);
        }
        else
          this.validateConnection(sqlConnection.ConnectionString);
        return (System.Data.Common.DbConnection) sqlConnection;
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
        SqlCommand sqlCommand = new SqlCommand(query);
        if (queryType == QueryType.StoredProcedure)
          sqlCommand.CommandType = CommandType.StoredProcedure;
        else
          sqlCommand.CommandType = CommandType.Text;
        return (DbCommand) sqlCommand;
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
        return (DbDataAdapter) new SqlDataAdapter((SqlCommand) cmd);
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
            SqlParameter sqlParameter = new SqlParameter();
            sqlParameter.ParameterName = "@" + queryParameter.Name;
            switch (queryParameter.Direction)
            {
              case QueryParameterDirection.Input:
                sqlParameter.Direction = ParameterDirection.Input;
                sqlParameter.Value = queryParameter.Value;
                break;
              case QueryParameterDirection.InputOutPut:
                sqlParameter.Direction = ParameterDirection.InputOutput;
                sqlParameter.Value = queryParameter.Value;
                break;
              case QueryParameterDirection.Output:
                sqlParameter.Direction = ParameterDirection.Output;
                sqlParameter.Size = -1;
                break;
              case QueryParameterDirection.ReturnValue:
                sqlParameter.Direction = ParameterDirection.ReturnValue;
                break;
            }
            cmd.Parameters.Add((object) sqlParameter);
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
