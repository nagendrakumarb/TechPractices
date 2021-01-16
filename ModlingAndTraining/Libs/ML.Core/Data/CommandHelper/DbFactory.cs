// Decompiled with JetBrains decompiler
// Type: MachineLearning.Data.CommandHelper.DbFactory
// Assembly: ML.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 8665DF82-FF26-467F-B5DB-E30D7FB365C9
// Assembly location: F:\OneDrive\Other\Practice\DataModeling\App\bin\ML.Core.dll

using ML.Core.Configuration.Data;
using ML.Core.Exception;
using System.Configuration;

namespace MachineLearning.Data.CommandHelper
{
  public class DbFactory
  {
    private static DataConfiguration dbConfigSection;

    public static BaseDbHelper GetDbHelper(string connectionString)
    {
      try
      {
        DbFactory.dbConfigSection = ConfigurationManager.GetSection("MachineLearning/MachineLearning.Data") as DataConfiguration;
        DbConnection connection = DbFactory.dbConfigSection.DbConnections.Connections[DbFactory.dbConfigSection.DbConnections.DefaultConnection];
        BaseDbHelper baseDbHelper;
        switch (connection.Provider)
        {
          case "MSSQL":
            baseDbHelper = (BaseDbHelper) new MSSQLHelper(connectionString);
            break;
          case "Oracle":
            baseDbHelper = (BaseDbHelper) new MSSQLHelper(connectionString);
            break;
          default:
            throw new HADataException("", "The data base type " + connection.Provider + " is not recognized.");
        }
        return baseDbHelper;
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

    public static BaseDbHelper GetDbHelper(string connectionString, string provider)
    {
      try
      {
        BaseDbHelper baseDbHelper;
        switch (provider)
        {
          case "MSSQL":
            baseDbHelper = (BaseDbHelper) new MSSQLHelper(connectionString);
            break;
          case "Oracle":
            baseDbHelper = (BaseDbHelper) new MSSQLHelper(connectionString);
            break;
          default:
            throw new HADataException("", "The data base type MSSQL is not recognized.");
        }
        return baseDbHelper;
      }
      catch (HADataException ex)
      {
        throw ex;
      }
      catch (System.Exception ex)
      {
        throw ex;
      }
    }

    public static BaseDbHelper GetDbHelper()
    {
      try
      {
        DbFactory.dbConfigSection = ConfigurationManager.GetSection("MachineLearning/MachineLearning.Data") as DataConfiguration;
        DbConnection connection = DbFactory.dbConfigSection.DbConnections.Connections[DbFactory.dbConfigSection.DbConnections.DefaultConnection];
        BaseDbHelper baseDbHelper;
        switch (connection.Provider)
        {
          case "MSSQL":
            baseDbHelper = (BaseDbHelper) new MSSQLHelper();
            break;
          case "Oracle":
            baseDbHelper = (BaseDbHelper) new MSSQLHelper();
            break;
          default:
            throw new HADataException("", "The data base type " + connection.Provider + " is not recognized.");
        }
        return baseDbHelper;
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

    private enum DbType
    {
      MSSQL,
      Oracle,
      MySql,
      Postgre,
    }
  }
}
