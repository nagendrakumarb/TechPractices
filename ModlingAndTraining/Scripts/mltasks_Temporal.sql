/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2000)
    Source Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2019
    Target Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Target Database Engine Type : Standalone SQL Server
*/

/****** Object:  Trigger [tr_ml_ScheduledTask]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP TRIGGER IF EXISTS [dbo].[tr_ml_ScheduledTask]
GO
/****** Object:  Trigger [tr_ml_QueuedTask]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP TRIGGER IF EXISTS [dbo].[tr_ml_QueuedTask]
GO
/****** Object:  Trigger [tr_ml_Log]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP TRIGGER IF EXISTS [dbo].[tr_ml_Log]
GO
/****** Object:  Trigger [tr_ml_ExecuteTask]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP TRIGGER IF EXISTS [dbo].[tr_ml_ExecuteTask]
GO
/****** Object:  Trigger [tr_ml_CompletedTask]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP TRIGGER IF EXISTS [dbo].[tr_ml_CompletedTask]
GO
/****** Object:  StoredProcedure [dbo].[usp_usp_ml_GetTasklistByProperty]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_usp_ml_GetTasklistByProperty]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_VerifyAndUpdateWebTaskStatus]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_VerifyAndUpdateWebTaskStatus]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_UpdateScheduledTask]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_UpdateScheduledTask]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_UpdateRunningJobs]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_UpdateRunningJobs]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_UpdateRegisteredTaskService]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_UpdateRegisteredTaskService]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_UpdateQueuedTask]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_UpdateQueuedTask]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_TruncateTasks]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_TruncateTasks]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_SuspendRegisteredTaskService]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_SuspendRegisteredTaskService]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_ResumeRegisteredTaskService]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_ResumeRegisteredTaskService]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_ResetServerComponents]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_ResetServerComponents]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_RemoveScheduledQueuedTask]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_RemoveScheduledQueuedTask]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_RegisterTaskService_Old]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_RegisterTaskService_Old]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_RegisterTaskService]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_RegisterTaskService]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_IsTaskTypeRegistered]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_IsTaskTypeRegistered]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_IsTaskTypeJobsInProcess]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_IsTaskTypeJobsInProcess]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_IsTaskInProcess]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_IsTaskInProcess]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_IsTaskExists]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_IsTaskExists]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_GetUnregisteredTasks]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_GetUnregisteredTasks]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_GetTaskStatusDetails]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_GetTaskStatusDetails]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_GetTaskStatus]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_GetTaskStatus]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_GetTaskProcessorType]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_GetTaskProcessorType]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_GetTaskObjectType]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_GetTaskObjectType]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_GetTaskObjectSchema]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_GetTaskObjectSchema]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_GetTasklist]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_GetTasklist]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_GetTaskdataById]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_GetTaskdataById]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_GetTaskById]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_GetTaskById]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_GetSchedulerStatus]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_GetSchedulerStatus]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_GetScheduledTaskTypenExtSlotTime]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_GetScheduledTaskTypenExtSlotTime]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_GetScheduledTasklist]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_GetScheduledTasklist]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_GetScheduledTaskById]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_GetScheduledTaskById]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_GetRegisteredTasks]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_GetRegisteredTasks]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_GetRegisteredTaskImplementationType]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_GetRegisteredTaskImplementationType]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_GetRegisteredSuspendedTasks]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_GetRegisteredSuspendedTasks]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_DeleteTask]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_DeleteTask]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_DeleteScheduledTask]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_DeleteScheduledTask]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_DeleteRegisteredTaskService]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_DeleteRegisteredTaskService]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_DeleteexipiredScheduledTasks]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_DeleteexipiredScheduledTasks]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_CheckDuplicateTaskInQueue]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_CheckDuplicateTaskInQueue]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_AddTaskToQueue]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_AddTaskToQueue]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_AddScheduledTaskToQueueOld]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_AddScheduledTaskToQueueOld]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_AddScheduledTaskToQueue]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_AddScheduledTaskToQueue]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_AddAuditRecord]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_AddAuditRecord]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_AbortScheduledTask]    Script Date: 1/3/2021 1:27:42 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[usp_ml_AbortScheduledTask]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ml_ServerQueues]') AND type in (N'U'))
ALTER TABLE [dbo].[ml_ServerQueues] DROP CONSTRAINT IF EXISTS [dfml_ServerQueuesTimeStamp]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ml_Registration]') AND type in (N'U'))
ALTER TABLE [dbo].[ml_Registration] DROP CONSTRAINT IF EXISTS [dfml_RegistrationWaitOneTimeout]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ml_Registration]') AND type in (N'U'))
ALTER TABLE [dbo].[ml_Registration] DROP CONSTRAINT IF EXISTS [dfml_RegistrationIsQueueable]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ml_Registration]') AND type in (N'U'))
ALTER TABLE [dbo].[ml_Registration] DROP CONSTRAINT IF EXISTS [dfml_RegistrationIsSchedulable]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ml_Log]') AND type in (N'U'))
ALTER TABLE [dbo].[ml_Log] DROP CONSTRAINT IF EXISTS [dfml_LogTimeStamp]
GO
/****** Object:  Index [queuedTaskidUnique]    Script Date: 1/3/2021 1:27:42 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ml_ScheduledQueuedTasks]') AND type in (N'U'))
ALTER TABLE [dbo].[ml_ScheduledQueuedTasks] DROP CONSTRAINT IF EXISTS [queuedTaskidUnique]
GO
/****** Object:  Table [dbo].[readings]    Script Date: 1/3/2021 1:27:43 PM ******/
DROP TABLE IF EXISTS [dbo].[readings]
GO
/****** Object:  Table [dbo].[ml_TaskprocessorExecResults]    Script Date: 1/3/2021 1:27:43 PM ******/
DROP TABLE IF EXISTS [dbo].[ml_TaskprocessorExecResults]
GO
/****** Object:  Table [dbo].[ml_ServerQueues]    Script Date: 1/3/2021 1:27:43 PM ******/
DROP TABLE IF EXISTS [dbo].[ml_ServerQueues]
GO
/****** Object:  Table [dbo].[ml_ScheduledQueuedTasks]    Script Date: 1/3/2021 1:27:43 PM ******/
DROP TABLE IF EXISTS [dbo].[ml_ScheduledQueuedTasks]
GO
/****** Object:  Table [dbo].[ml_RegistrationUnregistered]    Script Date: 1/3/2021 1:27:43 PM ******/
DROP TABLE IF EXISTS [dbo].[ml_RegistrationUnregistered]
GO
/****** Object:  Table [dbo].[ml_RegistrationProcessorInfo]    Script Date: 1/3/2021 1:27:43 PM ******/
DROP TABLE IF EXISTS [dbo].[ml_RegistrationProcessorInfo]
GO
/****** Object:  Table [dbo].[ml_Registration]    Script Date: 1/3/2021 1:27:43 PM ******/
DROP TABLE IF EXISTS [dbo].[ml_Registration]
GO
/****** Object:  Table [dbo].[ml_QueuedTask]    Script Date: 1/3/2021 1:27:43 PM ******/
DROP TABLE IF EXISTS [dbo].[ml_QueuedTask]
GO
/****** Object:  Table [dbo].[ml_ScheduledTask]    Script Date: 1/3/2021 1:27:43 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ml_ScheduledTask]') AND type in (N'U'))
ALTER TABLE [dbo].[ml_ScheduledTask] SET ( SYSTEM_VERSIONING = OFF  )
GO
/****** Object:  Table [dbo].[ml_ScheduledTask]    Script Date: 1/3/2021 1:27:43 PM ******/
DROP TABLE IF EXISTS [dbo].[ml_ScheduledTask]
GO
/****** Object:  Index [ix_ml_ScheduledTaskHistory]    Script Date: 1/3/2021 1:27:43 PM ******/
DROP INDEX IF EXISTS [ix_ml_ScheduledTaskHistory] ON [dbo].[ml_ScheduledTaskHistory] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[ml_ScheduledTaskHistory]    Script Date: 1/3/2021 1:27:43 PM ******/
DROP TABLE IF EXISTS [dbo].[ml_ScheduledTaskHistory]
GO
/****** Object:  Table [dbo].[ml_Log]    Script Date: 1/3/2021 1:27:43 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ml_Log]') AND type in (N'U'))
ALTER TABLE [dbo].[ml_Log] SET ( SYSTEM_VERSIONING = OFF  )
GO
/****** Object:  Table [dbo].[ml_Log]    Script Date: 1/3/2021 1:27:43 PM ******/
DROP TABLE IF EXISTS [dbo].[ml_Log]
GO
/****** Object:  Index [ix_ml_LogHistory]    Script Date: 1/3/2021 1:27:43 PM ******/
DROP INDEX IF EXISTS [ix_ml_LogHistory] ON [dbo].[ml_LogHistory] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[ml_LogHistory]    Script Date: 1/3/2021 1:27:43 PM ******/
DROP TABLE IF EXISTS [dbo].[ml_LogHistory]
GO
/****** Object:  Table [dbo].[ml_ExecuteTask]    Script Date: 1/3/2021 1:27:43 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ml_ExecuteTask]') AND type in (N'U'))
ALTER TABLE [dbo].[ml_ExecuteTask] SET ( SYSTEM_VERSIONING = OFF  )
GO
/****** Object:  Table [dbo].[ml_ExecuteTask]    Script Date: 1/3/2021 1:27:43 PM ******/
DROP TABLE IF EXISTS [dbo].[ml_ExecuteTask]
GO
/****** Object:  Index [ix_ml_ExecuteTaskHistory]    Script Date: 1/3/2021 1:27:43 PM ******/
DROP INDEX IF EXISTS [ix_ml_ExecuteTaskHistory] ON [dbo].[ml_ExecuteTaskHistory] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[ml_ExecuteTaskHistory]    Script Date: 1/3/2021 1:27:43 PM ******/
DROP TABLE IF EXISTS [dbo].[ml_ExecuteTaskHistory]
GO
/****** Object:  Table [dbo].[ml_CompletedTask]    Script Date: 1/3/2021 1:27:43 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ml_CompletedTask]') AND type in (N'U'))
ALTER TABLE [dbo].[ml_CompletedTask] SET ( SYSTEM_VERSIONING = OFF  )
GO
/****** Object:  Table [dbo].[ml_CompletedTask]    Script Date: 1/3/2021 1:27:43 PM ******/
DROP TABLE IF EXISTS [dbo].[ml_CompletedTask]
GO
/****** Object:  Index [ix_ml_CompletedTaskHistory]    Script Date: 1/3/2021 1:27:43 PM ******/
DROP INDEX IF EXISTS [ix_ml_CompletedTaskHistory] ON [dbo].[ml_CompletedTaskHistory] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[ml_CompletedTaskHistory]    Script Date: 1/3/2021 1:27:43 PM ******/
DROP TABLE IF EXISTS [dbo].[ml_CompletedTaskHistory]
GO
/****** Object:  UserDefinedFunction [dbo].[udf_GetValidDate]    Script Date: 1/3/2021 1:27:43 PM ******/
DROP FUNCTION IF EXISTS [dbo].[udf_GetValidDate]
GO
/****** Object:  UserDefinedFunction [dbo].[udf_GetValidDate]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- author:		<author,,name>
-- create date: <create date, ,>
-- description:	<description, ,>
-- =============================================
Create function [dbo].[udf_GetValidDate]
(
	-- add the parameters for the function here
	@unformatteddatestring nvarchar(max)
)
Returns datetime
As

Begin

  Declare @pos bigint
  Declare @formatteddate datetime 
  
  Select @pos=charindex('.',reverse(@unformatteddatestring),0) 
  
  
  If @pos>3
  Begin
	  Select @unformatteddatestring=substring(@unformatteddatestring,0,len(@unformatteddatestring)-(@pos-3)) 
      
  End
  
   Select @formatteddate=cast(@unformatteddatestring as datetime);
  -- select @formatteddate
   Return @formatteddate
 End
	-- return the result of the function
GO
/****** Object:  Table [dbo].[ml_CompletedTaskHistory]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ml_CompletedTaskHistory](
	[id] [nvarchar](64) NOT NULL,
	[tenantId] [nvarchar](64) NOT NULL,
	[userId] [nvarchar](64) NOT NULL,
	[data] [nvarchar](max) NOT NULL,
	[dataVersion] [nvarchar](50) NOT NULL,
	[TaskName] [nvarchar](50) NOT NULL,
	[processType] [nvarchar](50) NOT NULL,
	[isScheduled] [bit] NOT NULL,
	[status] [nvarchar](100) NOT NULL,
	[queuedTime] [datetime] NULL,
	[processStartTime] [datetime] NULL,
	[processEndTime] [datetime] NULL,
	[checksum] [nvarchar](64) NOT NULL,
	[recentUpdateTime] [datetime] NOT NULL,
	[createdBy] [nvarchar](256) NULL,
	[createdDate] [datetime] NULL,
	[modifiedBy] [nvarchar](256) NULL,
	[modifiedDate] [datetime] NULL,
	[ValidFrom] [datetime2](0) NOT NULL,
	[ValidTo] [datetime2](0) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [ix_ml_CompletedTaskHistory]    Script Date: 1/3/2021 1:27:43 PM ******/
