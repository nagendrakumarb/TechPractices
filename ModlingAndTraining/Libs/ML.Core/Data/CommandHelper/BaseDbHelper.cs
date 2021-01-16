// Decompiled with JetBrains decompiler
// Type: MachineLearning.Data.CommandHelper.BaseDbHelper
// Assembly: ML.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 8665DF82-FF26-467F-B5DB-E30D7FB365C9
// Assembly location: F:\OneDrive\Other\Practice\DataModeling\App\bin\ML.Core.dll

using ML.Core.Exception;
using System.Data;
using System.Data.Common;

namespace MachineLearning.Data.CommandHelper
{
  public abstract class BaseDbHelper
  {
    private bool fromConfig = false;
    private DbConnection connection;
    private string connectionString;
    protected DbCommand command;

    public BaseDbHelper()
    {
      this.fromConfig = true;
      this.connectionString = this.getDbConnection();
      this.connection = this.getDbConnection(this.connectionString, this.fromConfig);
    }

    public BaseDbHelper(string connectionString)
    {
      this.fromConfig = false;
      this.connectionString = connectionString;
      this.connection = this.getDbConnection(connectionString, this.fromConfig);
    }

    protected abstract string getDbConnection();

    protected abstract bool validateConnection(string connectionString);

    protected abstract DbConnection getDbConnection(
      string connectionString,
      bool fromConfig);

    protected abstract DbCommand createCommand(string query, QueryType queryType);

    protected abstract DbDataAdapter getDataAdapter(DbCommand cmd);

    protected abstract DbCommand onSetParameters(
      DbCommand cmd,
      QueryParameter[] paramCollection);

    public int ExecuteNonQuery(QueryType queryType, string query, QueryParameter[] paramCollection)
    {
      DbTransaction dbTransaction = (DbTransaction) null;
      try
      {
        DbCommand dbCommand = this.setParameters(this.getCommand(query, queryType, false), paramCollection);
        dbTransaction = dbCommand.Connection.BeginTransaction(IsolationLevel.Unspecified);
        dbCommand.Transaction = dbTransaction;
        int num = dbCommand.ExecuteNonQuery();
        int index = 0;
        foreach (DbParameter parameter in dbCommand.Parameters)
        {
          if (parameter.Direction == ParameterDirection.Output)
            paramCollection[index].Value = parameter.Value;
          ++index;
        }
        dbTransaction.Commit();
        return num;
      }
      catch (System.Exception ex)
      {
        if (null != dbTransaction)
          dbTransaction.Rollback();
        throw new HADataException(ex.Message);
      }
      finally
      {
        if (null != this.connection && this.connection.State != ConnectionState.Closed)
          this.connection.Close();
      }
    }

    public int ExecuteNonQuery(QueryType queryType, string query)
    {
      DbTransaction dbTransaction = (DbTransaction) null;
      try
      {
        DbCommand command = this.getCommand(query, queryType, false);
        dbTransaction = command.Connection.BeginTransaction(IsolationLevel.Unspecified);
        command.Transaction = dbTransaction;
        int num = command.ExecuteNonQuery();
        dbTransaction.Commit();
        return num;
      }
      catch (System.Exception ex)
      {
        if (null != dbTransaction)
          dbTransaction.Rollback();
        throw new HADataException(ex.Message);
      }
      finally
      {
        if (null != this.connection && this.connection.State != ConnectionState.Closed)
          this.connection.Close();
      }
    }

    public int ExecuteNonQuery(string query)
    {
      DbTransaction dbTransaction = (DbTransaction) null;
      try
      {
        DbCommand command = this.getCommand(query, QueryType.Text, false);
        dbTransaction = command.Connection.BeginTransaction(IsolationLevel.Unspecified);
        command.Transaction = dbTransaction;
        int num = command.ExecuteNonQuery();
        dbTransaction.Commit();
        return num;
      }
      catch (System.Exception ex)
      {
        if (null != dbTransaction)
          dbTransaction.Rollback();
        throw new HADataException(ex.Message);
      }
      finally
      {
        if (null != this.connection && this.connection.State != ConnectionState.Closed)
          this.connection.Close();
      }
    }