CREATE CLUSTERED INDEX [ix_ml_CompletedTaskHistory] ON [dbo].[ml_CompletedTaskHistory]
(
	[ValidTo] ASC,
	[ValidFrom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ml_CompletedTask]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ml_CompletedTask](
	[id] [nvarchar](64) NOT NULL,
	[tenantId] [nvarchar](64) NOT NULL,
	[userId] [nvarchar](64) NOT NULL,
	[data] [nvarchar](max) NOT NULL,
	[dataVersion] [nvarchar](50) NOT NULL,
	[TaskName] [nvarchar](50) NOT NULL,
	[processType] [nvarchar](50) NOT NULL,
	[isScheduled] [bit] NOT NULL,
	[status] [nvarchar](100) NOT NULL,
	[queuedTime] [datetime] NULL,
	[processStartTime] [datetime] NULL,
	[processEndTime] [datetime] NULL,
	[checksum] [nvarchar](64) NOT NULL,
	[recentUpdateTime] [datetime] NOT NULL,
	[createdBy] [nvarchar](256) NULL,
	[createdDate] [datetime] NULL,
	[modifiedBy] [nvarchar](256) NULL,
	[modifiedDate] [datetime] NULL,
	[ValidFrom] [datetime2](0) GENERATED ALWAYS AS ROW START NOT NULL,
	[ValidTo] [datetime2](0) GENERATED ALWAYS AS ROW END NOT NULL,
 CONSTRAINT [pkml_CompletedTask] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
	PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
WITH
(
SYSTEM_VERSIONING = ON ( HISTORY_TABLE = [dbo].[ml_CompletedTaskHistory] )
)
GO
/****** Object:  Table [dbo].[ml_ExecuteTaskHistory]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ml_ExecuteTaskHistory](
	[id] [numeric](18, 0) NOT NULL,
	[TaskId] [nvarchar](64) NOT NULL,
	[processorName] [nvarchar](500) NOT NULL,
	[status] [nvarchar](100) NOT NULL,
	[processStartTime] [datetime] NULL,
	[processEndTime] [datetime] NULL,
	[recentUpdateTime] [datetime] NOT NULL,
	[ValidFrom] [datetime2](0) NOT NULL,
	[ValidTo] [datetime2](0) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Index [ix_ml_ExecuteTaskHistory]    Script Date: 1/3/2021 1:27:43 PM ******/
CREATE CLUSTERED INDEX [ix_ml_ExecuteTaskHistory] ON [dbo].[ml_ExecuteTaskHistory]
(
	[ValidTo] ASC,
	[ValidFrom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ml_ExecuteTask]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ml_ExecuteTask](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[TaskId] [nvarchar](64) NOT NULL,
	[processorName] [nvarchar](500) NOT NULL,
	[status] [nvarchar](100) NOT NULL,
	[processStartTime] [datetime] NULL,
	[processEndTime] [datetime] NULL,
	[recentUpdateTime] [datetime] NOT NULL,
	[ValidFrom] [datetime2](0) GENERATED ALWAYS AS ROW START NOT NULL,
	[ValidTo] [datetime2](0) GENERATED ALWAYS AS ROW END NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
	PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
) ON [PRIMARY]
WITH
(
SYSTEM_VERSIONING = ON ( HISTORY_TABLE = [dbo].[ml_ExecuteTaskHistory] )
)
GO
/****** Object:  Table [dbo].[ml_LogHistory]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ml_LogHistory](
	[id] [numeric](18, 0) NOT NULL,
	[TaskId] [nvarchar](64) NOT NULL,
	[logType] [nvarchar](50) NOT NULL,
	[methodName] [nvarchar](50) NULL,
	[logMessage] [nvarchar](max) NOT NULL,
	[timeStamp] [datetime] NULL,
	[ValidFrom] [datetime2](0) NOT NULL,
	[ValidTo] [datetime2](0) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [ix_ml_LogHistory]    Script Date: 1/3/2021 1:27:43 PM ******/
CREATE CLUSTERED INDEX [ix_ml_LogHistory] ON [dbo].[ml_LogHistory]
(
	[ValidTo] ASC,
	[ValidFrom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ml_Log]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ml_Log](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[TaskId] [nvarchar](64) NOT NULL,
	[logType] [nvarchar](50) NOT NULL,
	[methodName] [nvarchar](50) NULL,
	[logMessage] [nvarchar](max) NOT NULL,
	[timeStamp] [datetime] NULL,
	[ValidFrom] [datetime2](0) GENERATED ALWAYS AS ROW START NOT NULL,
	[ValidTo] [datetime2](0) GENERATED ALWAYS AS ROW END NOT NULL,
 CONSTRAINT [pkml_Log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
	PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
WITH
(
SYSTEM_VERSIONING = ON ( HISTORY_TABLE = [dbo].[ml_LogHistory] )
)
GO
/****** Object:  Table [dbo].[ml_ScheduledTaskHistory]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ml_ScheduledTaskHistory](
	[id] [nvarchar](64) NOT NULL,
	[tenantId] [nvarchar](64) NOT NULL,
	[userId] [nvarchar](64) NOT NULL,
	[data] [nvarchar](max) NOT NULL,
	[dataVersion] [nvarchar](50) NOT NULL,
	[ScheduleName] [nvarchar](50) NOT NULL,
	[processType] [nvarchar](50) NOT NULL,
	[frequency] [nvarchar](50) NOT NULL,
	[ScheduledTime] [datetime] NOT NULL,
	[status] [nvarchar](100) NOT NULL,
	[lastRunStatus] [nvarchar](100) NULL,
	[startTime] [datetime] NULL,
	[endTime] [datetime] NULL,
	[checksum] [nvarchar](64) NOT NULL,
	[recentUpdateBy] [nvarchar](50) NOT NULL,
	[recentUpdateTime] [datetime] NOT NULL,
	[createdBy] [nvarchar](256) NULL,
	[createdDate] [datetime] NULL,
	[modifiedBy] [nvarchar](256) NULL,
	[modifiedDate] [datetime] NULL,
	[ValidFrom] [datetime2](0) NOT NULL,
	[ValidTo] [datetime2](0) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [ix_ml_ScheduledTaskHistory]    Script Date: 1/3/2021 1:27:43 PM ******/
CREATE CLUSTERED INDEX [ix_ml_ScheduledTaskHistory] ON [dbo].[ml_ScheduledTaskHistory]
(
	[ValidTo] ASC,
	[ValidFrom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ml_ScheduledTask]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ml_ScheduledTask](
	[id] [nvarchar](64) NOT NULL,
	[tenantId] [nvarchar](64) NOT NULL,
	[userId] [nvarchar](64) NOT NULL,
	[data] [nvarchar](max) NOT NULL,
	[dataVersion] [nvarchar](50) NOT NULL,
	[ScheduleName] [nvarchar](50) NOT NULL,
	[processType] [nvarchar](50) NOT NULL,
	[frequency] [nvarchar](50) NOT NULL,
	[ScheduledTime] [datetime] NOT NULL,
	[status] [nvarchar](100) NOT NULL,
	[lastRunStatus] [nvarchar](100) NULL,
	[startTime] [datetime] NULL,
	[endTime] [datetime] NULL,
	[checksum] [nvarchar](64) NOT NULL,
	[recentUpdateBy] [nvarchar](50) NOT NULL,
	[recentUpdateTime] [datetime] NOT NULL,
	[createdBy] [nvarchar](256) NULL,
	[createdDate] [datetime] NULL,
	[modifiedBy] [nvarchar](256) NULL,
	[modifiedDate] [datetime] NULL,
	[ValidFrom] [datetime2](0) GENERATED ALWAYS AS ROW START NOT NULL,
	[ValidTo] [datetime2](0) GENERATED ALWAYS AS ROW END NOT NULL,
 CONSTRAINT [pkml_ScheduledTask] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
	PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
WITH
(
SYSTEM_VERSIONING = ON ( HISTORY_TABLE = [dbo].[ml_ScheduledTaskHistory] )
)
GO
/****** Object:  Table [dbo].[ml_QueuedTask]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ml_QueuedTask](
	[id] [nvarchar](64) NOT NULL,
	[tenantId] [nvarchar](64) NOT NULL,
	[userId] [nvarchar](64) NOT NULL,
	[data] [nvarchar](max) NOT NULL,
	[dataVersion] [nvarchar](50) NOT NULL,
	[TaskName] [nvarchar](50) NOT NULL,
	[processType] [nvarchar](50) NOT NULL,
	[isScheduled] [bit] NOT NULL,
	[status] [nvarchar](100) NOT NULL,
	[queuedTime] [datetime] NULL,
	[processStartTime] [datetime] NULL,
	[processEndTime] [datetime] NULL,
	[checksum] [nvarchar](64) NOT NULL,
	[recentUpdateTime] [datetime] NOT NULL,
	[createdBy] [nvarchar](256) NULL,
	[createdDate] [datetime] NULL,
	[modifiedBy] [nvarchar](256) NULL,
	[modifiedDate] [datetime] NULL,
 CONSTRAINT [pkml_QueuedTask] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ml_Registration]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ml_Registration](
	[id] [nvarchar](64) NOT NULL,
	[TaskType] [nvarchar](64) NOT NULL,
	[implementationType] [nvarchar](50) NOT NULL,
	[url] [nvarchar](512) NULL,
	[TaskVersion] [nvarchar](256) NULL,
	[TaskObjectType] [nvarchar](max) NOT NULL,
	[TaskProcessorType] [nvarchar](max) NULL,
	[TaskObjectSchema] [nvarchar](max) NOT NULL,
	[isActive] [bit] NOT NULL,
	[isSchedulable] [bit] NOT NULL,
	[isQueueable] [bit] NOT NULL,
	[maxJobs] [int] NOT NULL,
	[currentJobs] [int] NOT NULL,
	[methodName] [nvarchar](500) NULL,
	[waitOneTimeout] [numeric](8, 0) NULL,
	[createdBy] [nvarchar](256) NULL,
	[createdDate] [datetime] NULL,
	[modifiedBy] [nvarchar](256) NULL,
	[modifiedDate] [datetime] NULL,
	[platformTarget] [nvarchar](10) NULL,
	[SchedulerManager] [nvarchar](50) NULL,
	[registryConfigValues] [nvarchar](max) NULL,
 CONSTRAINT [pkml_Registration] PRIMARY KEY CLUSTERED 
(
	[TaskType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ml_RegistrationProcessorInfo]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ml_RegistrationProcessorInfo](
	[TaskType] [nvarchar](64) NOT NULL,
	[processorName] [nvarchar](500) NULL,
	[processorBinaryData] [varbinary](max) NOT NULL,
	[version] [nvarchar](256) NOT NULL,
	[createdDate] [datetime] NULL,
	[modifiedDate] [datetime] NULL,
	[platformTarget] [nvarchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ml_RegistrationUnregistered]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ml_RegistrationUnregistered](
	[id] [nvarchar](64) NOT NULL,
	[TaskType] [nvarchar](64) NOT NULL,
	[implementationType] [nvarchar](50) NOT NULL,
	[url] [nvarchar](512) NULL,
	[TaskVersion] [nvarchar](256) NULL,
	[TaskObjectType] [nvarchar](max) NOT NULL,
	[TaskProcessorType] [nvarchar](max) NULL,
	[TaskObjectSchema] [nvarchar](max) NOT NULL,
	[isActive] [bit] NOT NULL,
	[isSchedulable] [bit] NOT NULL,
	[isQueueable] [bit] NOT NULL,
	[maxJobs] [int] NOT NULL,
	[currentJobs] [int] NOT NULL,
	[methodName] [nvarchar](500) NULL,
	[waitOneTimeout] [numeric](8, 0) NULL,
	[createdBy] [nvarchar](256) NULL,
	[createdDate] [datetime] NULL,
	[modifiedBy] [nvarchar](256) NULL,
	[modifiedDate] [datetime] NULL,
	[platformTarget] [nvarchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ml_ScheduledQueuedTasks]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ml_ScheduledQueuedTasks](
	[queuedTaskid] [nvarchar](64) NOT NULL,
	[ScheduledTaskid] [nvarchar](64) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ml_ServerQueues]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ml_ServerQueues](
	[queueId] [nvarchar](64) NOT NULL,
	[ml_ServerGuid] [nvarchar](64) NULL,
	[ml_ServerIpAddress] [nvarchar](64) NULL,
	[timeStamp] [datetime] NULL,
 CONSTRAINT [pkml_ServerQueues] PRIMARY KEY CLUSTERED 
(
	[queueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ml_TaskprocessorExecResults]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ml_TaskprocessorExecResults](
	[TaskId] [nvarchar](64) NOT NULL,
	[isSuccess] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[readings]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[readings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[celsius] [int] NOT NULL,
	[fahrenheit] [float] NULL,
	[test] [float] NULL,
	[test2] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[ml_CompletedTask] ([id], [tenantId], [userId], [data], [dataVersion], [TaskName], [processType], [isScheduled], [status], [queuedTime], [processStartTime], [processEndTime], [checksum], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) 
VALUES (N'122421b2-5b19-41a5-840a-5681a45caaf0', N'1', N'164', N'<simulationengineTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><Schedules xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><trigger><triggertype>time</triggertype><enabled>true</enabled><endboundary>9996-12-31 23:59:59.9999999</endboundary><executiontimelimit>00:00:00</executiontimelimit><id>d6846086-45b9-4789-bd52-cml9c517e82</id><startboundary>2010-12-26 13:20:00</startboundary><delay>00:00:00</delay><repeatTask>00:00:00</repeatTask><repeatTaskduration>00:00:00</repeatTaskduration><daysinterval>1</daysinterval><randomdelay>00:00:00</randomdelay><daysofweek>sunday</daysofweek><monthsofyear>allmonths</monthsofyear><runonlastweekofmonth>false</runonlastweekofmonth><weeksofmonth>firstweek</weeksofmonth><runonlastdayofmonth>false</runonlastdayofmonth><weeksinterval>1</weeksinterval></trigger></Schedules><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">122421b2-5b19-41a5-840a-5681a45caaf0</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">11554</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">546f21d6-10e6-49e3-81f1-a3894ac36148</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">true</isScheduled><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">process1</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">164</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nagendra@ha.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nagendra@ha.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">simulationprocessLocaldevNucleus</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">nagendra kumar</username><appenvironment>simulationprocessLocaldevNucleus</appenvironment><scenarioid>155</scenarioid><processid>4</processid><userlogin>227.127.124.35.122.255.80.176.232.3.185.175.160.149.109</userlogin><emailerimagesurl>http://download.MachineLearning.Com/emailer/images/</emailerimagesurl><xmlfilelocalpath>c:\atg\MachineLearning.Ml\mlgatwayservices\files\simulationengine</xmlfilelocalpath><xmlfilehttppath>http://localhost/mlgatewayservices/files/simulationengine/</xmlfilehttppath></simulationengineTask>', N'1.0', N'process1', N'simulationprocessLocaldevNucleus', 1, N'aborted', CAST(N'2010-12-26T13:36:25.470' AS DateTime), CAST(N'2010-12-26T13:36:25.000' AS DateTime), CAST(N'2010-12-26T13:36:28.000' AS DateTime), N'?]5??
F?Ko|[xj', CAST(N'2010-12-26T13:36:28.000' AS DateTime), N'nagendra kumar', CAST(N'2010-12-26T13:36:25.470' AS DateTime), N'nagendra kumar', 
CAST(N'2010-12-26T13:36:28.000' AS DateTime))
GO
INSERT [dbo].[ml_CompletedTask] ([id], [tenantId], [userId], [data], [dataVersion], [TaskName], [processType], [isScheduled], [status], [queuedTime], [processStartTime], [processEndTime], [checksum], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) VALUES (N'14c05595-a36f-458b-a86b-03fab412d81a', N'1', N'164', N'<simulationengineTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><Schedules xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><trigger><triggertype>time</triggertype><enabled>true</enabled><endboundary>9996-12-31 23:59:59.9999999</endboundary><executiontimelimit>00:00:00</executiontimelimit><id>d6846086-45b9-4789-bd52-cml9c517e82</id><startboundary>2010-12-26 13:20:00</startboundary><delay>00:00:00</delay><repeatTask>00:00:00</repeatTask><repeatTaskduration>00:00:00</repeatTaskduration><daysinterval>1</daysinterval><randomdelay>00:00:00</randomdelay><daysofweek>sunday</daysofweek><monthsofyear>allmonths</monthsofyear><runonlastweekofmonth>false</runonlastweekofmonth><weeksofmonth>firstweek</weeksofmonth><runonlastdayofmonth>false</runonlastdayofmonth><weeksinterval>1</weeksinterval></trigger></Schedules><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">14c05595-a36f-458b-a86b-03fab412d81a</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">11554</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">546f21d6-10e6-49e3-81f1-a3894ac36148</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">true</isScheduled><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">process1</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">164</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nagendra@ha.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nagendra@ha.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">simulationprocessLocaldevNucleus</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">nagendra kumar</username><appenvironment>simulationprocessLocaldevNucleus</appenvironment><scenarioid>155</scenarioid><processid>4</processid><userlogin>227.127.124.35.122.255.80.176.232.3.185.175.160.149.109</userlogin><emailerimagesurl>http://download.MachineLearning.Com/emailer/images/</emailerimagesurl><xmlfilelocalpath>c:\atg\MachineLearning.Ml\mlgatwayservices\files\simulationengine</xmlfilelocalpath><xmlfilehttppath>http://localhost/mlgatewayservices/files/simulationengine/</xmlfilehttppath></simulationengineTask>', N'1.0', N'process1', N'simulationprocessLocaldevNucleus', 1, N'aborted', CAST(N'2010-12-26T13:40:45.453' AS DateTime), CAST(N'2010-12-26T13:40:45.000' AS DateTime), CAST(N'2010-12-26T13:41:36.000' AS DateTime), N'?]5??
F?Ko|[xj', CAST(N'2010-12-26T13:41:36.000' AS DateTime), N'nagendra kumar', CAST(N'2010-12-26T13:40:45.453' AS DateTime), 
N'nagendra kumar', CAST(N'2010-12-26T13:41:36.000' AS DateTime))
GO
INSERT [dbo].[ml_CompletedTask] ([id], [tenantId], [userId], [data], [dataVersion], [TaskName], [processType], [isScheduled], [status], [queuedTime], [processStartTime], [processEndTime], [checksum], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) VALUES (N'19076aa9-907e-459f-97ef-4a18bdebe9ad', N'1', N'164', N'<simulationengineTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><Schedules xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><trigger><triggertype>time</triggertype><enabled>true</enabled><endboundary>9996-12-31 23:59:59.9999999</endboundary><executiontimelimit>00:00:00</executiontimelimit><id>d6846086-45b9-4789-bd52-cml9c517e82</id><startboundary>2010-12-26 13:20:00</startboundary><delay>00:00:00</delay><repeatTask>00:00:00</repeatTask><repeatTaskduration>00:00:00</repeatTaskduration><daysinterval>1</daysinterval><randomdelay>00:00:00</randomdelay><daysofweek>sunday</daysofweek><monthsofyear>allmonths</monthsofyear><runonlastweekofmonth>false</runonlastweekofmonth><weeksofmonth>firstweek</weeksofmonth><runonlastdayofmonth>false</runonlastdayofmonth><weeksinterval>1</weeksinterval></trigger></Schedules><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">19076aa9-907e-459f-97ef-4a18bdebe9ad</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">11554</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">546f21d6-10e6-49e3-81f1-a3894ac36148</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">true</isScheduled><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">process1</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">164</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nagendra@ha.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nagendra@ha.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">simulationprocessLocaldevNucleus</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">nagendra kumar</username><appenvironment>simulationprocessLocaldevNucleus</appenvironment><scenarioid>155</scenarioid><processid>4</processid><userlogin>227.127.124.35.122.255.80.176.232.3.185.175.160.149.109</userlogin><emailerimagesurl>http://download.MachineLearning.Com/emailer/images/</emailerimagesurl><xmlfilelocalpath>c:\atg\MachineLearning.Ml\mlgatwayservices\files\simulationengine</xmlfilelocalpath><xmlfilehttppath>http://localhost/mlgatewayservices/files/simulationengine/</xmlfilehttppath></simulationengineTask>', N'1.0', N'process1', N'simulationprocessLocaldevNucleus', 1, N'aborted', CAST(N'2010-12-26T13:35:29.910' AS DateTime), CAST(N'2010-12-26T13:35:29.000' AS DateTime), CAST(N'2010-12-26T13:35:32.000' AS DateTime), N'?]5??
F?Ko|[xj', CAST(N'2010-12-26T13:35:32.000' AS DateTime), N'nagendra kumar', CAST(N'2010-12-26T13:35:29.910' AS DateTime),
N'nagendra kumar', CAST(N'2010-12-26T13:35:32.000' AS DateTime))
GO
INSERT [dbo].[ml_CompletedTask] ([id], [tenantId], [userId], [data], [dataVersion], [TaskName], [processType], [isScheduled], [status], [queuedTime], [processStartTime], [processEndTime], [checksum], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) VALUES (N'32dd24c7-8ec0-4065-ae00-4bd16ded564c', N'1', N'164', N'<simulationengineTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><Schedules xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><trigger><triggertype>time</triggertype><enabled>true</enabled><endboundary>9996-12-31 23:59:59.9999999</endboundary><executiontimelimit>00:00:00</executiontimelimit><id>d6846086-45b9-4789-bd52-cml9c517e82</id><startboundary>2010-12-26 13:20:00</startboundary><delay>00:00:00</delay><repeatTask>00:00:00</repeatTask><repeatTaskduration>00:00:00</repeatTaskduration><daysinterval>1</daysinterval><randomdelay>00:00:00</randomdelay><daysofweek>sunday</daysofweek><monthsofyear>allmonths</monthsofyear><runonlastweekofmonth>false</runonlastweekofmonth><weeksofmonth>firstweek</weeksofmonth><runonlastdayofmonth>false</runonlastdayofmonth><weeksinterval>1</weeksinterval></trigger></Schedules><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">32dd24c7-8ec0-4065-ae00-4bd16ded564c</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">11554</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">546f21d6-10e6-49e3-81f1-a3894ac36148</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">true</isScheduled><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">process1</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">164</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nagendra@ha.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nagendra@ha.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">simulationprocessLocaldevNucleus</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">nagendra kumar</username><appenvironment>simulationprocessLocaldevNucleus</appenvironment><scenarioid>155</scenarioid><processid>4</processid><userlogin>227.127.124.35.122.255.80.176.232.3.185.175.160.149.109</userlogin><emailerimagesurl>http://download.MachineLearning.Com/emailer/images/</emailerimagesurl><xmlfilelocalpath>c:\atg\MachineLearning.Ml\mlgatwayservices\files\simulationengine</xmlfilelocalpath><xmlfilehttppath>http://localhost/mlgatewayservices/files/simulationengine/</xmlfilehttppath></simulationengineTask>', N'1.0', N'process1', N'simulationprocessLocaldevNucleus', 1, N'aborted', CAST(N'2010-12-26T13:41:43.673' AS DateTime), CAST(N'2010-12-26T13:41:43.000' AS DateTime), CAST(N'2010-12-26T13:43:44.000' AS DateTime), N'?]5??
F?Ko|[xj', CAST(N'2010-12-26T13:43:44.000' AS DateTime), N'nagendra kumar', CAST(N'2010-12-26T13:41:43.673' AS DateTime),
N'nagendra kumar', CAST(N'2010-12-26T13:43:44.000' AS DateTime))
GO
INSERT [dbo].[ml_CompletedTask] ([id], [tenantId], [userId], [data], [dataVersion], [TaskName], [processType], [isScheduled], [status], [queuedTime], [processStartTime], [processEndTime], [checksum], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) VALUES (N'613f806d-dc95-4944-838f-c7152b01c889', N'1', N'164', N'<simulationengineTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><Schedules xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><trigger><triggertype>time</triggertype><enabled>true</enabled><endboundary>9996-12-31 23:59:59.9999999</endboundary><executiontimelimit>00:00:00</executiontimelimit><id>d6846086-45b9-4789-bd52-cml9c517e82</id><startboundary>2010-12-26 13:20:00</startboundary><delay>00:00:00</delay><repeatTask>00:00:00</repeatTask><repeatTaskduration>00:00:00</repeatTaskduration><daysinterval>1</daysinterval><randomdelay>00:00:00</randomdelay><daysofweek>sunday</daysofweek><monthsofyear>allmonths</monthsofyear><runonlastweekofmonth>false</runonlastweekofmonth><weeksofmonth>firstweek</weeksofmonth><runonlastdayofmonth>false</runonlastdayofmonth><weeksinterval>1</weeksinterval></trigger></Schedules><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">613f806d-dc95-4944-838f-c7152b01c889</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">11554</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">546f21d6-10e6-49e3-81f1-a3894ac36148</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">true</isScheduled><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">process1</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">164</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nagendra@ha.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nagendra@ha.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">simulationprocessLocaldevNucleus</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">nagendra kumar</username><appenvironment>simulationprocessLocaldevNucleus</appenvironment><scenarioid>155</scenarioid><processid>4</processid><userlogin>227.127.124.35.122.255.80.176.232.3.185.175.160.149.109</userlogin><emailerimagesurl>http://download.MachineLearning.Com/emailer/images/</emailerimagesurl><xmlfilelocalpath>c:\atg\MachineLearning.Ml\mlgatwayservices\files\simulationengine</xmlfilelocalpath><xmlfilehttppath>http://localhost/mlgatewayservices/files/simulationengine/</xmlfilehttppath></simulationengineTask>', N'1.0', N'process1', N'simulationprocessLocaldevNucleus', 1, N'completed', CAST(N'2010-12-26T13:37:41.827' AS DateTime), CAST(N'2010-12-26T13:38:01.000' AS DateTime), CAST(N'2010-12-26T13:40:28.000' AS DateTime), N'?]5??
F?Ko|[xj', CAST(N'2010-12-26T13:40:28.000' AS DateTime), N'nagendra kumar', CAST(N'2010-12-26T13:37:41.827' AS DateTime), N'nagendra kumar', 
CAST(N'2010-12-26T13:40:28.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ml_ExecuteTask] ON 
GO
INSERT [dbo].[ml_ExecuteTask] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) VALUES (CAST(1820 AS Numeric(18, 0)), N'﻿19076aa9-907e-459f-97ef-4a18bdebe9ad', N'MachineLearning.Simulationengine.Task.SimulationengineTaskprocessor', N'aborted', CAST(N'2010-12-26T13:35:29.997' AS DateTime), CAST(N'2010-12-26T13:35:32.000' AS DateTime), CAST(N'2010-12-26T13:35:32.000' AS DateTime))
GO
INSERT [dbo].[ml_ExecuteTask] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) VALUES (CAST(1821 AS Numeric(18, 0)), N'﻿122421b2-5b19-41a5-840a-5681a45caaf0', N'MachineLearning.Simulationengine.Task.SimulationengineTaskprocessor', N'aborted', CAST(N'2010-12-26T13:36:25.573' AS DateTime), CAST(N'2010-12-26T13:36:28.000' AS DateTime), CAST(N'2010-12-26T13:36:28.000' AS DateTime))
GO
INSERT [dbo].[ml_ExecuteTask] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) VALUES (CAST(1822 AS Numeric(18, 0)), N'﻿613f806d-dc95-4944-838f-c7152b01c889', N'MachineLearning.Simulationengine.Task.SimulationengineTaskprocessor', N'aborted', CAST(N'2010-12-26T13:38:19.897' AS DateTime), CAST(N'2010-12-26T13:39:52.000' AS DateTime), CAST(N'2010-12-26T13:39:52.000' AS DateTime))
GO
INSERT [dbo].[ml_ExecuteTask] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) VALUES (CAST(1824 AS Numeric(18, 0)), N'﻿14c05595-a36f-458b-a86b-03fab412d81a', N'MachineLearning.Simulationengine.Task.SimulationengineTaskprocessor', N'aborted', CAST(N'2010-12-26T13:40:53.037' AS DateTime), CAST(N'2010-12-26T13:41:34.000' AS DateTime), CAST(N'2010-12-26T13:41:34.000' AS DateTime))
GO
INSERT [dbo].[ml_ExecuteTask] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) VALUES (CAST(1825 AS Numeric(18, 0)), N'﻿32dd24c7-8ec0-4065-ae00-4bd16ded564c', N'MachineLearning.Simulationengine.Task.SimulationengineTaskprocessor', N'aborted', CAST(N'2010-12-26T13:41:50.033' AS DateTime), CAST(N'2010-12-26T13:43:39.000' AS DateTime), CAST(N'2010-12-26T13:43:39.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ml_ExecuteTask] OFF
GO
INSERT [dbo].[ml_QueuedTask] ([id], [tenantId], [userId], [data], [dataVersion], [TaskName], [processType], [isScheduled], [status], [queuedTime], [processStartTime], [processEndTime], [checksum], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) VALUES (N'70fd4cc2-bad2-4edc-9c57-d4bc59fbf5fe', N'1', N'164', N'<simulationengineTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><Schedules xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><trigger><triggertype>time</triggertype><enabled>true</enabled><endboundary>9996-12-31 23:59:59.9999999</endboundary><executiontimelimit>00:00:00</executiontimelimit><id>d6846086-45b9-4789-bd52-cml9c517e82</id><startboundary>2010-12-26 13:20:00</startboundary><delay>00:00:00</delay><repeatTask>00:00:00</repeatTask><repeatTaskduration>00:00:00</repeatTaskduration><daysinterval>1</daysinterval><randomdelay>00:00:00</randomdelay><daysofweek>sunday</daysofweek><monthsofyear>allmonths</monthsofyear><runonlastweekofmonth>false</runonlastweekofmonth><weeksofmonth>firstweek</weeksofmonth><runonlastdayofmonth>false</runonlastdayofmonth><weeksinterval>1</weeksinterval></trigger></Schedules><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">70fd4cc2-bad2-4edc-9c57-d4bc59fbf5fe</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">11554</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">546f21d6-10e6-49e3-81f1-a3894ac36148</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">true</isScheduled><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">process1</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">164</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nagendra@ha.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nagendra@ha.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">simulationprocessLocaldevNucleus</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">nagendra kumar</username><appenvironment>simulationprocessLocaldevNucleus</appenvironment><scenarioid>155</scenarioid><processid>4</processid><userlogin>227.127.124.35.122.255.80.176.232.3.185.175.160.149.109</userlogin><emailerimagesurl>http://download.MachineLearning.Com/emailer/images/</emailerimagesurl><xmlfilelocalpath>c:\atg\MachineLearning.Ml\mlgatwayservices\files\simulationengine</xmlfilelocalpath><xmlfilehttppath>http://localhost/mlgatewayservices/files/simulationengine/</xmlfilehttppath></simulationengineTask>', N'1.0', N'process1', N'simulationprocessLocaldevNucleus', 1, N'processStarted', CAST(N'2010-12-26T13:44:08.537' AS DateTime), CAST(N'2010-12-26T13:44:08.000' AS DateTime), NULL, N'?]5??
F?Ko|[xj', CAST(N'2010-12-26T13:44:08.000' AS DateTime), N'nagendra kumar', CAST(N'2010-12-26T13:44:08.537' AS DateTime), N'nagendra kumar', CAST(N'2010-12-26T13:44:08.000' AS DateTime))
GO
INSERT [dbo].[ml_Registration] ([id], [TaskType], [implementationType], [url], [TaskVersion], [TaskObjectType], [TaskProcessorType], [TaskObjectSchema], [isActive], [isSchedulable], [isQueueable], [maxJobs], [currentJobs], [methodName], [waitOneTimeout], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [platformTarget], [SchedulerManager], [registryConfigValues]) VALUES (N'cc41e2b7-290e-4bf5-8ab4-c974638ad4f7', N'myTask', N'inProc', N' ', N'1.0', N'MachineLearning.Ml.Tasks.SampleTasks.MathTasks.Dll |_|MachineLearning.Ml.Tasks.SampleTasks.MathTask', N'MachineLearning.Ml.Tasks.SampleTasks.Dll|_|MachineLearning.Ml.Tasks.SampleTasks.SampleTaskprocessor|_|MachineLearning.Ml.Tasks.SampleTasks.MathTasks.Dll|_|MachineLearning.Ml.Tasks.SampleTasks.MathTaskprocessor', N'<xs:schema xmlns:xs="Http://www.W3.Org/2001/xmlschema" elementformdefault="Qualified"><xs:import namespace="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><xs:element name="MathTask" nillable="True" type="MathTask" /><xs:complextype name="MathTask"><xs:complexcontent mixed="False"><xs:extension xmlns:q1="Http://www.MachineLearning.Com/ml/baseTaskdata/" base="Q1:baseTaskdata"><xs:sequence><xs:element minoccurs="1" maxoccurs="1" name="Value1" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Value2" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Sid" type="Xs:int" /><xs:element minoccurs="0" maxoccurs="1" name="Tid" type="Xs:string" /></xs:sequence></xs:extension></xs:complexcontent></xs:complextype></xs:schema>', 1, 1, 1, 5, 0, NULL, CAST(10 AS Numeric(8, 0)), N'', CAST(N'2010-11-29T14:06:02.337' AS DateTime), N'', CAST(N'2010-11-29T14:06:02.337' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[ml_Registration] ([id], [TaskType], [implementationType], [url], [TaskVersion], [TaskObjectType], [TaskProcessorType], [TaskObjectSchema], [isActive], [isSchedulable], [isQueueable], [maxJobs], [currentJobs], [methodName], [waitOneTimeout], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [platformTarget], [SchedulerManager], [registryConfigValues]) VALUES (N'1a492122-0e29-48c4-9d82-f3512fe48638', N'myTask_1', N'inProc', N'', N'1.0', N'MachineLearning.Ml.Tasks.SampleTasks.MathTasks.Dll |_|MachineLearning.Ml.Tasks.SampleTasks.MathTask', N'MachineLearning.Ml.Tasks.SampleTasks.MathTasks.Dll|_|MachineLearning.Ml.Tasks.SampleTasks.MathTaskprocessor|_|MachineLearning.Ml.Tasks.SampleTasks.Dll|_|MachineLearning.Ml.Tasks.SampleTasks.SampleTaskprocessor', N'<Taskobjectschema><xs:schema xmlns:xs="Http://www.W3.Org/2001/xmlschema" elementformdefault="Qualified"><xs:import namespace="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><xs:element name="MathTask" nillable="True" type="MathTask" /><xs:complextype name="MathTask"><xs:complexcontent mixed="False"><xs:extension xmlns:q1="Http://www.MachineLearning.Com/ml/baseTaskdata/" base="Q1:baseTaskdata"><xs:sequence><xs:element minoccurs="1" maxoccurs="1" name="Value1" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Value2" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Sid" type="Xs:int" /><xs:element minoccurs="0" maxoccurs="1" name="Tid" type="Xs:string" /></xs:sequence></xs:extension></xs:complexcontent></xs:complextype></xs:schema></Taskobjectschema>', 1, 1, 1, 5, 0, NULL, CAST(10 AS Numeric(8, 0)), N'', CAST(N'2001-01-01T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ml_Registration] ([id], [TaskType], [implementationType], [url], [TaskVersion], [TaskObjectType], [TaskProcessorType], [TaskObjectSchema], [isActive], [isSchedulable], [isQueueable], [maxJobs], [currentJobs], [methodName], [waitOneTimeout], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [platformTarget], [SchedulerManager], [registryConfigValues]) VALUES (N'f93416cd-8137-4efb-bcf9-c57af3396c1a', N'myTask_2', N'inProc', N' ', N'2.0', N'MachineLearning.Ml.Tasks.SampleTasks.MathTasks.Dll |_|MachineLearning.Ml.Tasks.SampleTasks.MathTask', N'MachineLearning.Ml.Tasks.SampleTasks.MathTasks.Dll|_|MachineLearning.Ml.Tasks.SampleTasks.MathTaskprocessor|_|MachineLearning.Ml.Tasks.SampleTasks.Dll|_|MachineLearning.Ml.Tasks.SampleTasks.SampleTaskprocessor', N'<xs:schema xmlns:xs="Http://www.W3.Org/2001/xmlschema" elementformdefault="Qualified"><xs:import namespace="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><xs:element name="MathTask" nillable="True" type="MathTask" /><xs:complextype name="MathTask"><xs:complexcontent mixed="False"><xs:extension xmlns:q1="Http://www.MachineLearning.Com/ml/baseTaskdata/" base="Q1:baseTaskdata"><xs:sequence><xs:element minoccurs="1" maxoccurs="1" name="Value1" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Value2" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Sid" type="Xs:int" /><xs:element minoccurs="0" maxoccurs="1" name="Tid" type="Xs:string" /></xs:sequence></xs:extension></xs:complexcontent></xs:complextype></xs:schema>', 1, 1, 1, 5, 0, NULL, CAST(10 AS Numeric(8, 0)), N'', CAST(N'2010-12-08T07:52:53.340' AS DateTime), N'', CAST(N'2010-12-08T07:52:53.340' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[ml_Registration] ([id], [TaskType], [implementationType], [url], [TaskVersion], [TaskObjectType], [TaskProcessorType], [TaskObjectSchema], [isActive], [isSchedulable], [isQueueable], [maxJobs], [currentJobs], [methodName], [waitOneTimeout], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [platformTarget], [SchedulerManager], [registryConfigValues]) VALUES (N'8bfee9f2-971a-45ed-a24d-56b44feba774', N'simulationprocessLocaldevNucleus', N'inProc', N' ', N'1.0', N'MachineLearning.Simulationengine.Task.Dll |_|MachineLearning.Simulationengine.Task.SimulationengineTask', N'MachineLearning.Simulationengine.Task.Dll|_|MachineLearning.Simulationengine.Task.SimulationengineTaskprocessor', N'<xs:schema xmlns:xs="Http://www.W3.Org/2001/xmlschema" elementformdefault="Qualified"><xs:import namespace="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><xs:element name="SimulationengineTask" nillable="True" type="SimulationengineTask" /><xs:complextype name="SimulationengineTask"><xs:complexcontent mixed="False"><xs:extension xmlns:q1="Http://www.MachineLearning.Com/ml/baseTaskdata/" base="Q1:baseTaskdata"><xs:sequence><xs:element minoccurs="0" maxoccurs="1" name="Appenvironment" type="Xs:string" /><xs:element minoccurs="1" maxoccurs="1" name="Scenarioid" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Processid" type="Xs:int" /><xs:element minoccurs="0" maxoccurs="1" name="Userlogin" type="Xs:string" /><xs:element minoccurs="0" maxoccurs="1" name="Emailerimagesurl" type="Xs:string" /><xs:element minoccurs="0" maxoccurs="1" name="Xmlfilelocalpath" type="Xs:string" /><xs:element minoccurs="0" maxoccurs="1" name="Xmlfilehttppath" type="Xs:string" /></xs:sequence></xs:extension></xs:complexcontent></xs:complextype></xs:schema>', 1, 1, 1, 5, 1, NULL, CAST(10 AS Numeric(8, 0)), N'', CAST(N'2010-12-26T13:11:55.353' AS DateTime), N'', CAST(N'2010-12-26T13:11:55.353' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[ml_RegistrationUnregistered] ([id], [TaskType], [implementationType], [url], [TaskVersion], [TaskObjectType], [TaskProcessorType], [TaskObjectSchema], [isActive], [isSchedulable], [isQueueable], [maxJobs], [currentJobs], [methodName], [waitOneTimeout], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [platformTarget]) VALUES (N'8dc8344a-3e12-4f07-8926-32319b2d11cd', N'Taskregistry', N'inProc', N' ', N'', N'MachineLearning.Ml.Tasks.SampleTasks.MathTasks.Dll |_|MachineLearning.Ml.Tasks.SampleTasks.MathTask', N'MachineLearning.Ml.Tasks.SampleTasks.Dll|_|MachineLearning.Ml.Tasks.SampleTasks.SampleTaskprocessor', N'<xs:schema xmlns:xs="Http://www.W3.Org/2001/xmlschema" elementformdefault="Qualified"><xs:import namespace="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><xs:element name="MathTask" nillable="True" type="MathTask" /><xs:complextype name="MathTask"><xs:complexcontent mixed="False"><xs:extension xmlns:q1="Http://www.MachineLearning.Com/ml/baseTaskdata/" base="Q1:baseTaskdata"><xs:sequence><xs:element minoccurs="1" maxoccurs="1" name="Value1" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Value2" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Sid" type="Xs:int" /><xs:element minoccurs="0" maxoccurs="1" name="Tid" type="Xs:string" /></xs:sequence></xs:extension></xs:complexcontent></xs:complextype></xs:schema>', 1, 1, 1, 5, 0, NULL, CAST(10 AS Numeric(8, 0)), N'', CAST(N'2010-11-26T11:57:56.230' AS DateTime), N'', CAST(N'2010-11-26T11:57:56.230' AS DateTime), NULL)
GO
INSERT [dbo].[ml_RegistrationUnregistered] ([id], [TaskType], [implementationType], [url], [TaskVersion], [TaskObjectType], [TaskProcessorType], [TaskObjectSchema], [isActive], [isSchedulable], [isQueueable], [maxJobs], [currentJobs], [methodName], [waitOneTimeout], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [platformTarget]) VALUES (N'a67752a4-b4d4-49c8-a12b-0c695b5996e4', N'myTask', N'inProc', N' ', N'1.0', N'MachineLearning.Ml.Tasks.SampleTasks.MathTasks.Dll |_|MachineLearning.Ml.Tasks.SampleTasks.MathTask', N'MachineLearning.Ml.Tasks.SampleTasks.MathTasks.Dll|_|MachineLearning.Ml.Tasks.SampleTasks.MathTaskprocessor|_|MachineLearning.Ml.Tasks.SampleTasks.Dll|_|MachineLearning.Ml.Tasks.SampleTasks.SampleTaskprocessor', N'<xs:schema xmlns:xs="Http://www.W3.Org/2001/xmlschema" elementformdefault="Qualified"><xs:import namespace="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><xs:element name="MathTask" nillable="True" type="MathTask" /><xs:complextype name="MathTask"><xs:complexcontent mixed="False"><xs:extension xmlns:q1="Http://www.MachineLearning.Com/ml/baseTaskdata/" base="Q1:baseTaskdata"><xs:sequence><xs:element minoccurs="1" maxoccurs="1" name="Value1" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Value2" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Sid" type="Xs:int" /><xs:element minoccurs="0" maxoccurs="1" name="Tid" type="Xs:string" /></xs:sequence></xs:extension></xs:complexcontent></xs:complextype></xs:schema>', 1, 1, 1, 5, 0, NULL, CAST(10 AS Numeric(8, 0)), N'', CAST(N'2010-11-29T13:58:41.083' AS DateTime), N'', CAST(N'2010-11-29T13:58:41.083' AS DateTime), NULL)
GO
INSERT [dbo].[ml_RegistrationUnregistered] ([id], [TaskType], [implementationType], [url], [TaskVersion], [TaskObjectType], [TaskProcessorType], [TaskObjectSchema], [isActive], [isSchedulable], [isQueueable], [maxJobs], [currentJobs], [methodName], [waitOneTimeout], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [platformTarget]) VALUES (N'e9820310-a436-48e6-9000-059465052bd4', N'myTask', N'inProc', N' ', N'1.0', N'MachineLearning.Ml.Tasks.SampleTasks.MathTasks.Dll |_|MachineLearning.Ml.Tasks.SampleTasks.MathTask', N'MachineLearning.Ml.Tasks.SampleTasks.MathTasks.Dll|_|MachineLearning.Ml.Tasks.SampleTasks.MathTaskprocessor|_|MachineLearning.Ml.Tasks.SampleTasks.Dll|_|MachineLearning.Ml.Tasks.SampleTasks.SampleTaskprocessor', N'<xs:schema xmlns:xs="Http://www.W3.Org/2001/xmlschema" elementformdefault="Qualified"><xs:import namespace="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><xs:element name="MathTask" nillable="True" type="MathTask" /><xs:complextype name="MathTask"><xs:complexcontent mixed="False"><xs:extension xmlns:q1="Http://www.MachineLearning.Com/ml/baseTaskdata/" base="Q1:baseTaskdata"><xs:sequence><xs:element minoccurs="1" maxoccurs="1" name="Value1" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Value2" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Sid" type="Xs:int" /><xs:element minoccurs="0" maxoccurs="1" name="Tid" type="Xs:string" /></xs:sequence></xs:extension></xs:complexcontent></xs:complextype></xs:schema>', 1, 1, 1, 5, 0, NULL, CAST(10 AS Numeric(8, 0)), N'', CAST(N'2010-11-29T14:02:35.827' AS DateTime), N'', CAST(N'2010-11-29T14:02:35.827' AS DateTime), NULL)
GO
INSERT [dbo].[ml_RegistrationUnregistered] ([id], [TaskType], [implementationType], [url], [TaskVersion], [TaskObjectType], [TaskProcessorType], [TaskObjectSchema], [isActive], [isSchedulable], [isQueueable], [maxJobs], [currentJobs], [methodName], [waitOneTimeout], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [platformTarget]) VALUES (N'22', N'myTask2', N'inProc', N'', N'1.0', N'MachineLearning.Ml.Tasks.SampleTasks.MathTasks.Dll |_|MachineLearning.Ml.Tasks.SampleTasks.MathTask', N'MachineLearning.Ml.Tasks.SampleTasks.Dll|_|MachineLearning.Ml.Tasks.SampleTasks.SampleTaskprocessor|_|MachineLearning.Ml.Tasks.SampleTasks.MathTasks.Dll|_|MachineLearning.Ml.Tasks.SampleTasks.MathTaskprocessor', N'<Taskobjectschema><xs:schema xmlns:xs="Http://www.W3.Org/2001/xmlschema" elementformdefault="Qualified"><xs:import namespace="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><xs:element name="MathTask" nillable="True" type="MathTask" /><xs:complextype name="MathTask"><xs:complexcontent mixed="False"><xs:extension xmlns:q1="Http://www.MachineLearning.Com/ml/baseTaskdata/" base="Q1:baseTaskdata"><xs:sequence><xs:element minoccurs="1" maxoccurs="1" name="Value1" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Value2" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Sid" type="Xs:int" /><xs:element minoccurs="0" maxoccurs="1" name="Tid" type="Xs:string" /></xs:sequence></xs:extension></xs:complexcontent></xs:complextype></xs:schema></Taskobjectschema>', 1, 1, 1, 5, 0, NULL, CAST(10 AS Numeric(8, 0)), N'', CAST(N'2001-01-01T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[ml_RegistrationUnregistered] ([id], [TaskType], [implementationType], [url], [TaskVersion], [TaskObjectType], [TaskProcessorType], [TaskObjectSchema], [isActive], [isSchedulable], [isQueueable], [maxJobs], [currentJobs], [methodName], [waitOneTimeout], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [platformTarget]) VALUES (N'22', N'myTask2', N'inProc', N'', N'1.0', N'MachineLearning.Ml.Tasks.SampleTasks.MathTasks.Dll |_|MachineLearning.Ml.Tasks.SampleTasks.MathTask', N'MachineLearning.Ml.Tasks.SampleTasks.Dll|_|MachineLearning.Ml.Tasks.SampleTasks.SampleTaskprocessor|_|MachineLearning.Ml.Tasks.SampleTasks.MathTasks.Dll|_|MachineLearning.Ml.Tasks.SampleTasks.MathTaskprocessor', N'<Taskobjectschema><xs:schema xmlns:xs="Http://www.W3.Org/2001/xmlschema" elementformdefault="Qualified"><xs:import namespace="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><xs:element name="MathTask" nillable="True" type="MathTask" /><xs:complextype name="MathTask"><xs:complexcontent mixed="False"><xs:extension xmlns:q1="Http://www.MachineLearning.Com/ml/baseTaskdata/" base="Q1:baseTaskdata"><xs:sequence><xs:element minoccurs="1" maxoccurs="1" name="Value1" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Value2" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Sid" type="Xs:int" /><xs:element minoccurs="0" maxoccurs="1" name="Tid" type="Xs:string" /></xs:sequence></xs:extension></xs:complexcontent></xs:complextype></xs:schema></Taskobjectschema>', 1, 1, 1, 5, 0, NULL, CAST(10 AS Numeric(8, 0)), N'', CAST(N'2001-01-01T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[ml_ScheduledQueuedTasks] ([queuedTaskid], [ScheduledTaskid]) VALUES (N'17aa9ed1-9fc8-46e4-824c-65c00f39bc52', N'546f21d6-10e6-49e3-81f1-a3894ac36148')
GO
INSERT [dbo].[ml_ScheduledQueuedTasks] ([queuedTaskid], [ScheduledTaskid]) VALUES (N'0da3968f-bdc4-4244-8c41-048c4a783461', N'546f21d6-10e6-49e3-81f1-a3894ac36148')
GO
INSERT [dbo].[ml_ScheduledQueuedTasks] ([queuedTaskid], [ScheduledTaskid]) VALUES (N'974ad4e2-b14c-48e1-93e6-8b091197cd80', N'546f21d6-10e6-49e3-81f1-a3894ac36148')
GO
INSERT [dbo].[ml_ScheduledQueuedTasks] ([queuedTaskid], [ScheduledTaskid]) VALUES (N'122421b2-5b19-41a5-840a-5681a45caaf0', N'546f21d6-10e6-49e3-81f1-a3894ac36148')
GO
INSERT [dbo].[ml_ScheduledQueuedTasks] ([queuedTaskid], [ScheduledTaskid]) VALUES (N'613f806d-dc95-4944-838f-c7152b01c889', N'546f21d6-10e6-49e3-81f1-a3894ac36148')
GO
INSERT [dbo].[ml_ScheduledQueuedTasks] ([queuedTaskid], [ScheduledTaskid]) VALUES (N'14c05595-a36f-458b-a86b-03fab412d81a', N'546f21d6-10e6-49e3-81f1-a3894ac36148')
GO
INSERT [dbo].[ml_ScheduledQueuedTasks] ([queuedTaskid], [ScheduledTaskid]) VALUES (N'32dd24c7-8ec0-4065-ae00-4bd16ded564c', N'546f21d6-10e6-49e3-81f1-a3894ac36148')
GO
INSERT [dbo].[ml_ScheduledQueuedTasks] ([queuedTaskid], [ScheduledTaskid]) VALUES (N'70fd4cc2-bad2-4edc-9c57-d4bc59fbf5fe', N'546f21d6-10e6-49e3-81f1-a3894ac36148')
GO
INSERT [dbo].[ml_ScheduledQueuedTasks] ([queuedTaskid], [ScheduledTaskid]) VALUES (N'19076aa9-907e-459f-97ef-4a18bdebe9ad', N'546f21d6-10e6-49e3-81f1-a3894ac36148')
GO
INSERT [dbo].[ml_ScheduledTask] ([id], [tenantId], [userId], [data], [dataVersion], [ScheduleName], [processType], [frequency], [ScheduledTime], [status], [lastRunStatus], [startTime], [endTime], [checksum], [recentUpdateBy], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) VALUES (N'546f21d6-10e6-49e3-81f1-a3894ac36148', N'1', N'164', N'<simulationengineTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><Schedules xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><trigger><triggertype>time</triggertype><enabled>true</enabled><endboundary>9996-12-31 23:59:59.9999999</endboundary><executiontimelimit>00:00:00</executiontimelimit><id>d6846086-45b9-4789-bd52-cml9c517e82</id><startboundary>2010-12-26 13:20:00</startboundary><delay>00:00:00</delay><repeatTask>00:00:00</repeatTask><repeatTaskduration>00:00:00</repeatTaskduration><daysinterval>1</daysinterval><randomdelay>00:00:00</randomdelay><daysofweek>sunday</daysofweek><monthsofyear>allmonths</monthsofyear><runonlastweekofmonth>false</runonlastweekofmonth><weeksofmonth>firstweek</weeksofmonth><runonlastdayofmonth>false</runonlastdayofmonth><weeksinterval>1</weeksinterval></trigger></Schedules><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">546f21d6-10e6-49e3-81f1-a3894ac36148</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">11554</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">546f21d6-10e6-49e3-81f1-a3894ac36148</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">true</isScheduled><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">process1</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">164</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nagendra@ha.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nagendra@ha.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">simulationprocessLocaldevNucleus</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">nagendra kumar</username><appenvironment>simulationprocessLocaldevNucleus</appenvironment><scenarioid>155</scenarioid><processid>4</processid><userlogin>227.127.124.35.122.255.80.176.232.3.185.175.160.149.109</userlogin><emailerimagesurl>http://download.MachineLearning.Com/emailer/images/</emailerimagesurl><xmlfilelocalpath>c:\atg\MachineLearning.Ml\mlgatwayservices\files\simulationengine</xmlfilelocalpath><xmlfilehttppath>http://localhost/mlgatewayservices/files/simulationengine/</xmlfilehttppath></simulationengineTask>', N'1.0', N'process1', N'simulationprocessLocaldevNucleus', N'run once', CAST(N'2010-12-26T13:20:00.000' AS DateTime), N'Scheduled', N'aborted', CAST(N'2010-12-26T13:44:08.000' AS DateTime), NULL, N'?]5??
F?Ko|[xj', N'164', CAST(N'2010-12-26T13:44:08.000' AS DateTime), N'nagendra kumar', CAST(N'2010-12-26T13:15:28.900' AS DateTime), N'nagendra kumar', CAST(N'2010-12-26T13:15:28.900' AS DateTime))
GO
INSERT [dbo].[ml_ServerQueues] ([queueId], [ml_ServerGuid], [ml_ServerIpAddress], [timeStamp]) VALUES (N'70fd4cc2-bad2-4edc-9c57-d4bc59fbf5fe', NULL, NULL, CAST(N'2010-12-26T13:44:08.537' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[readings] ON 
GO
INSERT [dbo].[readings] ([id], [celsius], [fahrenheit], [test], [test2]) VALUES (1, 1, 33.8, NULL, NULL)
GO
INSERT [dbo].[readings] ([id], [celsius], [fahrenheit], [test], [test2]) VALUES (2, 2, 35.6, NULL, NULL)
GO
INSERT [dbo].[readings] ([id], [celsius], [fahrenheit], [test], [test2]) VALUES (3, 3, 37.4, NULL, NULL)
GO
INSERT [dbo].[readings] ([id], [celsius], [fahrenheit], [test], [test2]) VALUES (4, 4, 39.2, NULL, NULL)
GO
INSERT [dbo].[readings] ([id], [celsius], [fahrenheit], [test], [test2]) VALUES (5, 5, NULL, NULL, NULL)
GO
INSERT [dbo].[readings] ([id], [celsius], [fahrenheit], [test], [test2]) VALUES (6, 6, 42.8, NULL, NULL)
GO
INSERT [dbo].[readings] ([id], [celsius], [fahrenheit], [test], [test2]) VALUES (7, 7, 44.6, NULL, NULL)
GO
INSERT [dbo].[readings] ([id], [celsius], [fahrenheit], [test], [test2]) VALUES (8, 8, 46.4, NULL, NULL)
GO
INSERT [dbo].[readings] ([id], [celsius], [fahrenheit], [test], [test2]) VALUES (9, 9, 48.2, NULL, NULL)
GO
INSERT [dbo].[readings] ([id], [celsius], [fahrenheit], [test], [test2]) VALUES (10, 10, 50, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[readings] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [queuedTaskidUnique]    Script Date: 1/3/2021 1:27:43 PM ******/
ALTER TABLE [dbo].[ml_ScheduledQueuedTasks] ADD  CONSTRAINT [queuedTaskidUnique] UNIQUE NONCLUSTERED 
(
	[queuedTaskid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ml_Log] ADD  CONSTRAINT [dfml_LogTimeStamp]  DEFAULT (getutcdate()) FOR [timeStamp]
GO
ALTER TABLE [dbo].[ml_Registration] ADD  CONSTRAINT [dfml_RegistrationIsSchedulable]  DEFAULT ((1)) FOR [isSchedulable]
GO
ALTER TABLE [dbo].[ml_Registration] ADD  CONSTRAINT [dfml_RegistrationIsQueueable]  DEFAULT ((1)) FOR [isQueueable]
GO
ALTER TABLE [dbo].[ml_Registration] ADD  CONSTRAINT [dfml_RegistrationWaitOneTimeout]  DEFAULT ((10)) FOR [waitOneTimeout]
GO
ALTER TABLE [dbo].[ml_ServerQueues] ADD  CONSTRAINT [dfml_ServerQueuesTimeStamp]  DEFAULT (getutcdate()) FOR [timeStamp]
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_AbortScheduledTask]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_ml_AbortScheduledTask] 
	@id nvarchar(128), @status nvarchar(200), @recentUpdateTime datetime
As
Begin
	Update ml_ScheduledTask set status=@status, recentUpdateTime=@recentUpdateTime, modifiedDate=getutcdate()  where id=@id
End
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_AddAuditRecord]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_ml_AddAuditRecord] 
	@TaskId nvarchar(128),@processorName nvarchar(1000),@status nvarchar(200),@processStartTime datetime, @recentUpdateTime datetime
As
Begin
	Insert into ml_ExecuteTask
		(TaskId,processorName,status,processStartTime,recentUpdateTime) 
	Values 
		(@TaskId,@processorName,@status,@processStartTime, @recentUpdateTime)
End
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_AddScheduledTaskToQueue]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[usp_ml_AddScheduledTaskToQueue]
@ScheduledTaskid nvarchar(128)
As
Begin tran
	Declare @queuedTaskid nvarchar (128)
	Declare @processType nvarchar (100)
	Select @queuedTaskid = lower( convert(nvarchar(max), newid()))
	Declare @xmldata XML
	
	Select @processType= CAST([data] AS XML).value('declare namespace ns="Http://www.MachineLearning.Com/ml/baseTaskdata/"; 
	(/*/ns:Tasktype/text())[1]', 'nvarchar(max)') ,@xmldata= CONVERT(XML, [data])
	From ml_ScheduledTask
	Where id=@ScheduledTaskid
	
	Set @xmldata.modify('declare namespace ns="Http://www.MachineLearning.Com/ml/baseTaskdata/";replace value of (/*/ns:id/text())[1] with sql:variable("@queuedTaskid")')
		
-- add Task to queue table
	Insert into ml_QueuedTask 
		(id,tenantId, userId, [data], dataVersion, TaskName, processType, isScheduled, status, 
		QueuedTime, checksum, recentUpdateTime, createdBy, createdDate, modifiedBy,modifiedDate )

	Select 
		@queuedTaskid, tenantId, userId, CAST(@xmldata AS NVARCHAR(MAX)), dataVersion, ScheduleName, processType, 1, 'ScheduledQueued', 
		Getutcdate(),checksum, recentUpdateTime, createdBy, getutcdate(), modifiedBy, getutcdate()
	From ml_ScheduledTask	
	Where id=@ScheduledTaskid
	
	
	

--add Task to Schedule mapping table
	Insert into ml_ScheduledQueuedTasks(queuedTaskid,ScheduledTaskid) values(@queuedTaskid,@ScheduledTaskid)

-- post notification to service broker queue 
	Declare @notificationdialog uniqueidentifier;
	Declare @message [nvarchar](max);
	Set @message  = @queuedTaskid +  '|_|' + @processType + '|_|' + 'ScheduledQueued' + '|_|' + 'I';
	Set quoted_Identifier on;
	Begin dialog conversation @notificationdialog
	From service ml_TaskChangeNotifications  
	To service 'ml_TaskChangeNotifications' 
	On contract [http://schemas.Microsoft.Com/sql/notifications/postquerynotification] 
	With encryption = off;
	Send on conversation @notificationdialog 
	Message type [http://schemas.Microsoft.Com/sql/notifications/querynotification] (@message);
    
If @@error>0 rollback tran
Else  
Commit tran
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_AddScheduledTaskToQueueOld]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create proc [dbo].[usp_ml_AddScheduledTaskToQueueOld]
@ScheduledTaskid nvarchar(128)
As
Begin tran
	Declare @queuedTaskid nvarchar (128)
	Declare @processType nvarchar (100)
	Select @queuedTaskid = lower( convert(nvarchar(max), newid()) )
	Declare @xmldata XML;

	Select @processType= CAST([data] AS XML).value('declare namespace ns="Http://www.MachineLearning.Com/ml/baseTaskdata/"; 
	(/*/ns:Tasktype/text())[1]', 'nvarchar(max)') 
	From ml_ScheduledTask
	Where id=@ScheduledTaskid

-- add Task to queue table
	Insert into ml_QueuedTask 
		(id,tenantId, userId, [data], dataVersion, TaskName, processType, isScheduled, status, 
		QueuedTime, checksum, modifiedBy, recentUpdateTime, createdBy, createdDate)

	Select 
		@queuedTaskid, tenantId, userId, [data], dataVersion, ScheduleName, processType, 1, 'ScheduledQueued', 
		Getutcdate(),checksum, recentUpdateBy, recentUpdateTime, createdBy, getdate()
	From ml_ScheduledTask	
	Where id=@ScheduledTaskid
	
	SELECT @xmldata=CONVERT(XML, [data])
	 FROM ml_QueuedTask Where id=@queuedTaskid
	SET @xmldata.modify('declare namespace ns="Http://www.MachineLearning.Com/ml/baseTaskdata/";replace value of (/*/ns:id/text())[1] with sql:variable("@queuedTaskid")');
	
	Update  ml_QueuedTask 
		Set [DATA]=CONVERT(VARCHAR(MAX), @xmldata)
	Where id=@queuedTaskid
	
	 

--add Task to Schedule mapping table
	Insert into ml_ScheduledQueuedTasks(queuedTaskid,ScheduledTaskid) values(@queuedTaskid,@ScheduledTaskid)

-- post notification to service broker queue 
	Declare @notificationdialog uniqueidentifier;
	Declare @message [nvarchar](max);
	Set @message  = @queuedTaskid +  '|_|' + @processType + '|_|' + 'ScheduledQueued' + '|_|' + 'I';
	Set quoted_Identifier on;
	Begin dialog conversation @notificationdialog
	From service ml_TaskChangeNotifications  
	To service 'ml_TaskChangeNotifications' 
	On contract [http://schemas.Microsoft.Com/sql/notifications/postquerynotification] 
	With encryption = off;
	Send on conversation @notificationdialog 
	Message type [http://schemas.Microsoft.Com/sql/notifications/querynotification] (@message);
    
If @@error>0 rollback tran
Else  
Commit tran 

GO
/****** Object:  StoredProcedure [dbo].[usp_ml_AddTaskToQueue]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_ml_AddTaskToQueue] 
	@id nvarchar(128), @tenantId int, @userId nvarchar(128), @userName nvarchar(256), @data [nvarchar](max), @dataVersion nvarchar(100), 
	@TaskName nvarchar(100),@processType nvarchar(100),
	@isScheduled bit,@status nvarchar(200),@queuedTime datetime,
	@checksum nvarchar(128),@recentUpdateTime datetime
As
Begin tran

	Insert into ml_QueuedTask
		(id,tenantId,userId,[data], dataVersion, TaskName, processType,isScheduled, status, 
		 QueuedTime,checksum,recentUpdateTime, createdBy, createdDate, modifiedBy, modifiedDate  ) 
	Values (@id,@tenantId,@userId,@data, @dataVersion, @TaskName,@processType, 
			@isScheduled, @status, @queuedTime,@checksum,@recentUpdateTime,
			@userName, getutcdate(),@userName, getutcdate())
			
			
	Declare @notificationdialog uniqueidentifier;
    Declare @message [nvarchar](max);
    Set @message  = @id +  '|_|' + @processType + '|_|' + @status + '|_|' + 'I';
    Set quoted_Identifier on;
    Begin dialog conversation @notificationdialog
    From service ml_TaskChangeNotifications  
    To service 'ml_TaskChangeNotifications' 
    On contract [http://schemas.Microsoft.Com/sql/notifications/postquerynotification] 
    With encryption = off;
    Send on conversation @notificationdialog 
    Message type [http://schemas.Microsoft.Com/sql/notifications/querynotification] (@message);
    
    If @@error>0 rollback tran
    Else  
	Commit tran
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_CheckDuplicateTaskInQueue]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_ml_CheckDuplicateTaskInQueue] 
	@checksum nvarchar(128)
As
Begin
	Select top 1 id from ml_QueuedTask [nolock] where checksum=@checksum and id not in(select top 1 queuedTaskid from ml_ScheduledQueuedTasks [nolock]) 
	Union all 
	Select top 1 queuedTaskid from ml_ScheduledQueuedTasks [nolock]  where ScheduledTaskid in(select top 1 id from ml_ScheduledTask  [nolock] where status='Scheduled' and  checksum=@checksum)
	Union all 
	Select top 1 id from ml_ScheduledTask [nolock]  where checksum=@checksum
	--select null id
End
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_DeleteexipiredScheduledTasks]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- author:		<author,,name>
-- create date: <create date,,>
-- description:	<description,,>
-- =============================================
Create procedure [dbo].[usp_ml_DeleteexipiredScheduledTasks]
	
As


Begin
	Declare @Scheduleids table
	(
		Id nvarchar(64)
	)
	 
	Insert into @Scheduleids 
	
	Select id from ml_ScheduledTask where id in 
	(
		SELECT Id 
		 From   
			 (Select id, CAST([DATA] AS XML) [DATA] from  ml_ScheduledTask)St cross apply 
			  [Data].nodes('declare namespace x="Http://www.MachineLearning.Com/ml/baseTaskdata/"; //x:trigger') as trig(pref)
		   
		   
		   Where id not in(select ScheduledTaskid from ml_ScheduledQueuedTasks) and   getutcdate()>dbo.udf_Getvaliddate
			( pref.query('declare namespace x="Http://www.MachineLearning.Com/ml/baseTaskdata/";//x:endboundary').value('.', 'nvarchar(max)'))    
		    
	 )
 
	 Declare @count int
	 Select @count=count(*)from @Scheduleids
	 
	 If(@count>0)
	 Begin
		
		
		Delete from ml_ScheduledTask where id in (select id from @Scheduleids)
		
		Exec msdb.Dbo.Sp_Delete_Job( select 'ml_'+id from @Scheduleids)
	 End
	 
End
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_DeleteRegisteredTaskService]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_ml_DeleteRegisteredTaskService] 
	@TaskType nvarchar(128)
As
Begin
	Delete from ml_Registration where TaskType=@TaskType
End
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_DeleteScheduledTask]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_ml_DeleteScheduledTask] 
	@id nvarchar(128)
As
Begin
	Delete from ml_ScheduledTask   where id=@id
	 And id not in(select ScheduledTaskid from ml_ScheduledQueuedTasks 
	 Where ml_ScheduledTask.Id=ml_ScheduledQueuedTasks.ScheduledTaskid and 
	 ml_ScheduledQueuedTasks.ScheduledTaskid=@id)
	 
End
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_DeleteTask]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_ml_DeleteTask] 
	@id nvarchar(128)
As
Begin
	
	Delete from ml_ScheduledTask   where id=@id
	Delete from ml_CompletedTask where id=@id
	Delete from ml_ScheduledQueuedTasks where ScheduledTaskid=@id
End
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_GetRegisteredSuspendedTasks]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_ml_GetRegisteredSuspendedTasks] 
As
Begin
	Select  
		Isnull(id,'') as id, isnull(TaskType,'') as TaskType, isnull(implementationType,'') as implementationType, 
		Isnull(url,'') as url, isnull(TaskVersion,'') as TaskVersion, isnull(TaskObjectType,'') as TaskObjectType, 
		Isnull(TaskProcessorType,'') as TaskProcessorType, isnull(TaskObjectSchema,'') as TaskObjectSchema, 
		Isnull(isActive,'') as isActive, isnull(isSchedulable,'') as isSchedulable, isnull(isQueueable,'') as isQueueable, 
		Isnull(maxJobs,0) as maxJobs, isnull(currentJobs,0) as currentJobs, isnull(methodName,'') as methodName,
		Isnull(waitOneTimeout,0) as waitOneTimeout, isnull(createdBy,'') as createdBy, 
		Convert(nvarchar,isnull(createdDate,''),100) as createdDate, isnull(modifiedBy,'') as modifiedBy, 
		Convert(nvarchar,isnull(modifiedDate,''),100) as modifiedDate
	From 
		ml_Registration [nolock] 
	Where 
		IsActive='false'
End
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_GetRegisteredTaskImplementationType]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_ml_GetRegisteredTaskImplementationType] 
	@TaskType nvarchar(128)
As
Begin
	Select implementationType from ml_Registration [nolock]   where isActive='true' and TaskType=@TaskType
End
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_GetRegisteredTasks]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_ml_GetRegisteredTasks]
@TaskType nvarchar(128)=null
As
Begin
	If @TaskType is null or len(@TaskType)<=0 select @TaskType='%'
	
	Select  
		Isnull(id,'') as id, isnull(TaskType,'') as TaskType, isnull(implementationType,'') as implementationType, 
		Isnull(url,'') as url, isnull(TaskVersion,'') as TaskVersion, isnull(TaskObjectType,'') as TaskObjectType, 
		Isnull(TaskProcessorType,'') as TaskProcessorType, isnull(TaskObjectSchema,'') as TaskObjectSchema, 
		Isnull(isActive,'') as isActive, isnull(isSchedulable,'') as isSchedulable, isnull(isQueueable,'') as isQueueable, 
		Isnull(maxJobs,0) as maxJobs, isnull(currentJobs,0) as currentJobs, isnull(methodName,'') as methodName,
		Isnull(waitOneTimeout,0) as waitOneTimeout, isnull(createdBy,'') as createdBy, 
		Isnull(createdDate,'') as createdDate, isnull(modifiedBy,'') as modifiedBy, 
		Isnull(modifiedDate,'') as modifiedDate
	From 
		ml_Registration [nolock] 
	Where 
		IsActive='true' and TaskType like @TaskType
End
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_GetScheduledTaskById]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_ml_GetScheduledTaskById] 
	@ScheduledTaskid nvarchar(128)
As
Begin
	Select 
		Isnull(id,'') id, isnull(tenantId,'') tenantId, isnull(userId,'') [userId], isnull([data],'') [data], isnull(dataVersion,'') dataVersion, 
		Isnull(ScheduleName,'') ScheduleName, isnull(processType,'') processType, isnull(frequency,'') frequency, isnull(ScheduledTime,'') ScheduledTime, isnull(status,'') status, 
		Isnull(lastRunStatus,'') lastRunStatus, isnull(startTime,'') startTime, isnull(endTime,'') endTime, isnull(checksum,'') checksum, 
		Isnull(recentUpdateBy,'') recentUpdateBy, isnull(recentUpdateTime,'') recentUpdateTime, 
		Isnull(createdBy,'') as createdBy, isnull(createdDate,'') as createdDate, isnull(modifiedBy,'') as modifiedBy, isnull(modifiedDate,'') as modifiedDate
	From 
		ml_ScheduledTask  [nolock] 
	Where 
		Id=@ScheduledTaskid
End
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_GetScheduledTasklist]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- usp_ml_GetScheduledTasklist 'simulationProcess', '','',''
Create procedure [dbo].[usp_ml_GetScheduledTasklist] 
	@Tasktype nvarchar(100)  = null, @tenantId nvarchar(128) = null, @userId nvarchar(128)= null, @status nvarchar(128)= null
As
Begin
	--declare @Tasktype nvarchar(100)  , @tenantId nvarchar(128) , @userId nvarchar(128), @status nvarchar(128)
	Declare @whereclause nvarchar(max),@schwhereclause nvarchar(max)
	Select 
			@whereclause = '' 
						+ case when @Tasktype is not null and len(ltrim(rtrim(@Tasktype))) > 0 then ' and processType='''+ ltrim(rtrim(@Tasktype))+ '''' else '' end  
						+ case when @tenantId is not null and len(ltrim(rtrim(@tenantId))) > 0 then ' and tenantId='+@tenantId else '' end  
						+ case when @userId is not null and len(ltrim(rtrim(@userId))) > 0 then ' and userId='+@userId else '' end 
						+ case when @status is not null and len(ltrim(rtrim(@status))) > 0 then ' and status='+@status else '' end
		
		
		 Exec ('
				Select 
					 Isnull(id,'''') id, isnull(tenantId,'''') tenantId, isnull(userId,'''') [userId], isnull([data],'''') [data], 
					 Isnull(dataVersion,'''') dataVersion, isnull(ScheduleName,'''') ScheduleName, isnull(processType,'''') processType, isnull(frequency,'''') frequency, 
					 ScheduledTime, isnull(status,'''') status, isnull(lastRunStatus,'''') lastRunStatus, startTime, 
					 EndTime, isnull(checksum,'''') checksum, isnull(recentUpdateBy,'''') recentUpdateBy, isnull(recentUpdateTime,'''') 
					 RecentUpdateTime, isnull(createdBy,'''') as createdBy, createdDate, isnull(modifiedBy,'''') as modifiedBy, 
					 ModifiedDate
                From ml_ScheduledTask  [nolock]  where 1=1 '+ @whereclause 
		)

End
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_GetScheduledTaskTypenExtSlotTime]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_ml_GetScheduledTaskTypenExtSlotTime] 
@Tasktype nvarchar(64)
,@ScheduledTime datetime
,@intervalInSeconds int=60
As
Begin

	Declare @availableScheduledTime datetime
	
	Select @availableScheduledTime= max( ScheduledTime )
	From [ml_ScheduledTask] where processType =@Tasktype  and
	ScheduledTime between @ScheduledTime and 
	Dateadd(second,@intervalInSeconds, @ScheduledTime)


	If(@availableScheduledTime is null) 
	Begin
		Select @availableScheduledTime=@ScheduledTime
		Select @availableScheduledTime
	End
	Else 
	Begin
		Verify:
		Declare @availableScheduledTimeTemp datetime
		
		Select @availableScheduledTime=dateadd(second,2,@availableScheduledTime)
		--set @availableScheduledTimeTemp=@availableScheduledTime
		
		Select @availableScheduledTimeTemp= max( ScheduledTime )
		From [ml_ScheduledTask] where processType =@Tasktype  and 
		ScheduledTime between @availableScheduledTime 
		And dateadd(second,@intervalInSeconds, @availableScheduledTime)
		
		If @availableScheduledTimeTemp is null select @availableScheduledTime
		Else goto verify
	End
	
	
End



--exec dbo.GetScheduledTaskTypeNextSlottime 'simulationprocessLocaldevNucleus','2010-12-07 06:39:00.000',0


GO
/****** Object:  StoredProcedure [dbo].[usp_ml_GetSchedulerStatus]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_ml_GetSchedulerStatus] 
	@id nvarchar(128)
As
Begin
	Select status from ml_ScheduledTask  [nolock] where id=@id
End
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_GetTaskById]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--usp_ml_GetTaskById '9b80bd89-de95-4687-9d51-638819a70238'
Create procedure [dbo].[usp_ml_GetTaskById] 
	@Taskid nvarchar(128)
As
Begin
	--declare @Taskid nvarchar(128)
	--set @Taskid = '9b80bd89-de95-4687-9d51-638819a70238'
	Declare @frequency nvarchar(100)
	Declare @lastRunStatus nvarchar(200)
	
	Select @frequency = frequency from ml_ScheduledTask where id= @Taskid
	Select @lastRunStatus = lastRunStatus from ml_ScheduledTask where id= @Taskid
	
Select * from (
		Select 
			Id=@Taskid,queueId=id, isnull(tenantId,'') tenantId, isnull(userId,'') [userId], [data], dataVersion, TaskName,processType, isScheduled, status, queuedTime, processStartTime, processEndTime ,checksum,recentUpdateTime, 
			Case isScheduled  when '1'  then isnull(@frequency,'') else ''  end as frequency, case isScheduled  when '1' then isnull(@lastRunStatus,'') else '' end  as lastRunStatus,
			Isnull(createdBy,'') as createdBy, createdDate, isnull(modifiedBy,'') as modifiedBy, modifiedDate
		From 
			ml_QueuedTask [nolock] 
		Where 
			Id in(select queuedTaskid from ml_ScheduledQueuedTasks [nolock]  where (queuedTaskid=@Taskid or ScheduledTaskid=@Taskid) )
	Union all 
		Select 
			Id,queueId='',isnull(tenantId,'') tenantId, isnull(userId,'') [userId],[data], dataVersion, ScheduleName,processType, isScheduled='1', status, ScheduledTime queuedTime, startTime processStartTime,  endTime processEndTime,checksum,recentUpdateTime, isnull(frequency,'') frequency , 
			Isnull(lastRunStatus,'') as lastRunStatus,
			Isnull(createdBy,'') as createdBy, createdDate, isnull(modifiedBy,'') as modifiedBy, modifiedDate
		From 
			ml_ScheduledTask [nolock] 
		Where 
			Id=@Taskid and id not in(select ScheduledTaskid from ml_ScheduledQueuedTasks  [nolock] where ScheduledTaskid=@Taskid)
	Union all 
		Select 
			Id=@Taskid,queueId=id,isnull(tenantId,'') tenantId, isnull(userId,'') [userId],[data], dataVersion, TaskName,processType, isScheduled, status, queuedTime, processStartTime, processEndTime ,checksum,recentUpdateTime, 
			Case isScheduled  when '1'  then isnull(@frequency,'') else ''  end as frequency, case isScheduled  when '1' then isnull(@lastRunStatus,'') else '' end  as lastRunStatus,
			Isnull(createdBy,'') as createdBy, createdDate, isnull(modifiedBy,'') as modifiedBy, modifiedDate
		From 
			ml_CompletedTask [nolock]  
		Where 
			Id in(select queuedTaskid from ml_ScheduledQueuedTasks [nolock]  where (queuedTaskid=@Taskid or ScheduledTaskid=@Taskid) )
	Union all 
	
		Select 
			Id,queueId=id,isnull(tenantId,'') tenantId, isnull(userId,'') [userId],[data], dataVersion, TaskName,processType, isScheduled, status, queuedTime, processStartTime, processEndTime ,checksum,recentUpdateTime, 
			Case isScheduled  when '1'  then isnull(@frequency,'') else ''  end as frequency, case isScheduled  when '1' then isnull(@lastRunStatus,'') else '' end  as lastRunStatus,
			Isnull(createdBy,'') as createdBy, createdDate, isnull(modifiedBy,'') as modifiedBy, modifiedDate
		From 
			ml_QueuedTask [nolock] 
		Where 
			Id=@Taskid and not exists(select 1 from ml_ScheduledQueuedTasks [nolock]  where (queuedTaskid=@Taskid or ScheduledTaskid=@Taskid) )
	Union all 
		Select 
			Id,queueId=id,isnull(tenantId,'') tenantId, isnull(userId,'') [userId],[data], dataVersion, TaskName,processType, isScheduled, status, queuedTime, processStartTime, processEndTime ,checksum,recentUpdateTime, 
			Case isScheduled  when '1'  then isnull(@frequency,'') else ''  end as frequency, case isScheduled  when '1' then isnull(@lastRunStatus,'') else '' end  as lastRunStatus,
			Isnull(createdBy,'') as createdBy, createdDate, isnull(modifiedBy,'') as modifiedBy, modifiedDate
		From 
			ml_CompletedTask [nolock]  
		Where 
			Id=@Taskid and not exists(select 1 from ml_ScheduledQueuedTasks [nolock]  where (queuedTaskid=@Taskid or ScheduledTaskid=@Taskid) )
			
		) src order by queuedTime desc, modifiedDate 
End
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_GetTaskdataById]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_ml_GetTaskdataById] 
	@id nvarchar(128)
As
Begin
	Select [data] from ml_QueuedTask [nolock]  where id=@id 
	Union all 
	Select [data] from ml_ScheduledTask [nolock]  where id=@id 
	Union all
	Select [data] from ml_CompletedTask  [nolock]  where id=@id 
End
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_GetTasklist]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- usp_ml_GetTasklist 'simulationprocessLocaldevNucleus', '','',''
Create procedure [dbo].[usp_ml_GetTasklist] 
	@Tasktype nvarchar(100)  = null, @tenantId nvarchar(128) = null, @userId nvarchar(128)= null, @status nvarchar(128)= null
As
Begin
	Declare @whereclause nvarchar(max),@schwhereclause nvarchar(max)
	Select 
			@whereclause = '' 
						+ case when @Tasktype is not null and len(ltrim(rtrim(@Tasktype))) > 0 then ' and processType='''+ ltrim(rtrim(@Tasktype))+ '''' else '' end  
						+ case when @tenantId is not null and len(ltrim(rtrim(@tenantId))) > 0 then ' and tenantId='+@tenantId else '' end  
						+ case when @userId is not null and len(ltrim(rtrim(@userId))) > 0 then ' and userId='+@userId else '' end 
						+ case when @status is not null and len(ltrim(rtrim(@status))) > 0 then ' and aqt.Status='+@status else '' end
			,@schwhereclause = 'id not in (select ScheduledTaskid from ml_ScheduledQueuedTasks [nolock] )' 
						+ case when @Tasktype is not null and len(ltrim(rtrim(@Tasktype))) > 0 then ' and processType='''+ ltrim(rtrim(@Tasktype))+ '''' else '' end 
						+ case when @tenantId is not null and len(ltrim(rtrim(@tenantId))) > 0 then ' and tenantId='+@tenantId else '' end 
						+ case when @userId is not null and len(ltrim(rtrim(@userId))) > 0 then ' and userId='+@userId else '' end 
						+ case when @status is not null and len(ltrim(rtrim(@status))) > 0 then ' and status='+@status else '' end
		
		Exec ('
				Select * from (
				Select aqt.Id,queueId=aqt.Id,isnull(tenantId,'''') tenantId, isnull(userId,'''') [userId],[data], dataVersion, TaskName,processType,aet.ProcessorName,isScheduled, isnull(aet.Status,aqt.Status) status, queuedTime, aet.ProcessStartTime processStartTime, aet.ProcessEndTime processEndTime,checksum,isnull(aet.RecentUpdateTime,aqt.RecentUpdateTime) recentUpdateTime,isnull(case isScheduled  when ''1'' then (select frequency from ml_ScheduledTask where id= aqt.Id)  else '''' end,'''') as frequency, isnull(case isScheduled  when ''1'' then (select lastRunStatus from ml_ScheduledTask where id= aqt.Id) else '''' end,'''') as lastRunStatus, isnull(createdBy,'''') as createdBy, createdDate, isnull(modifiedBy,'''') as modifiedBy, modifiedDate 
				From ml_QueuedTask aqt left join ml_ExecuteTask  aet  on  aqt.Id=aet.TaskId  
				Where  isScheduled=''false''   '+ @whereclause + '
				Union all 
				Select id,queueId='''',isnull(tenantId,'''') tenantId, isnull(userId,'''') [userId],[data], dataVersion, ScheduleName,processType,'''' processorName,isScheduled=''1'',status, ScheduledTime queuedTime, startTime processStartTime, endTime processEndTime,checksum,recentUpdateTime, isnull(frequency,'''') frequency , isnull(lastRunStatus,'''') as lastRunStatus, isnull(createdBy,'''') as createdBy,  createdDate, isnull(modifiedBy,'''') as modifiedBy, modifiedDate 
				From ml_ScheduledTask [nolock]  
				Where  '+ @schwhereclause + '
				Union all 
				Select aqt.Id,queueId=aqt.Id,isnull(tenantId,'''') tenantId, isnull(userId,'''') [userId],[data], dataVersion, TaskName,processType,aet.ProcessorName,isScheduled, isnull(aet.Status,aqt.Status) status, queuedTime, aet.ProcessStartTime processStartTime, aet.ProcessEndTime processEndTime,checksum,isnull(aet.RecentUpdateTime,aqt.RecentUpdateTime) recentUpdateTime, isnull(case isScheduled  when ''1'' then (select frequency from ml_ScheduledTask where id= aqt.Id)  else '''' end,'''') as frequency, isnull(case isScheduled  when ''1'' then (select lastRunStatus from ml_ScheduledTask where id= aqt.Id) else '''' end,'''') as lastRunStatus, isnull(createdBy,'''') as createdBy, createdDate, isnull(modifiedBy,'''') as modifiedBy, modifiedDate 
				From ml_CompletedTask aqt left join ml_ExecuteTask  aet  on  aqt.Id=aet.TaskId 
				Where  isScheduled=''false''  '+ @whereclause + '
				Union all 
				Select id=ScheduledTaskid,queueId=queuedTaskid,isnull(tenantId,'''') tenantId, isnull(userId,'''') [userId],[data], dataVersion, TaskName,processType,aet.ProcessorName, isScheduled, isnull(aet.Status,aqt.Status) status, (select ScheduledTime from ml_ScheduledTask where id=ScheduledTaskid) queuedTime, aet.ProcessStartTime processStartTime, aet.ProcessEndTime processEndTime,checksum,isnull(aet.RecentUpdateTime,aqt.RecentUpdateTime) recentUpdateTime, isnull(case isScheduled  when ''1'' then (select frequency from ml_ScheduledTask where id= ScheduledTaskid or id= queuedTaskid)  else '''' end,'''') as frequency, isnull(case isScheduled  when ''1'' then (select lastRunStatus from ml_ScheduledTask where id= ScheduledTaskid or id= queuedTaskid) else '''' end ,'''')as lastRunStatus, isnull(createdBy,'''') as createdBy, createdDate, isnull(modifiedBy,'''') as modifiedBy, modifiedDate 
				From ml_QueuedTask aqt  join ml_ScheduledQueuedTasks sqt on aqt.Id=queuedTaskid  left join ml_ExecuteTask  aet  on  aqt.Id=aet.TaskId  
				Where isScheduled=''true'' ' + @whereclause + '
				Union all 
				Select id=ScheduledTaskid,queueId=queuedTaskid,isnull(tenantId,'''') tenantId, isnull(userId,'''') [userId],[data], dataVersion, TaskName,processType,aet.ProcessorName, isScheduled, isnull(aet.Status,aqt.Status) status, (select ScheduledTime from ml_ScheduledTask where id=ScheduledTaskid) queuedTime, aet.ProcessStartTime processStartTime, aet.ProcessEndTime processEndTime,checksum,isnull(aet.RecentUpdateTime,aqt.RecentUpdateTime) recentUpdateTime, isnull(case isScheduled  when ''1'' then (select frequency from ml_ScheduledTask where id= ScheduledTaskid or id= queuedTaskid)  else '''' end,'''') as frequency, isnull(case isScheduled  when ''1'' then (select lastRunStatus from ml_ScheduledTask where id= ScheduledTaskid or id= queuedTaskid) else '''' end ,'''')as lastRunStatus, isnull(createdBy,'''') as createdBy, createdDate, isnull(modifiedBy,'''') as modifiedBy, modifiedDate 
				From ml_CompletedTask aqt  join ml_ScheduledQueuedTasks on aqt.Id=queuedTaskid  left join ml_ExecuteTask  aet  on  aqt.Id=aet.TaskId  
				Where  isScheduled=''true'' '+ @whereclause + '
			) src order by queuedTime desc,  modifiedDate '
			
			
		)

End
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_GetTaskObjectSchema]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_ml_GetTaskObjectSchema] 
	@TaskType nvarchar (128)
As
Begin
	Select TaskObjectSchema from ml_Registration [nolock] where TaskType=@TaskType  and isActive='true'
End
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_GetTaskObjectType]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_ml_GetTaskObjectType] 
	@TaskType nvarchar (128)
As
Begin
	Select TaskObjectType from ml_Registration [nolock] where TaskType=@TaskType  and isActive='true'
End
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_GetTaskProcessorType]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_ml_GetTaskProcessorType] 
	@TaskType nvarchar (128)
As
Begin
	Select TaskProcessorType from ml_Registration [nolock] where TaskType=@TaskType  and isActive='true'
End
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_GetTaskStatus]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_ml_GetTaskStatus] 
	@id nvarchar(128)
As
Begin
	Select isnull(status,'') as status from  ml_QueuedTask [nolock] where id=@id 
	Union all 
	Select 'completed' where exists(select 1 from  ml_CompletedTask [nolock] where id=@id) 
	Union all 
	Select 'ScheduledQueued' where exists(select 1 from ml_ScheduledQueuedTasks [nolock] where ScheduledTaskid=@id and exists(select id from ml_QueuedTask [nolock] where id in(select queuedTaskid from ml_ScheduledQueuedTasks  [nolock] where ScheduledTaskid=@id ))) 
	Union all 
	Select 'ScheduledCompleted' where exists(select 1 from ml_ScheduledQueuedTasks [nolock] where ScheduledTaskid=@id and exists(select id from ml_CompletedTask [nolock] where id in(select queuedTaskid from ml_ScheduledQueuedTasks  [nolock] where ScheduledTaskid=@id ))) 
	Union all 
	Select 'Scheduled' where exists(select 1 from  ml_ScheduledTask [nolock] where id=@id and not exists(select ScheduledTaskid from ml_ScheduledQueuedTasks  [nolock] where ScheduledTaskid=@id)) ;
End
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_GetTaskStatusDetails]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_ml_GetTaskStatusDetails] 
	@id nvarchar(128), @status nvarchar(200)
As
Begin
	 If (@status ='completed')	
		 Begin
			Select	
				Aqt.Id,queueId=aqt.Id,TaskName,processType,aet.ProcessorName, 
				Isnull(aet.Status,aqt.Status) status,isScheduled, queuedTime,
				Aet.ProcessStartTime,aet.ProcessEndTime 
			From 
				ml_CompletedTask aqt left join ml_ExecuteTask  aet  on  aqt.Id=aet.TaskId  
			Where 
				Aqt.Id=@id
		 End
	 If (@status ='ScheduledQueued')	
		 Begin
			Select 
				Id=ScheduledTaskid,queueId=queuedTaskid,TaskName,processType,
				Aet.ProcessorName, isnull(aet.Status,aqt.Status) status,isScheduled, 
				QueuedTime,aet.ProcessStartTime,aet.ProcessEndTime 
			From 
				ml_QueuedTask aqt join ml_ScheduledQueuedTasks on aqt.Id=queuedTaskid left join ml_ExecuteTask  aet on  aqt.Id=aet.TaskId 
			Where 
				ScheduledTaskid=@id or queuedTaskid=@id
		 End
	 If (@status ='ScheduledCompleted')	
		 Begin
			Select 
				Id=ScheduledTaskid,queueId=queuedTaskid,TaskName,processType,aet.ProcessorName, 
				Isnull(aet.Status,aqt.Status) status,isScheduled, queuedTime,aet.ProcessStartTime,
				Aet.ProcessEndTime 
			From 
				ml_CompletedTask aqt join ml_ScheduledQueuedTasks on aqt.Id=queuedTaskid left join ml_ExecuteTask  aet on  aqt.Id=aet.TaskId 
			Where 
				ScheduledTaskid=@id or queuedTaskid=@id
		 End
	 If (@status ='Scheduled')	
		 Begin
			Select 
				Id,queueId='',ScheduleName,processType, '' processorName,status,isScheduled='1', ScheduledTime,
				StartTime,endTime 
			From 
				ml_ScheduledTask [nolock] 
			Where 
				Id=@id
		 End
	 Else
		 Begin 
			Select 
				Aqt.Id,queueId=aqt.Id,TaskName,processType,aet.ProcessorName,isnull(aet.Status,aqt.Status) status,
				IsScheduled, queuedTime,aet.ProcessStartTime,aet.ProcessEndTime 
			From 
				ml_QueuedTask  aqt left join ml_ExecuteTask  aet  on  aqt.Id=aet.TaskId  
			Where 
				Aqt.Id=@id	 
		 End
End
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_GetUnregisteredTasks]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_ml_GetUnregisteredTasks]
As
Begin
	Select  
		Isnull(id,'') as id, isnull(TaskType,'') as TaskType, isnull(implementationType,'') as implementationType, 
		Isnull(url,'') as url, isnull(TaskVersion,'') as TaskVersion, isnull(TaskObjectType,'') as TaskObjectType, 
		Isnull(TaskProcessorType,'') as TaskProcessorType, isnull(TaskObjectSchema,'') as TaskObjectSchema, 
		Isnull(isActive,'') as isActive, isnull(isSchedulable,'') as isSchedulable, isnull(isQueueable,'') as isQueueable, 
		Isnull(maxJobs,0) as maxJobs, isnull(currentJobs,0) as currentJobs, isnull(methodName,'') as methodName,
		Isnull(waitOneTimeout,0) as waitOneTimeout, isnull(createdBy,'') as createdBy, 
		Convert(nvarchar,isnull(createdDate,''),100) as createdDate, isnull(modifiedBy,'') as modifiedBy, 
		Convert(nvarchar,isnull(modifiedDate,''),100) as modifiedDate
	From 
		ml_RegistrationUnregistered [nolock] 
	Where 
		1=1
End
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_IsTaskExists]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_ml_IsTaskExists] 
	@Taskname nvarchar(100),@Tasktype nvarchar(100)= null, @tenantid nvarchar(128) =null
As
Begin
	Declare @whereclause nvarchar(max),@schwhereclause nvarchar(max)
	Select 
			@whereclause = '' 
						+ case when @Taskname is not null and len(ltrim(rtrim(@Taskname))) > 0 then 'TaskName='''+ ltrim(rtrim(@Taskname))+ '''' else '' end  
						+ case when @Tasktype is not null and len(ltrim(rtrim(@Tasktype))) > 0 then ' and processType='''+ ltrim(rtrim(@Tasktype))+ '''' else '' end  
						+ case when @tenantid is not null and len(ltrim(rtrim(@tenantid))) > 0 then ' and tenantId='+@tenantid else '' end  
			,@schwhereclause = '' 
						+ case when @Taskname is not null and len(ltrim(rtrim(@Taskname))) > 0 then 'ScheduleName='''+ ltrim(rtrim(@Taskname))+ '''' else '' end  
						+ case when @Tasktype is not null and len(ltrim(rtrim(@Tasktype))) > 0 then ' and processType='''+ ltrim(rtrim(@Tasktype))+ '''' else '' end  
						+ case when @tenantid is not null and len(ltrim(rtrim(@tenantid))) > 0 then ' and tenantId='+@tenantid else '' end  
	
	Exec ('if (exists (
				Select 1 from ml_QueuedTask where ' + @whereclause + '
				Union all 
				Select 1 from ml_ScheduledTask where ' + @schwhereclause + '
				)
		)
	Select 1
	Else
	Select 0')
End
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_IsTaskInProcess]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_ml_IsTaskInProcess] 
	@id nvarchar(128), @status nvarchar(200)
As
Begin
	 If (@status ='completed')	
		 Begin
			Select 'false' 
		 End
	 If (@status ='ScheduledQueued')	
		 Begin
			Select 'true' 
			Where 
				Exists(select status from ml_QueuedTask [nolock] join 
					ml_ScheduledQueuedTasks on id=queuedTaskid  
						Where (ScheduledTaskid=@id or queuedTaskid=@id) and upper(status)='processStarted')
		 End
	 If (@status ='ScheduledCompleted')	
		 Begin
			Select 'false' 
		 End
	 If (@status ='Scheduled')	
		 Begin
			Select 'false' 
			
		 End
	 Else
		 Begin 
			Select 'true' where exists(select status from ml_QueuedTask [nolock] where id=@id and upper(status)='processStarted')
		 End
End
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_IsTaskTypeJobsInProcess]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_ml_IsTaskTypeJobsInProcess] 
	@processType nvarchar(100)
As
Begin
	Select 'true' 
	Where 
		Exists(
				Select status from ml_QueuedTask [nolock] 
				Where 
					ProcessType=@processType and upper(status) in('queued','ScheduledQueued','processStarted'))
End
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_IsTaskTypeRegistered]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_ml_IsTaskTypeRegistered] 
	@TaskType nvarchar (128)
As
Begin
	Select 'true' 
	Where 
		Exists(select 1 from ml_Registration where isActive='true' and TaskType=@TaskType)
End
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_RegisterTaskService]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_ml_RegisterTaskService] 
	@id nvarchar(128), @TaskType nvarchar(128),  @implementationType nvarchar(100), @url nvarchar(1024),
	@TaskVersion nvarchar(512), @TaskObjectSchema [nvarchar](max), @TaskObjectType nvarchar(1024), 
	@TaskProcessorType nvarchar(1024), @isActive bit, @isSchedulable bit, @isQueueable bit, 
	@maxJobs int, @currentJobs int, @methodName nvarchar(1000), @waitOneTimeout int, @userName nvarchar(256)
As
Begin
	Insert into ml_Registration
		(id,TaskType,implementationType,url,TaskVersion,TaskObjectSchema,TaskObjectType,TaskProcessorType,
		IsActive,isSchedulable,isQueueable,maxJobs,currentJobs,methodName,waitOneTimeout, 
		CreatedBy, createdDate, modifiedBy, modifiedDate) 
	Values 
		(@id, @TaskType, @implementationType, @url, @TaskVersion, @TaskObjectSchema, @TaskObjectType, 
		@TaskProcessorType, @isActive, @isSchedulable, @isQueueable, @maxJobs, 0, @methodName,
		@waitOneTimeout, @userName, getutcdate(), @userName, getutcdate())
End
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_RegisterTaskService_Old]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



Create procedure [dbo].[usp_ml_RegisterTaskService_Old] 
@registeredTaskmetadata [nvarchar](max), @registeredTaskprocessdata [nvarchar](max)=null
	--@id nvarchar(128), @TaskType nvarchar(128),  @implementationType nvarchar(100), @url nvarchar(1024),
	--@TaskVersion nvarchar(512), @TaskObjectSchema [nvarchar](max), @TaskObjectType nvarchar(1024), 
	--@TaskProcessorType nvarchar(1024), @isActive bit, @isSchedulable bit, @isQueueable bit, 
	--@maxJobs int, @currentJobs int, @methodName nvarchar(1000), @waitOneTimeout int, @userName nvarchar(256)
As

Declare @idoc int 


Exec sp_Xml_Preparedocument @idoc output, @registeredTaskmetadata
--insert into [ml_Registration]
--(
--	[id],[TaskType],[implementationType],[url]
--	,[TaskVersion],[TaskObjectType]
--	,[TaskProcessorType],[TaskObjectSchema]
--	,[isActive],[isSchedulable]
--	,[isQueueable],[maxJobs]
--	,[currentJobs] ,[methodName]
--	,[waitOneTimeout],[createdBy]
--	,[createdDate],[platformTarget]
--)
Declare @Task table(  
Id nvarchar(64)
,Tasktype nvarchar(64)
,implementationtype  nvarchar(50)
,url  nvarchar(512) 
,Taskversion  nvarchar(256)
,Taskdataobjecttype nvarchar(max)
,Tasktypeprocessors  nvarchar(max)
,Tasktypeprocessorslist [nvarchar](max)
,Taskdatabinaryassemblies [nvarchar](max)
,Taskobjectschema [nvarchar](max)
,isactive bit
,isschedulable bit
,isqueueable bit
,maxjobs int
,currentjobs int
,methodname nvarchar(500)
,waitone numeric(8,0)
,username nvarchar(256)
,createddate nvarchar(100)
,platformtarget nvarchar(10)
)
Insert into @Task
Select 
Id 
,Tasktype 
,implementationtype
,url  
,Taskversion
,Taskdataobjecttype
,Tasktypeprocessors
,Tasktypeprocessorslist
,Taskdatabinaryassemblies
,Taskobjectschema 
,isactive 
,isschedulable 
,isqueueable 
,maxjobs 
,currentjobs 
,methodname 
,waitone 
,username 
,convert(nvarchar(50), dbo.udf_Getvaliddate( createddate),106) 
,platformtarget 


From openxml(@idoc, 'Taskregistry',2)
With (
Id nvarchar(64)
,Tasktype nvarchar(64)
,implementationtype  nvarchar(50)
,url  nvarchar(512) 
,Taskversion  nvarchar(256)
,Taskdataobjecttype nvarchar(max)
,Tasktypeprocessors  nvarchar(max)
,Tasktypeprocessorslist [nvarchar](max)
,Taskdatabinaryassemblies [nvarchar](max)
,Taskobjectschema [nvarchar](max)
,isactive bit
,isschedulable bit
,isqueueable bit
,maxjobs int
,currentjobs int
,methodname nvarchar(500)
,waitone numeric(8,0)
,username nvarchar(256)
,createddate nvarchar(100)
,platformtarget nvarchar(10)


  )
  Select * from @Task
Exec sp_Xml_Removedocument @idoc
 



--begin
--	insert into ml_Registration
--		(id,TaskType,implementationType,url,TaskVersion,TaskObjectSchema,TaskObjectType,TaskProcessorType,
--		isActive,isSchedulable,isQueueable,maxJobs,currentJobs,methodName,waitOneTimeout, 
--		createdBy, createdDate, modifiedBy, modifiedDate) 
--	values 
--		(@id, @TaskType, @implementationType, @url, @TaskVersion, @TaskObjectSchema, @TaskObjectType, 
--		@TaskProcessorType, @isActive, @isSchedulable, @isQueueable, @maxJobs, 0, @methodName,
--		@waitOneTimeout, @userName, getdate(), @userName, getdate())
--end

--select Tasktypeprocessorslist.value('Tasktypeprocessorslist[1]/string[2]','nvarchar(max)')  from @Task
--select Taskdatabinaryassemblies.value('Taskdatabinaryassemblies[1]/anytype[1]','nvarchar(max)')  from @Task

GO
/****** Object:  StoredProcedure [dbo].[usp_ml_RemoveScheduledQueuedTask]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_ml_RemoveScheduledQueuedTask] 
	@ScheduledTaskid nvarchar(128)
As
Begin
	Delete from ml_ScheduledQueuedTasks  where ScheduledTaskid=@ScheduledTaskid
End
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_ResetServerComponents]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_ml_ResetServerComponents] 
	
As
Declare @notifymessage nvarchar(max)
Begin transaction
 
Update ml_Registration set currentJobs=0

Declare jobsUpdateCursor cursor for  
Select 
Substring
(  
	Case message_type_name when 'x' then cast(message_body as nvarchar(max)) 
	Else message_body end ,0,38
)
From [ml_TaskChangeMessage] with(nolock)
Where 
Substring
(  
	Case message_type_name when 'x' then cast(message_body as nvarchar(max)) 
	Else message_body end ,0,38
) in 
(select  id from ml_QueuedTask nolock where upper(status)='processStarted' )

Open jobsUpdateCursor   
Fetch next from jobsUpdateCursor into @notifymessage  
Select @notifymessage=replace(@notifymessage,'?','')

While @@fetch_Status = 0   
Begin   
	   --update ml_Registration set currentJobs=currentJobs-1 where TaskType=(select TaskType from ml_QueuedTask  nolock
	   --where id=@notifymessage )  
 
	 -- delete from ml_ExecuteTask where TaskId=@notifymessage and upper(status)='processStarted'
	 -- delete from ml_ExecuteTask where TaskId=@notifymessage 
		
	  Update ml_QueuedTask set status=case isScheduled when '1' then 'ScheduledQueued' else  
	 'queued' end  where upper(status)='processStarted' and id=@notifymessage-- and not exists(select TaskId from ml_ExecuteTask where TaskId=@notifymessage)
       
       Fetch next from jobsUpdateCursor into @notifymessage    
       Select @notifymessage=replace(@notifymessage,'?','')
End   

Close jobsUpdateCursor   
Deallocate jobsUpdateCursor 

Delete from ml_ExecuteTask where TaskId in(select id from ml_QueuedTask where status in('queued','ScheduledQueued'))

Update  ml_ExecuteTask set  status='aborted' where upper(status)='processStarted' and  TaskId in
(
	Select id from ml_QueuedTask where upper(status) ='processStarted' and 
	Id not in
	(
		Select 
		Replace(substring
		(  
			Case message_type_name when 'x' then cast(message_body as nvarchar(max)) 
			Else message_body end ,0,38
		),'?','')
		From [ml_TaskChangeMessage] with(nolock)
	)
)

Update ml_QueuedTask set status='aborted' where upper(status) ='processStarted' and 
	Id not in
	(
		Select 
		Replace(substring
		(  
			Case message_type_name when 'x' then cast(message_body as nvarchar(max)) 
			Else message_body end ,0,38
		),'?','')
		From [ml_TaskChangeMessage] with(nolock)
	)
	
If @@error=0
Begin
	Select 1
	Commit tran
End
Else 
Begin
	Rollback tran
	Select 0
End

--commented code which will be enabled for multiple ml servers
--
--go
--/****** object:  storedprocedure [dbo].[usp_ml_ResetServerComponents]    script date: 11/15/2010 10:03:57 ******/
--set ansi_Nulls on
--go
--set quoted_Identifier on
--go
--alter procedure [dbo].[usp_ml_ResetServerComponents] 
	
--as
--declare @notifymessage nvarchar(max)
--begin transaction
 
--declare jobsUpdateCursor cursor for  
--select 
--substring
--(  
--	case message_type_name when 'x' then cast(message_body as nvarchar(max)) 
--	else message_body end ,0,38
--)
--from [ml_TaskChangeMessage] with(nolock)
--where 
--substring
--(  
--	case message_type_name when 'x' then cast(message_body as nvarchar(max)) 
--	else message_body end ,0,38
--) in 
--(select  id from ml_QueuedTask nolock where upper(status)='processStarted' )

--open jobsUpdateCursor   
--fetch next from jobsUpdateCursor into @notifymessage  
--select @notifymessage=replace(@notifymessage,'?','')

--while @@fetch_Status = 0   
--begin   
--	   update ml_Registration set currentJobs=currentJobs-1 where TaskType=(select TaskType from ml_QueuedTask  nolock
--	   where id=@notifymessage )  

--	  delete from ml_ExecuteTask where TaskId=@notifymessage and upper(status)='processStarted'
		
--	  update ml_QueuedTask set status=case isScheduled when '1' then 'ScheduledQueued' else  
--	 'queued' end  where upper(status)='processStarted' and id=@notifymessage and not exists(select TaskId from ml_ExecuteTask where TaskId=@notifymessage)
       
--       fetch next from jobsUpdateCursor into @notifymessage    
--       select @notifymessage=replace(@notifymessage,'?','')
--end   

--close jobsUpdateCursor   
--deallocate jobsUpdateCursor 

--if @@error=0
--begin
--	select 1
--	commit tran
--end
--else 
--begin
--	rollback tran
--	select 0
--end
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_ResumeRegisteredTaskService]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_ml_ResumeRegisteredTaskService] 
	@TaskType nvarchar(128)
As
Begin
	Update ml_Registration set isActive='1' where TaskType=@TaskType
End
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_SuspendRegisteredTaskService]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_ml_SuspendRegisteredTaskService] 
	@TaskType nvarchar(128)
As
Begin
	Update ml_Registration set isActive='0' where TaskType=@TaskType
End
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_TruncateTasks]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- author:		<author,,name>
-- create date: <create date,,>
-- description:	<description,,>
-- =============================================
Create procedure [dbo].[usp_ml_TruncateTasks]
	-- add the parameters for the stored procedure here

As
Begin
	-- set nocount on added to prevent extra result sets from
	-- interfering with select statements.
	Set nocount on;

    -- insert statements for procedure here
Truncate table dbo.ml_CompletedTask
Truncate table dbo.ml_ExecuteTask
--Truncate table dbo.ml_ExecuteTaskHistory
Truncate table dbo.ml_QueuedTask
Truncate table dbo.ml_Registration
Truncate table dbo.ml_RegistrationUnregistered
Truncate table dbo.ml_ScheduledTask
Truncate table dbo.ml_ScheduledQueuedTasks

End
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_UpdateQueuedTask]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_ml_UpdateQueuedTask] 
	@id nvarchar(128), @tenantId int, @userId nvarchar(128), @userName nvarchar(256), @data [nvarchar](max), @dataVersion nvarchar(100), 
	@TaskName nvarchar(100),@processType nvarchar(100),
	@isScheduled bit,@status nvarchar(200),@queuedTime datetime,
	@checksum nvarchar(128),@recentUpdateTime datetime
As
Begin
	Update ml_QueuedTask set 
		TenantId=@tenantId,userId=@userId,[data]=@data,dataVersion=@dataVersion, 
		TaskName=@TaskName,processType=@processType,isScheduled=@isScheduled,
		Status=@status,queuedTime=@queuedTime,checksum=@checksum,recentUpdateTime=@recentUpdateTime,
		 ModifiedBy =@userName, modifiedDate=@recentUpdateTime
	Where id=@id