    public DataSet ExecuteQuery(
      QueryType queryType,
      string query,
      QueryParameter[] paramCollection)
    {
      try
      {
        DbCommand cmd = this.setParameters(this.getCommand(query, queryType, false), paramCollection);
        DataSet dataSet = new DataSet();
        this.getDataAdapter(cmd).Fill(dataSet, "Table1");
        return dataSet;
      }
      catch (System.Exception ex)
      {
        throw new HADataException(ex.Message);
      }
      finally
      {
        if (null != this.connection && this.connection.State != ConnectionState.Closed)
          this.connection.Close();
      }
    }

    public DataSet ExecuteQuery(QueryType queryType, string query)
    {
      try
      {
        DbCommand command = this.getCommand(query, queryType, false);
        DataSet dataSet = new DataSet();
        this.getDataAdapter(command).Fill(dataSet, "Table1");
        return dataSet;
      }
      catch (System.Exception ex)
      {
        throw new HADataException(ex.Message);
      }
      finally
      {
        if (null != this.connection && this.connection.State != ConnectionState.Closed)
          this.connection.Close();
      }
    }

    public DataSet ExecuteQuery(string query)
    {
      try
      {
        DbCommand command = this.getCommand(query, QueryType.Text, false);
        DataSet dataSet = new DataSet();
        this.getDataAdapter(command).Fill(dataSet, "Table1");
        return dataSet;
      }
      catch (System.Exception ex)
      {
        throw new HADataException(ex.Message);
      }
      finally
      {
        if (null != this.connection && this.connection.State != ConnectionState.Closed)
          this.connection.Close();
      }
    }

    public DbDataReader ExecuteReader(
      QueryType queryType,
      string query,
      QueryParameter[] paramCollection)
    {
      try
      {
        return this.setParameters(this.getCommand(query, queryType, true), paramCollection).ExecuteReader();
      }
      catch (System.Exception ex)
      {
        throw new HADataException(ex.Message);
      }
    }

    public DbDataReader ExecuteReader(QueryType queryType, string query)
    {
      try
      {
        return this.getCommand(query, queryType, true).ExecuteReader();
      }
      catch (System.Exception ex)
      {
        throw new HADataException(ex.Message);
      }
    }

    public DbDataReader ExecuteReader(string query)
    {
      try
      {
        return this.getCommand(query, QueryType.Text, true).ExecuteReader();
      }
      catch (System.Exception ex)
      {
        throw new HADataException(ex.Message);
      }
    }

    public object ExecuteScalar(
      QueryType queryType,
      string query,
      QueryParameter[] paramCollection)
    {
      try
      {
        return this.setParameters(this.getCommand(query, queryType, false), paramCollection).ExecuteScalar();
      }
      catch (System.Exception ex)
      {
        throw new HADataException(ex.Message);
      }
      finally
      {
        if (null != this.connection && this.connection.State != ConnectionState.Closed)
          this.connection.Close();
      }
    }

    public object ExecuteScalar(QueryType queryType, string query)
    {
      try
      {
        return this.getCommand(query, queryType, false).ExecuteScalar();
      }
      catch (System.Exception ex)
      {
        throw new HADataException(ex.Message);
      }
      finally
      {
        if (null != this.connection && this.connection.State != ConnectionState.Closed)
          this.connection.Close();
      }
    }

    public object ExecuteScalar(string query)
    {
      try
      {
        return this.getCommand(query, QueryType.Text, false).ExecuteScalar();
      }
      catch (System.Exception ex)
      {
        throw new HADataException(ex.Message);
      }
      finally
      {
        if (null != this.connection && this.connection.State != ConnectionState.Closed)
          this.connection.Close();
      }
    }

    private DbCommand getCommand(string query, QueryType queryType, bool createConn = false)
    {
      try
      {
        if (createConn)
        {
          DbCommand command = this.createCommand(query, queryType);
          DbConnection dbConnection = this.getDbConnection(this.connectionString, this.fromConfig);
          command.Connection = dbConnection;
          command.Connection.Open();
          return command;
        }
        this.command = this.createCommand(query, queryType);
        if (this.connection.State != ConnectionState.Open)
          this.connection.Open();
        this.command.Connection = this.connection;
        return this.command;
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

    private DbCommand setParameters(DbCommand cmd, QueryParameter[] paramCollection)
    {
      try
      {
        return this.onSetParameters(cmd, paramCollection);
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