End
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_UpdateRegisteredTaskService]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_ml_UpdateRegisteredTaskService] 
	@id nvarchar(128), @TaskType nvarchar(128),  @implementationType nvarchar(100), @url nvarchar(1024),
	@TaskVersion nvarchar(512), @TaskObjectSchema [nvarchar](max), @TaskObjectType nvarchar(1024), 
	@TaskProcessorType nvarchar(1024), @isActive bit, @isSchedulable bit, @isQueueable bit, 
	@maxJobs int, @currentJobs int, @methodName nvarchar(1000), @waitOneTimeout int, @userName nvarchar(256)
As
Begin
	Update ml_Registration set 
		TaskType=@TaskType, implementationType=@implementationType, url=@url,
		TaskVersion=@TaskVersion, TaskObjectSchema=@TaskObjectSchema,
		TaskObjectType=@TaskObjectType, TaskProcessorType=@TaskProcessorType, 
		IsActive=@isActive,	isSchedulable=@isSchedulable,	isQueueable=@isQueueable,
		MaxJobs=@maxJobs, currentJobs=@currentJobs, methodName=@methodName, 
		WaitOneTimeout=@waitOneTimeout , modifiedBy =@userName, modifiedDate = getutcdate() 
	Where 
		Id=@id
End
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_UpdateRunningJobs]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_ml_UpdateRunningJobs] 
	@TaskType nvarchar (128), @currentJobs int
As
Begin
	Update ml_Registration set currentJobs=currentJobs+ @currentJobs where TaskType=@TaskType
End
GO
/****** Object:  StoredProcedure [dbo].[usp_ml_UpdateScheduledTask]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_ml_UpdateScheduledTask] 
	@id nvarchar(128), @tenantId int, @userId nvarchar(128), @userName nvarchar(256), @data [nvarchar](max), @dataVersion nvarchar(100), 
	@ScheduleName nvarchar(100),@processType nvarchar(100),
	@status nvarchar(200),
	@checksum nvarchar(128),@recentUpdateTime datetime,
	@frequency nvarchar(100), @ScheduledTime datetime, @recentUpdateBy nvarchar(100)
As
Begin
	Update ml_ScheduledTask set 
		TenantId=@tenantId,userId=@userId,[data]=@data, dataVersion=@dataVersion, 
		ScheduleName=@ScheduleName, processType=@processType,frequency=@frequency,ScheduledTime=@ScheduledTime,status=@status, checksum=@checksum,
		RecentUpdateBy=@recentUpdateBy,recentUpdateTime=@recentUpdateTime ,
		ModifiedBy =@userName, modifiedDate =@recentUpdateTime
	Where id=@id
End

GO
/****** Object:  StoredProcedure [dbo].[usp_ml_VerifyAndUpdateWebTaskStatus]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- author:		<author,,name>
-- create date: <create date,,>
-- description:	<description,,>
-- =============================================
Create procedure [dbo].[usp_ml_VerifyAndUpdateWebTaskStatus]
	
As
Begin
	-- set nocount on added to prevent extra result sets from
	-- interfering with select statements.
	Set nocount on;

    -- insert statements for procedure here
	Update ml_QueuedTask set status='aborted',processEndTime=getutcdate() , recentUpdateTime=getutcdate() 
	Where status='processStarted' and
	TaskName in(select ml_Registration.TaskType from ml_Registration where  
	ml_QueuedTask.TaskName=ml_Registration.TaskType and  ml_Registration.ImplementationType='post' 
	And dateadd(mi,isnull(ml_Registration.WaitOneTimeout,10),ml_QueuedTask.ProcessStartTime)<=getutcdate()  )


End
GO
/****** Object:  StoredProcedure [dbo].[usp_usp_ml_GetTasklistByProperty]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--usp_usp_ml_GetTasklistByProperty 'simulationProcess','1',' and [data].value(''*[1]/scenarioid[1]'',''nvarchar(max)'') = ''160''  and [data].value(''*[1]/processid[1]'',''nvarchar(max)'') = ''7'' '
Create procedure [dbo].[usp_usp_ml_GetTasklistByProperty] 
	@Tasktype nvarchar(100)  , @tenantId nvarchar(128) , 
	@propertyWhereclause nvarchar(max)
	--'prop1~value|_|prop2~value|_|
As
Begin

--declare @Tasktype nvarchar(100)
--declare @tenantId nvarchar(100)
--declare @propertyWhereclause nvarchar(max)
--set @propertyWhereclause=N' and [data].value(''*[1]/scenarioid[1]'',''nvarchar(max)'') = ''160''  and [data].value(''*[1]/processid[1]'',''nvarchar(max)'') = ''7'' '

--set @Tasktype = 'simulationProcess'
--set @tenantId = 1




Declare @whereclause nvarchar(max)
	Select 
			@whereclause = ' processType = ''' + @Tasktype+ ''' and tenantId = ''' + @tenantId + '''' + @propertyWhereclause
			
			

Exec ('
			Select aqt.Id,queueId=aqt.Id,isnull(tenantId,'''') tenantId, isnull(userId,'''') [userId],[data], dataVersion, TaskName,processType,aet.ProcessorName,isScheduled, isnull(aet.Status,aqt.Status) status, queuedTime, aet.ProcessStartTime processStartTime, aet.ProcessEndTime processEndTime,checksum,isnull(aet.RecentUpdateTime,aqt.RecentUpdateTime) recentUpdateTime,isnull(case isScheduled  when ''1'' then (select frequency from ml_ScheduledTask where id= aqt.Id)  else '''' end,'''') as frequency, isnull(case isScheduled  when ''1'' then (select lastRunStatus from ml_ScheduledTask where id= aqt.Id) else '''' end,'''') as lastRunStatus, isnull(createdBy,'''') as createdBy, createdDate, isnull(modifiedBy,'''') as modifiedBy, modifiedDate 
			From ml_QueuedTask aqt left join ml_ExecuteTask  aet  on  aqt.Id=aet.TaskId  
			Where  isScheduled=''false''  and '+ @whereclause + '
			Union all 
			Select id,queueId='''',isnull(tenantId,'''') tenantId, isnull(userId,'''') [userId],[data], dataVersion, ScheduleName,processType,'''' processorName,isScheduled=''1'',status,ScheduledTime queuedTime, startTime processStartTime, endTime processEndTime,checksum,recentUpdateTime, isnull(frequency,'''') frequency , isnull(lastRunStatus,'''') as lastRunStatus, isnull(createdBy,'''') as createdBy, createdDate, isnull(modifiedBy,'''') as modifiedBy, modifiedDate 
			From ml_ScheduledTask [nolock]  
			Where  '+ @whereclause + '
			Union all 
			Select aqt.Id,queueId=aqt.Id,isnull(tenantId,'''') tenantId, isnull(userId,'''') [userId],[data], dataVersion, TaskName,processType,aet.ProcessorName,isScheduled, isnull(aet.Status,aqt.Status) status, queuedTime, aet.ProcessStartTime processStartTime, aet.ProcessEndTime processEndTime,checksum,isnull(aet.RecentUpdateTime,aqt.RecentUpdateTime) recentUpdateTime, isnull(case isScheduled  when ''1'' then (select frequency from ml_ScheduledTask where id= aqt.Id)  else '''' end,'''') as frequency, isnull(case isScheduled  when ''1'' then (select lastRunStatus from ml_ScheduledTask where id= aqt.Id) else '''' end,'''') as lastRunStatus, isnull(createdBy,'''') as createdBy, createdDate, isnull(modifiedBy,'''') as modifiedBy, modifiedDate 
			From ml_CompletedTask aqt left join ml_ExecuteTask  aet  on  aqt.Id=aet.TaskId 
			Where  isScheduled=''false''  and '+ @whereclause + '
			Union all 
			Select id=ScheduledTaskid,queueId=queuedTaskid,isnull(tenantId,'''') tenantId, isnull(userId,'''') [userId],[data], dataVersion, TaskName,processType,aet.ProcessorName, isScheduled, isnull(aet.Status,aqt.Status) status, queuedTime, aet.ProcessStartTime processStartTime, aet.ProcessEndTime processEndTime,checksum,isnull(aet.RecentUpdateTime,aqt.RecentUpdateTime) recentUpdateTime, isnull(case isScheduled  when ''1'' then (select frequency from ml_ScheduledTask where id= ScheduledTaskid or id= queuedTaskid)  else '''' end,'''') as frequency, isnull(case isScheduled  when ''1'' then (select lastRunStatus from ml_ScheduledTask where id= ScheduledTaskid or id= queuedTaskid) else '''' end ,'''')as lastRunStatus, isnull(createdBy,'''') as createdBy, createdDate, isnull(modifiedBy,'''') as modifiedBy, modifiedDate 
			From ml_QueuedTask aqt  join ml_ScheduledQueuedTasks sqt on aqt.Id=queuedTaskid  left join ml_ExecuteTask  aet  on  aqt.Id=aet.TaskId  
			Where isScheduled=''true'' and' + @whereclause + '
			Union all 
			Select id=ScheduledTaskid,queueId=queuedTaskid,isnull(tenantId,'''') tenantId, isnull(userId,'''') [userId],[data], dataVersion, TaskName,processType,aet.ProcessorName, isScheduled, isnull(aet.Status,aqt.Status) status, queuedTime, aet.ProcessStartTime processStartTime, aet.ProcessEndTime processEndTime,checksum,isnull(aet.RecentUpdateTime,aqt.RecentUpdateTime) recentUpdateTime, isnull(case isScheduled  when ''1'' then (select frequency from ml_ScheduledTask where id= ScheduledTaskid or id= queuedTaskid)  else '''' end,'''') as frequency, isnull(case isScheduled  when ''1'' then (select lastRunStatus from ml_ScheduledTask where id= ScheduledTaskid or id= queuedTaskid) else '''' end ,'''')as lastRunStatus, isnull(createdBy,'''') as createdBy, createdDate, isnull(modifiedBy,'''') as modifiedBy, modifiedDate 
			From ml_CompletedTask aqt  join ml_ScheduledQueuedTasks on aqt.Id=queuedTaskid  left join ml_ExecuteTask  aet  on  aqt.Id=aet.TaskId  
			Where  isScheduled=''true'' and '+ @whereclause + ''
		)
End
GO
/****** Object:  Trigger [dbo].[tr_ml_CompletedTask]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create trigger [dbo].[tr_ml_CompletedTask]
   On  [dbo].[ml_CompletedTask]
   After delete
As 
Begin
	
	-- if a delete occurred
	If exists(select id from deleted) and not exists(select id from inserted)
	Begin
	--Insert into ml_CompletedTaskHistory
	--Select * from deleted
	
	Delete from ml_ExecuteTask where TaskId in(select id from deleted)
	Delete from ml_Log where TaskId in(select id from deleted)
End
     
End
GO
ALTER TABLE [dbo].[ml_CompletedTask] ENABLE TRIGGER [tr_ml_CompletedTask]
GO
/****** Object:  Trigger [dbo].[tr_ml_ExecuteTask]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create trigger [dbo].[tr_ml_ExecuteTask]
   On  [dbo].[ml_ExecuteTask]
   After delete --insert,update
As 
Begin
print 'hello'
-- if a delete occurred
	--If exists(select id from deleted) and not exists(select id from inserted)
	
	--Begin
	-- Insert into ml_ExecuteTaskHistory select * from deleted
	--End
	
	
---- if a delete occurred
--	if exists(select id from deleted) and not exists(select id from inserted)
	
--	begin
--	 insert into ml_ExecuteTaskHistory select * from deleted
--	end
--	-- if an insert occurred
--	else if exists(select id from inserted) and not exists(select id from deleted)
--	begin
--	 insert into ml_ExecuteTaskHistory select * from inserted
--	end

  
--	--update occurred
--	else if exists(select id from deleted) and exists(select id from inserted)
--	begin
--	 --insert into ml_ExecuteTaskHistory select * from deleted
--	 insert into ml_ExecuteTaskHistory select * from inserted
--	end
	
End

GO
ALTER TABLE [dbo].[ml_ExecuteTask] ENABLE TRIGGER [tr_ml_ExecuteTask]
GO
/****** Object:  Trigger [dbo].[tr_ml_Log]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create trigger [dbo].[tr_ml_Log]
   On  [dbo].[ml_Log]
   After delete
As 
Begin
print 'hello';	
	---- if a delete occurred
	--If exists(select id from deleted) and not exists(select id from inserted)
	--Begin
	--Insert into ml_LogHistory
	--Select * from deleted
	--End
     
End
GO
ALTER TABLE [dbo].[ml_Log] ENABLE TRIGGER [tr_ml_Log]
GO
/****** Object:  Trigger [dbo].[tr_ml_QueuedTask]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create trigger [dbo].[tr_ml_QueuedTask]
   On  [dbo].[ml_QueuedTask]
   After insert,update
As 
Begin
	Set nocount on;
	Declare @status nvarchar(100)
	Declare @processStartTime datetime
	Declare @processEndTime datetime
	Declare @recentUpdateTime datetime
	Declare @isScheduled bit
	Declare @SchedulerId  nvarchar(64)
	Declare @id  nvarchar(64)
	
	Select @id=id, @isScheduled=isScheduled, @processStartTime=processStartTime,
	@processEndTime=processEndTime,@recentUpdateTime=recentUpdateTime, 
	@status=upper(status) from inserted
	
	
	Select @SchedulerId=null
	-- if a delete occurred
	If exists(select id from deleted) and not exists(select id from inserted)
	Begin
		Select @SchedulerId=null
	--do nothing
	End
	-- if an insert occurred
	Else if exists(select id from inserted) and not exists(select id from deleted)
	Begin
	 Insert into ml_ServerQueues (queueId) values(@id)
	End
	--update occurred
	Else if exists(select id from deleted) and exists(select id from inserted)
	Begin
		If(@status in('completed','aborted','userAborted','processStarted') and @isScheduled='1' )
		Begin
			Select @SchedulerId=ScheduledTaskid from ml_ScheduledQueuedTasks where  queuedTaskid=@id
		End
		
		If(@status in('queued','ScheduledQueued'))
		Begin
			Delete from ml_ExecuteTask where TaskId=@id
		End
		If(@status in('completed','aborted','userAborted'))
		
		-- if an update occurred with any of completed,aborted,userAborted status
		
		Begin    
			Insert into ml_CompletedTask(
			[id],
			[tenantId],
			[userId],
			[data],
			[dataVersion],
			[TaskName],
			[processType],
			[isScheduled],
			[status],
			[queuedTime],
			[processStartTime],
			[processEndTime],
			[checksum],
			[recentUpdateTime],
			[createdBy]
			)
			Select 
				[id],
				[tenantId],
				[userId],
				[data],
				[dataVersion],
				[TaskName],
				[processType],
				[isScheduled],
				[status],
				[queuedTime],
				[processStartTime],
				[processEndTime],
				[checksum],
				[recentUpdateTime],
				[createdBy]
			from inserted
			--delete from  ml_QueuedTask	 & 	ml_ServerQueues
			Delete from ml_QueuedTask where id in(select id from inserted)
			Delete from ml_ServerQueues where queueId in(select id from inserted)
			
		 End
	     
		If(@SchedulerId is not null)
		Begin
			If(@status like 'processStarted')
			Begin
				Select @status=null
			End
			Update ml_ScheduledTask set lastRunStatus=isnull(@status,lastRunStatus),
			StartTime=@processStartTime,endTime=@processEndTime,recentUpdateTime=@recentUpdateTime
			Where id=@SchedulerId
		End 
    End 
     
End
GO
ALTER TABLE [dbo].[ml_QueuedTask] ENABLE TRIGGER [tr_ml_QueuedTask]
GO
/****** Object:  Trigger [dbo].[tr_ml_ScheduledTask]    Script Date: 1/3/2021 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create trigger [dbo].[tr_ml_ScheduledTask]
   On  [dbo].[ml_ScheduledTask]
   After delete
As 
Begin
print('hello');	
--	-- if a delete occurred
--	If exists(select id from deleted) and not exists(select id from inserted)
--	Begin
--	Insert into ml_ScheduledTaskHistory
--	Select * from deleted
--	End
     
End
GO
ALTER TABLE [dbo].[ml_ScheduledTask] ENABLE TRIGGER [tr_ml_ScheduledTask]
GO
