/*    ==scripting parameters==

    Source server version : sql server 2019 (15.0.2000)
    Source database engine edition : microsoft sql server enterprise edition
    Source database engine type : standalone sql server

    Target server version : sql server 2019
    Target database engine edition : microsoft sql server enterprise edition
    Target database engine type : standalone sql server
*/

/****** object:  trigger [ml_scheduledTaskTrigger]    script date: 12/31/2020 9:27:53 am ******/
Drop trigger if exists [dbo].[tr_ml_ScheduledTask]
Go
/****** object:  trigger [tr_ml_QueuedTask]    script date: 12/31/2020 9:27:53 am ******/
Drop trigger if exists [dbo].[tr_ml_QueuedTask]
Go
/****** object:  trigger [tr_ml_Log]    script date: 12/31/2020 9:27:53 am ******/
Drop trigger if exists [dbo].[tr_ml_Log]
Go
/****** object:  trigger [tr_ml_ExecuteTask]    script date: 12/31/2020 9:27:53 am ******/
Drop trigger if exists [dbo].[tr_ml_ExecuteTask]
Go
/****** object:  trigger [tr_ml_CompletedTask]    script date: 12/31/2020 9:27:53 am ******/
Drop trigger if exists [dbo].[tr_ml_CompletedTask]
Go
/****** object:  storedprocedure [dbo].[usp_ml_VerifyAndUpdateWebTaskStatus]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_VerifyAndUpdateWebTaskStatus]
Go
/****** object:  storedprocedure [dbo].[usp_ml_DeleteExipiredScheduledTasks]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_DeleteExipiredScheduledTasks]
Go
/****** object:  storedprocedure [dbo].[usp_ml_UpdateScheduledTask]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_UpdateScheduledTask]
Go
/****** object:  storedprocedure [dbo].[usp_ml_UpdateRunningJobs]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_UpdateRunningJobs]
Go
/****** object:  storedprocedure [dbo].[usp_ml_UpdateRegisteredTaskService]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_UpdateRegisteredTaskService]
Go
/****** object:  storedprocedure [dbo].[usp_ml_UpdateQueuedTask]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_UpdateQueuedTask]
Go
/****** object:  storedprocedure [dbo].[usp_ml_SuspendRegisteredTaskService]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_SuspendRegisteredTaskService]
Go
/****** object:  storedprocedure [dbo].[usp_ml_ResumeRegisteredTaskService]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_ResumeRegisteredTaskService]
Go
/****** object:  storedprocedure [dbo].[usp_ml_ResetServerComponents]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_ResetServerComponents]
Go
/****** object:  storedprocedure [dbo].[usp_ml_RemoveScheduledQueuedTask]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_usp_ml_RemoveScheduledQueuedTask]
Go
/****** object:  storedprocedure [dbo].[usp_ml_RegisterTaskServiceOld]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_usp_ml_RegisterTaskService_Old]
Go
/****** object:  storedprocedure [dbo].[usp_usp_ml_RegisterTaskService]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_RegisterTaskService]
Go
/****** object:  storedprocedure [dbo].[usp_ml_IsTaskTypeRegistered]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_IsTaskTypeRegistered]
Go
/****** object:  storedprocedure [dbo].[usp_ml_IsTaskTypeJobsInProcess]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_IsTaskTypeJobsInProcess]
Go
/****** object:  storedprocedure [dbo].[usp_ml_IsTaskInProcess]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_IsTaskInProcess]
Go
/****** object:  storedprocedure [dbo].[usp_ml_IsTaskExists]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_usp_ml_IsTaskExists]
Go
/****** object:  storedprocedure [dbo].[musp_ml_GetUnregisteredTasks]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_GetUnregisteredTasks]
Go
/****** object:  storedprocedure [dbo].[ml_Gettaskstatusdetails]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_GetTaskStatusDetails]
Go
/****** object:  storedprocedure [dbo].[ml_Gettaskstatus]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_GetTaskStatus]
Go
/****** object:  storedprocedure [dbo].[usp_ml_GetTaskProcessorType]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_GetTaskProcessorType]
Go
/****** object:  storedprocedure [dbo].[usp_ml_GetTaskObjectType]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_GetTaskObjectType]
Go
/****** object:  storedprocedure [dbo].[usp_ml_GetTaskObjectSchema]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_GetTaskObjectSchema]
Go
/****** object:  storedprocedure [dbo].[usp_ml_GetTaskListByProperty]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_GetTasklistByProperty]
Go
/****** object:  storedprocedure [dbo].[usp_ml_GetTasklist]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_usp_ml_GetTasklist]
Go
/****** object:  storedprocedure [dbo].[usp_ml_GetTaskdataById]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_GetTaskdataById]
Go
/****** object:  storedprocedure [dbo].[usp_ml_GetTaskById]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_GetTaskById]
Go
/****** object:  storedprocedure [dbo].[usp_ml_GetRegisteredSuspendedTasks]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_GetRegisteredSuspendedTasks]
Go
/****** object:  storedprocedure [dbo].[usp_ml_GetSchedulerStatus]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_GetSchedulerStatus]
Go
/****** object:  storedprocedure [dbo].[ml_Getscheduledtasktypenextslottime]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_GetScheduledTaskTypenExtSlotTime]
Go
/****** object:  storedprocedure [dbo].[ml_GetscheduledTasklist]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_GetScheduledTasklist]
Go
/****** object:  storedprocedure [dbo].[usp_ml_GetScheduledTaskById]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_GetScheduledTaskById]
Go
/****** object:  storedprocedure [dbo].[usp_ml_GetRegisteredTasks]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_GetRegisteredTasks]
Go
/****** object:  storedprocedure [dbo].[usp_ml_GetRegisteredTaskImplementationType]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_GetRegisteredTaskImplementationType]
Go
/****** object:  storedprocedure [dbo].[usp_ml_Deletetask]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_Deletetask]
Go
/****** object:  storedprocedure [dbo].[usp_ml_DeleteScheduledtask]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_DeleteScheduledtask]
Go
/****** object:  storedprocedure [dbo].[usp_ml_DeleteRegisteredTaskService]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_DeleteRegisteredTaskService]
Go
/****** object:  storedprocedure [dbo].[usp_ml_CheckDuplicateTaskInQueue]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_CheckDuplicateTaskInQueue]
Go
/****** object:  storedprocedure [dbo].[usp_ml_AddTaskToQueue]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_AddTaskToQueue]
Go
/****** object:  storedprocedure [dbo].[usp_ml_AddScheduletask]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_AddScheduletask]
Go
/****** object:  storedprocedure [dbo].[usp_ml_AddScheduledTaskToQueueOld]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_AddScheduledTaskToQueueOld]
Go
/****** object:  storedprocedure [dbo].[usp_ml_AddscheduledTaskToQueue_Old]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_AddscheduledTaskToQueue_Old]
Go
/****** object:  storedprocedure [dbo].[usp_ml_AddScheduledTaskToQueue]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_AddScheduledTaskToQueue]
Go
/****** object:  storedprocedure [dbo].[usp_ml_AddAuditRecord]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_AddAuditRecord]
Go
/****** object:  storedprocedure [dbo].[usp_ml_AbortScheduledTask]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_AbortScheduledTask]
Go
/****** object:  storedprocedure [dbo].[usp_ml_TruncateTasks]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_TruncateTasks]
Go
If  exists (select * from sys.Objects where object_Id = object_Id(N'[dbo].[ml_ServerQueues]') and type in (N'u'))
Alter table [dbo].[ml_ServerQueues] drop constraint if exists [dfml_ServerQueuesTimeStamp]
Go
If  exists (select * from sys.Objects where object_Id = object_Id(N'[dbo].[ml_Registration]') and type in (N'u'))
Alter table [dbo].[ml_Registration] drop constraint if exists [dfml_RegistrationWaitOneTimeout]
Go
If  exists (select * from sys.Objects where object_Id = object_Id(N'[dbo].[ml_Registration]') and type in (N'u'))
Alter table [dbo].[ml_Registration] drop constraint if exists [dfml_RegistrationIsQueueable]
Go
If  exists (select * from sys.Objects where object_Id = object_Id(N'[dbo].[ml_Registration]') and type in (N'u'))
Alter table [dbo].[ml_Registration] drop constraint if exists [dfml_RegistrationIsSchedulable]
Go
If  exists (select * from sys.Objects where object_Id = object_Id(N'[dbo].[ml_Log]') and type in (N'u'))
Alter table [dbo].[ml_Log] drop constraint if exists [dfml_LogTimeStamp]
Go
/****** object:  index [queuedTaskidUnique]    script date: 12/31/2020 9:27:53 am ******/
If  exists (select * from sys.Objects where object_Id = object_Id(N'[dbo].[ScheduledQueuedTasks]') and type in (N'u'))
Alter table [dbo].[ScheduledQueuedTasks] drop constraint if exists [queuedTaskidUnique]
Go
/****** object:  table [dbo].[ml_ScheduledQueuedTasks]    script date: 12/31/2020 9:27:53 am ******/
Drop table if exists [dbo].[ml_ScheduledQueuedTasks]
Go
/****** object:  table [dbo].[readings]    script date: 12/31/2020 9:27:53 am ******/
Drop table if exists [dbo].[readings]
Go
/****** object:  table [dbo].[ml_TaskprocessorExecResults]    script date: 12/31/2020 9:27:53 am ******/
Drop table if exists [dbo].[ml_TaskprocessorExecResults]
Go
/****** object:  table [dbo].[ml_ServerQueues]    script date: 12/31/2020 9:27:53 am ******/
Drop table if exists [dbo].[ml_ServerQueues]
Go
--/****** object:  table [dbo].[ml_ScheduledTaskHistory]    script date: 12/31/2020 9:27:53 am ******/
--Drop table if exists [dbo].[ml_ScheduledTaskHistory]
--Go
/****** object:  table [dbo].[ml_ScheduledTask]    script date: 12/31/2020 9:27:53 am ******/
Drop table if exists [dbo].[ml_ScheduledTask]
Go
/****** object:  table [dbo].[ml_RegistrationUnregistered]    script date: 12/31/2020 9:27:53 am ******/
Drop table if exists [dbo].[ml_RegistrationUnregistered]
Go
/****** object:  table [dbo].[ml_RegistrationProcessorInfo]    script date: 12/31/2020 9:27:53 am ******/
Drop table if exists [dbo].[ml_RegistrationProcessorInfo]
Go
/****** object:  table [dbo].[ml_Registration]    script date: 12/31/2020 9:27:53 am ******/
Drop table if exists [dbo].[ml_Registration]
Go
/****** object:  table [dbo].[ml_QueuedTask]    script date: 12/31/2020 9:27:53 am ******/
Drop table if exists [dbo].[ml_QueuedTask]
Go
--/****** object:  table [dbo].[ml_LogHistory]    script date: 12/31/2020 9:27:53 am ******/
--Drop table if exists [dbo].[ml_LogHistory]
--Go
/****** object:  table [dbo].[ml_Log]    script date: 12/31/2020 9:27:53 am ******/
Drop table if exists [dbo].[ml_Log]
Go
--/****** object:  table [dbo].[ml_ExecuteTaskHistory]    script date: 12/31/2020 9:27:53 am ******/
--Drop table if exists [dbo].[ml_ExecuteTaskHistory]
--Go
/****** object:  table [dbo].[ml_ExecuteTask]    script date: 12/31/2020 9:27:53 am ******/
Drop table if exists [dbo].[ml_ExecuteTask]
Go
--/****** object:  table [dbo].[ml_CompletedTaskHistory]    script date: 12/31/2020 9:27:53 am ******/
--Drop table if exists [dbo].[ml_CompletedTaskHistory]
--Go
/****** object:  table [dbo].[ml_CompletedTask]    script date: 12/31/2020 9:27:53 am ******/
Drop table if exists [dbo].[ml_CompletedTask]
Go
/****** object:  userdefinedfunction [dbo].[getvaliddate]    script date: 12/31/2020 9:27:53 am ******/
Drop function if exists [dbo].[udf_GetValidDate]
Go
/****** object:  userdefinedfunction [dbo].[udf_GetValidDate]    script date: 12/31/2020 9:27:53 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
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
Go
/****** object:  table [dbo].[ml_CompletedTask]    script date: 12/31/2020 9:27:53 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
Create table [dbo].[ml_CompletedTask](
	[id] [nvarchar](64) not null,
	[tenantId] [nvarchar](64) not null,
	[userId] [nvarchar](64) not null,
	[data] [xml] not null,
	[dataVersion] [nvarchar](50) not null,
	[TaskName] [nvarchar](50) not null,
	[processType] [nvarchar](50) not null,
	[isScheduled] [bit] not null,
	[status] [nvarchar](100) not null,
	[queuedTime] [datetime] null,
	[processStartTime] [datetime] null,
	[processEndTime] [datetime] null,
	[checksum] [nvarchar](64) not null,
	[recentUpdateTime] [datetime] not null,
	[createdBy] [nvarchar](256) null,
	[createdDate] [datetime] null,
	[modifiedBy] [nvarchar](256) null,
	[modifiedDate] [datetime] null,
   Constraint [pkml_CompletedTask] primary key clustered 
   (
	  [id] asc
   )
   WITH 
   (
      pad_Index = off, statistics_Norecompute = off, ignore_Dup_Key = off, allow_Row_Locks = on, allow_Page_Locks = on, 
	  optimize_For_Sequential_Key = off
   ) on [primary],

	[ValidFrom] datetime2 (0) GENERATED ALWAYS AS ROW START,
    [ValidTo] datetime2 (0) GENERATED ALWAYS AS ROW END,

	PERIOD FOR SYSTEM_TIME (ValidFrom, ValidTo)
   ) ON [primary] textimage_On [primary]
   WITH
   (
     SYSTEM_VERSIONING = ON
     (
       HISTORY_TABLE = [dbo].[ml_ml_CompletedTaskHistory],
       HISTORY_RETENTION_PERIOD = 6 MONTHS
     )
   )
Go
/****** object:  table [dbo].[ml_CompletedTaskHistory]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
--Create table [dbo].[ml_CompletedTaskHistory](
--	[id] [nvarchar](64) not null,
--	[tenantId] [nvarchar](64) not null,
--	[userId] [nvarchar](64) not null,
--	[data] [xml] not null,
--	[dataVersion] [nvarchar](50) not null,
--	[TaskName] [nvarchar](50) not null,
--	[processType] [nvarchar](50) not null,
--	[isScheduled] [bit] not null,
--	[status] [nvarchar](100) not null,
--	[queuedTime] [datetime] null,
--	[processStartTime] [datetime] null,
--	[processEndTime] [datetime] null,
--	[checksum] [nvarchar](64) not null,
--	[recentUpdateTime] [datetime] not null,
--	[createdBy] [nvarchar](256) null,
--	[createdDate] [datetime] null,
--	[modifiedBy] [nvarchar](256) null,
--	[modifiedDate] [datetime] null
--) on [primary] textimage_On [primary]
--Go
/****** object:  table [dbo].[ml_ExecuteTask]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
Create table [dbo].[ml_ExecuteTask](
	[id] [numeric](18, 0) identity(1,1) not null,
	[TaskId] [nvarchar](64) not null,
	[processorName] [nvarchar](500) not null,
	[status] [nvarchar](100) not null,
	[processStartTime] [datetime] null,
	[processEndTime] [datetime] null,
	[recentUpdateTime] [datetime] not null,
	Primary key clustered 
	(
		[id] asc
	)
	WITH 
	(
		pad_Index = off, statistics_Norecompute = off, ignore_Dup_Key = off, allow_Row_Locks = on, allow_Page_Locks = on, 
		optimize_For_Sequential_Key = off
	) on [primary],

	[ValidFrom] datetime2 (0) GENERATED ALWAYS AS ROW START,
    [ValidTo] datetime2 (0) GENERATED ALWAYS AS ROW END,

	PERIOD FOR SYSTEM_TIME (ValidFrom, ValidTo)
   ) ON [primary] 
   WITH
   (
     SYSTEM_VERSIONING = ON
     (
       HISTORY_TABLE = [dbo].[ml_ExecuteTaskHistory],
       HISTORY_RETENTION_PERIOD = 6 MONTHS
     )
   )
Go
/****** object:  table [dbo].[ml_ExecuteTaskHistory]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
--Create table [dbo].[ml_ExecuteTaskHistory](
--	[id] [numeric](18, 0) not null,
--	[TaskId] [nvarchar](64) not null,
--	[processorName] [nvarchar](500) not null,
--	[status] [nvarchar](100) not null,
--	[processStartTime] [datetime] null,
--	[processEndTime] [datetime] null,
--	[recentUpdateTime] [datetime] not null
--) on [primary]
--Go
/****** object:  table [dbo].[ml_Log]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
Create table [dbo].[ml_Log](
	[id] [numeric](18, 0) identity(1,1) not null,
	[TaskId] [nvarchar](64) not null,
	[logType] [nvarchar](50) not null,
	[methodName] [nvarchar](50) null,
	[logMessage] [nvarchar](max) not null,
	[timeStamp] [datetime] null,
	Constraint [pkml_Log] primary key clustered 
	(
		[id] asc
	)
	WITH 
	(
		pad_Index = off, statistics_Norecompute = off, ignore_Dup_Key = off, allow_Row_Locks = on, allow_Page_Locks = on, 
		optimize_For_Sequential_Key = off
	)on [primary],

	[ValidFrom] datetime2 (0) GENERATED ALWAYS AS ROW START,
    [ValidTo] datetime2 (0) GENERATED ALWAYS AS ROW END,

	PERIOD FOR SYSTEM_TIME (ValidFrom, ValidTo)
   ) ON [primary] textimage_On [primary]
   WITH
   (
     SYSTEM_VERSIONING = ON
     (
       HISTORY_TABLE = [dbo].[ml_LogHistory],
       HISTORY_RETENTION_PERIOD = 6 MONTHS
     )
   )
Go
/****** object:  table [dbo].[ml_LogHistory]    script date: 12/31/2020 9:27:54 am ******/
--Set ansi_Nulls on
--Go
--Set quoted_Identifier on
--Go
--Create table [dbo].[ml_LogHistory](
--	[id] [numeric](18, 0) not null,
--	[TaskId] [nvarchar](64) not null,
--	[logType] [nvarchar](50) not null,
--	[methodName] [nvarchar](50) null,
--	[logMessage] [nvarchar](max) not null,
--	[timeStamp] [datetime] null
--) on [primary] textimage_On [primary]
--Go
/****** object:  table [dbo].[ml_QueuedTask]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
Create table [dbo].[ml_QueuedTask](
	[id] [nvarchar](64) not null,
	[tenantId] [nvarchar](64) not null,
	[userId] [nvarchar](64) not null,
	[data] [xml] not null,
	[dataVersion] [nvarchar](50) not null,
	[TaskName] [nvarchar](50) not null,
	[processType] [nvarchar](50) not null,
	[isScheduled] [bit] not null,
	[status] [nvarchar](100) not null,
	[queuedTime] [datetime] null,
	[processStartTime] [datetime] null,
	[processEndTime] [datetime] null,
	[checksum] [nvarchar](64) not null,
	[recentUpdateTime] [datetime] not null,
	[createdBy] [nvarchar](256) null,
	[createdDate] [datetime] null,
	[modifiedBy] [nvarchar](256) null,
	[modifiedDate] [datetime] null,
 Constraint [pkml_QueuedTask] primary key clustered 
(
	[id] asc
)with (pad_Index = off, statistics_Norecompute = off, ignore_Dup_Key = off, allow_Row_Locks = on, allow_Page_Locks = on, optimize_For_Sequential_Key = off) on [primary]
) on [primary] textimage_On [primary]
Go
/****** object:  table [dbo].[ml_Registration]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
Create table [dbo].[ml_Registration](
	[id] [nvarchar](64) not null,
	[TaskType] [nvarchar](64) not null,
	[implementationType] [nvarchar](50) not null,
	[url] [nvarchar](512) null,
	[TaskVersion] [nvarchar](256) null,
	[TaskObjectType] [nvarchar](max) not null,
	[TaskProcessorType] [nvarchar](max) null,
	[TaskObjectSchema] [xml] not null,
	[isActive] [bit] not null,
	[isSchedulable] [bit] not null,
	[isQueueable] [bit] not null,
	[maxJobs] [int] not null,
	[currentJobs] [int] not null,
	[methodName] [nvarchar](500) null,
	[waitOneTimeout] [numeric](8, 0) null,
	[createdBy] [nvarchar](256) null,
	[createdDate] [datetime] null,
	[modifiedBy] [nvarchar](256) null,
	[modifiedDate] [datetime] null,
	[platformTarget] [nvarchar](10) null,
	[SchedulerManager] [nvarchar](50) null,
	[registryConfigValues] [xml] null,
 Constraint [pkml_Registration] primary key clustered 
(
	[TaskType] asc
)with (pad_Index = off, statistics_Norecompute = off, ignore_Dup_Key = off, allow_Row_Locks = on, allow_Page_Locks = on, optimize_For_Sequential_Key = off) on [primary]
) on [primary] textimage_On [primary]
Go
/****** object:  table [dbo].[ml_RegistrationProcessorInfo]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
Create table [dbo].[ml_RegistrationProcessorInfo](
	[TaskType] [nvarchar](64) not null,
	[processorName] [nvarchar](500) null,
	[processorBinaryData] [varbinary](max) not null,
	[version] [nvarchar](256) not null,
	[createdDate] [datetime] null,
	[modifiedDate] [datetime] null,
	[platformTarget] [nvarchar](10) null
) on [primary] textimage_On [primary]
Go
/****** object:  table [dbo].[ml_RegistrationUnregistered]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
Create table [dbo].[ml_RegistrationUnregistered](
	[id] [nvarchar](64) not null,
	[TaskType] [nvarchar](64) not null,
	[implementationType] [nvarchar](50) not null,
	[url] [nvarchar](512) null,
	[TaskVersion] [nvarchar](256) null,
	[TaskObjectType] [nvarchar](max) not null,
	[TaskProcessorType] [nvarchar](max) null,
	[TaskObjectSchema] [xml] not null,
	[isActive] [bit] not null,
	[isSchedulable] [bit] not null,
	[isQueueable] [bit] not null,
	[maxJobs] [int] not null,
	[currentJobs] [int] not null,
	[methodName] [nvarchar](500) null,
	[waitOneTimeout] [numeric](8, 0) null,
	[createdBy] [nvarchar](256) null,
	[createdDate] [datetime] null,
	[modifiedBy] [nvarchar](256) null,
	[modifiedDate] [datetime] null,
	[platformTarget] [nvarchar](10) null
) on [primary] textimage_On [primary]
Go
/****** object:  table [dbo].[ml_ScheduledTask]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
Create table [dbo].[ml_ScheduledTask](
	[id] [nvarchar](64) not null,
	[tenantId] [nvarchar](64) not null,
	[userId] [nvarchar](64) not null,
	[data] [xml] not null,
	[dataVersion] [nvarchar](50) not null,
	[ScheduleName] [nvarchar](50) not null,
	[processType] [nvarchar](50) not null,
	[frequency] [nvarchar](50) not null,
	[ScheduledTime] [datetime] not null,
	[status] [nvarchar](100) not null,
	[lastRunStatus] [nvarchar](100) null,
	[startTime] [datetime] null,
	[endTime] [datetime] null,
	[checksum] [nvarchar](64) not null,
	[recentUpdateBy] [nvarchar](50) not null,
	[recentUpdateTime] [datetime] not null,
	[createdBy] [nvarchar](256) null,
	[createdDate] [datetime] null,
	[modifiedBy] [nvarchar](256) null,
	[modifiedDate] [datetime] null,
	
	Constraint [pkml_ScheduledTask] primary key clustered 
	(
		[id] asc
	)
	WITH
	(
		pad_Index = off, statistics_Norecompute = off, ignore_Dup_Key = off, 
	    allow_Row_Locks = on, allow_Page_Locks = on, optimize_For_Sequential_Key = off
	) on [primary],

	[ValidFrom] datetime2 (0) GENERATED ALWAYS AS ROW START,
    [ValidTo] datetime2 (0) GENERATED ALWAYS AS ROW END,

	PERIOD FOR SYSTEM_TIME (ValidFrom, ValidTo)
   ) ON [primary] textimage_On [primary]
   WITH
   (
     SYSTEM_VERSIONING = ON
     (
       HISTORY_TABLE = [dbo].[ml_ScheduledTaskHistory],
       HISTORY_RETENTION_PERIOD = 6 MONTHS
     )
   )   
Go 
/****** object:  table [dbo].[ml_ScheduledTaskHistory]    script date: 12/31/2020 9:27:54 am ******/
--Set ansi_Nulls on
--Go
--Set quoted_Identifier on
--Go
--Create table [dbo].[ml_ScheduledTaskHistory](
--	[id] [nvarchar](64) not null,
--	[tenantId] [nvarchar](64) not null,
--	[userId] [nvarchar](64) not null,
--	[data] [xml] not null,
--	[dataVersion] [nvarchar](50) not null,
--	[ScheduleName] [nvarchar](50) not null,
--	[processType] [nvarchar](50) not null,
--	[frequency] [nvarchar](50) not null,
--	[ScheduledTime] [datetime] not null,
--	[status] [nvarchar](100) not null,
--	[lastRunStatus] [nvarchar](100) null,
--	[startTime] [datetime] null,
--	[endTime] [datetime] null,
--	[checksum] [nvarchar](64) not null,
--	[recentUpdateBy] [nvarchar](50) not null,
--	[recentUpdateTime] [datetime] not null,
--	[createdBy] [nvarchar](256) null,
--	[createdDate] [datetime] null,
--	[modifiedBy] [nvarchar](256) null,
--	[modifiedDate] [datetime] null
--) on [primary] textimage_On [primary]
--Go
/****** object:  table [dbo].[ml_ServerQueues]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
Create table [dbo].[ml_ServerQueues](
	[queueId] [nvarchar](64) not null,
	[ml_ServerGuid] [nvarchar](64) null,
	[ml_ServerIpAddress] [nvarchar](64) null,
	[timeStamp] [datetime] null,
 Constraint [pkml_ServerQueues] primary key clustered 
(
	[queueId] asc
)with (pad_Index = off, statistics_Norecompute = off, ignore_Dup_Key = off, allow_Row_Locks = on, allow_Page_Locks = on, optimize_For_Sequential_Key = off) on [primary]
) on [primary]
Go
/****** object:  table [dbo].[ml_TaskprocessorExecResults]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
Create table [dbo].[ml_TaskprocessorExecResults](
	[TaskId] [nvarchar](64) not null,
	[isSuccess] [bit] null
) on [primary]
Go
/****** object:  table [dbo].[readings]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
Create table [dbo].[readings](
	[id] [int] identity(1,1) not null,
	[celsius] [int] not null,
	[fahrenheit] [float] null,
	[test] [float] null,
	[test2] [nvarchar](max) null,
Primary key clustered 
(
	[id] asc
)with (pad_Index = off, statistics_Norecompute = off, ignore_Dup_Key = off, allow_Row_Locks = on, allow_Page_Locks = on, optimize_For_Sequential_Key = off) on [primary]
) on [primary] textimage_On [primary]
Go
/****** object:  table [dbo].[ml_ScheduledQueuedTasks]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
Create table [dbo].[ml_ScheduledQueuedTasks](
	[queuedTaskid] [nvarchar](64) not null,
	[ScheduledTaskid] [nvarchar](64) not null
) on [primary]
Go
Insert [dbo].[ml_CompletedTask] ([id], [tenantId], [userId], [data], [dataVersion], [TaskName], [processType], [isScheduled], [status], [queuedTime], [processStartTime], [processEndTime], [checksum], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) values (N'122421b2-5b19-41a5-840a-5681a45caaf0', N'1', N'164', N'<simulationengineTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><Schedules xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><trigger><triggertype>time</triggertype><enabled>true</enabled><endboundary>9996-12-31 23:59:59.9999999</endboundary><executiontimelimit>00:00:00</executiontimelimit><id>d6846086-45b9-4789-bd52-cml9c517e82</id><startboundary>2010-12-26 13:20:00</startboundary><delay>00:00:00</delay><repeatTask>00:00:00</repeatTask><repeatTaskduration>00:00:00</repeatTaskduration><daysinterval>1</daysinterval><randomdelay>00:00:00</randomdelay><daysofweek>sunday</daysofweek><monthsofyear>allmonths</monthsofyear><runonlastweekofmonth>false</runonlastweekofmonth><weeksofmonth>firstweek</weeksofmonth><runonlastdayofmonth>false</runonlastdayofmonth><weeksinterval>1</weeksinterval></trigger></Schedules><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">122421b2-5b19-41a5-840a-5681a45caaf0</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">11554</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">546f21d6-10e6-49e3-81f1-a3894ac36148</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">true</isScheduled><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">process1</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">164</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nagendra@ha.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nagendra@ha.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">simulationprocessLocaldevNucleus</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">nagendra kumar</username><appenvironment>simulationprocessLocaldevNucleus</appenvironment><scenarioid>155</scenarioid><processid>4</processid><userlogin>227.127.124.35.122.255.80.176.232.3.185.175.160.149.109</userlogin><emailerimagesurl>http://download.MachineLearning.Com/emailer/images/</emailerimagesurl><xmlfilelocalpath>c:\atg\MachineLearning.Ml\mlgatwayservices\files\simulationengine</xmlfilelocalpath><xmlfilehttppath>http://localhost/mlgatewayservices/files/simulationengine/</xmlfilehttppath></simulationengineTask>', N'1.0', N'process1', N'simulationprocessLocaldevNucleus', 1, N'aborted', cast(N'2010-12-26 13:36:25.470' as datetime), cast(N'2010-12-26 13:36:25.000' as datetime), cast(N'2010-12-26 13:36:28.000' as datetime), N'?]5??
F?Ko|[xj', cast(N'2010-12-26 13:36:28.000' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:36:25.470' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:36:28.000' as datetime))
Go
Insert [dbo].[ml_CompletedTask] ([id], [tenantId], [userId], [data], [dataVersion], [TaskName], [processType], [isScheduled], [status], [queuedTime], [processStartTime], [processEndTime], [checksum], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) values (N'14c05595-a36f-458b-a86b-03fab412d81a', N'1', N'164', N'<simulationengineTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><Schedules xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><trigger><triggertype>time</triggertype><enabled>true</enabled><endboundary>9996-12-31 23:59:59.9999999</endboundary><executiontimelimit>00:00:00</executiontimelimit><id>d6846086-45b9-4789-bd52-cml9c517e82</id><startboundary>2010-12-26 13:20:00</startboundary><delay>00:00:00</delay><repeatTask>00:00:00</repeatTask><repeatTaskduration>00:00:00</repeatTaskduration><daysinterval>1</daysinterval><randomdelay>00:00:00</randomdelay><daysofweek>sunday</daysofweek><monthsofyear>allmonths</monthsofyear><runonlastweekofmonth>false</runonlastweekofmonth><weeksofmonth>firstweek</weeksofmonth><runonlastdayofmonth>false</runonlastdayofmonth><weeksinterval>1</weeksinterval></trigger></Schedules><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">14c05595-a36f-458b-a86b-03fab412d81a</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">11554</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">546f21d6-10e6-49e3-81f1-a3894ac36148</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">true</isScheduled><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">process1</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">164</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nagendra@ha.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nagendra@ha.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">simulationprocessLocaldevNucleus</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">nagendra kumar</username><appenvironment>simulationprocessLocaldevNucleus</appenvironment><scenarioid>155</scenarioid><processid>4</processid><userlogin>227.127.124.35.122.255.80.176.232.3.185.175.160.149.109</userlogin><emailerimagesurl>http://download.MachineLearning.Com/emailer/images/</emailerimagesurl><xmlfilelocalpath>c:\atg\MachineLearning.Ml\mlgatwayservices\files\simulationengine</xmlfilelocalpath><xmlfilehttppath>http://localhost/mlgatewayservices/files/simulationengine/</xmlfilehttppath></simulationengineTask>', N'1.0', N'process1', N'simulationprocessLocaldevNucleus', 1, N'aborted', cast(N'2010-12-26 13:40:45.453' as datetime), cast(N'2010-12-26 13:40:45.000' as datetime), cast(N'2010-12-26 13:41:36.000' as datetime), N'?]5??
F?Ko|[xj', cast(N'2010-12-26 13:41:36.000' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:40:45.453' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:41:36.000' as datetime))
Go
Insert [dbo].[ml_CompletedTask] ([id], [tenantId], [userId], [data], [dataVersion], [TaskName], [processType], [isScheduled], [status], [queuedTime], [processStartTime], [processEndTime], [checksum], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) values (N'19076aa9-907e-459f-97ef-4a18bdebe9ad', N'1', N'164', N'<simulationengineTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><Schedules xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><trigger><triggertype>time</triggertype><enabled>true</enabled><endboundary>9996-12-31 23:59:59.9999999</endboundary><executiontimelimit>00:00:00</executiontimelimit><id>d6846086-45b9-4789-bd52-cml9c517e82</id><startboundary>2010-12-26 13:20:00</startboundary><delay>00:00:00</delay><repeatTask>00:00:00</repeatTask><repeatTaskduration>00:00:00</repeatTaskduration><daysinterval>1</daysinterval><randomdelay>00:00:00</randomdelay><daysofweek>sunday</daysofweek><monthsofyear>allmonths</monthsofyear><runonlastweekofmonth>false</runonlastweekofmonth><weeksofmonth>firstweek</weeksofmonth><runonlastdayofmonth>false</runonlastdayofmonth><weeksinterval>1</weeksinterval></trigger></Schedules><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">19076aa9-907e-459f-97ef-4a18bdebe9ad</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">11554</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">546f21d6-10e6-49e3-81f1-a3894ac36148</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">true</isScheduled><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">process1</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">164</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nagendra@ha.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nagendra@ha.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">simulationprocessLocaldevNucleus</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">nagendra kumar</username><appenvironment>simulationprocessLocaldevNucleus</appenvironment><scenarioid>155</scenarioid><processid>4</processid><userlogin>227.127.124.35.122.255.80.176.232.3.185.175.160.149.109</userlogin><emailerimagesurl>http://download.MachineLearning.Com/emailer/images/</emailerimagesurl><xmlfilelocalpath>c:\atg\MachineLearning.Ml\mlgatwayservices\files\simulationengine</xmlfilelocalpath><xmlfilehttppath>http://localhost/mlgatewayservices/files/simulationengine/</xmlfilehttppath></simulationengineTask>', N'1.0', N'process1', N'simulationprocessLocaldevNucleus', 1, N'aborted', cast(N'2010-12-26 13:35:29.910' as datetime), cast(N'2010-12-26 13:35:29.000' as datetime), cast(N'2010-12-26 13:35:32.000' as datetime), N'?]5??
F?Ko|[xj', cast(N'2010-12-26 13:35:32.000' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:35:29.910' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:35:32.000' as datetime))
Go
Insert [dbo].[ml_CompletedTask] ([id], [tenantId], [userId], [data], [dataVersion], [TaskName], [processType], [isScheduled], [status], [queuedTime], [processStartTime], [processEndTime], [checksum], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) values (N'32dd24c7-8ec0-4065-ae00-4bd16ded564c', N'1', N'164', N'<simulationengineTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><Schedules xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><trigger><triggertype>time</triggertype><enabled>true</enabled><endboundary>9996-12-31 23:59:59.9999999</endboundary><executiontimelimit>00:00:00</executiontimelimit><id>d6846086-45b9-4789-bd52-cml9c517e82</id><startboundary>2010-12-26 13:20:00</startboundary><delay>00:00:00</delay><repeatTask>00:00:00</repeatTask><repeatTaskduration>00:00:00</repeatTaskduration><daysinterval>1</daysinterval><randomdelay>00:00:00</randomdelay><daysofweek>sunday</daysofweek><monthsofyear>allmonths</monthsofyear><runonlastweekofmonth>false</runonlastweekofmonth><weeksofmonth>firstweek</weeksofmonth><runonlastdayofmonth>false</runonlastdayofmonth><weeksinterval>1</weeksinterval></trigger></Schedules><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">32dd24c7-8ec0-4065-ae00-4bd16ded564c</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">11554</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">546f21d6-10e6-49e3-81f1-a3894ac36148</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">true</isScheduled><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">process1</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">164</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nagendra@ha.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nagendra@ha.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">simulationprocessLocaldevNucleus</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">nagendra kumar</username><appenvironment>simulationprocessLocaldevNucleus</appenvironment><scenarioid>155</scenarioid><processid>4</processid><userlogin>227.127.124.35.122.255.80.176.232.3.185.175.160.149.109</userlogin><emailerimagesurl>http://download.MachineLearning.Com/emailer/images/</emailerimagesurl><xmlfilelocalpath>c:\atg\MachineLearning.Ml\mlgatwayservices\files\simulationengine</xmlfilelocalpath><xmlfilehttppath>http://localhost/mlgatewayservices/files/simulationengine/</xmlfilehttppath></simulationengineTask>', N'1.0', N'process1', N'simulationprocessLocaldevNucleus', 1, N'aborted', cast(N'2010-12-26 13:41:43.673' as datetime), cast(N'2010-12-26 13:41:43.000' as datetime), cast(N'2010-12-26 13:43:44.000' as datetime), N'?]5??
F?Ko|[xj', cast(N'2010-12-26 13:43:44.000' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:41:43.673' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:43:44.000' as datetime))
Go
Insert [dbo].[ml_CompletedTask] ([id], [tenantId], [userId], [data], [dataVersion], [TaskName], [processType], [isScheduled], [status], [queuedTime], [processStartTime], [processEndTime], [checksum], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) values (N'613f806d-dc95-4944-838f-c7152b01c889', N'1', N'164', N'<simulationengineTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><Schedules xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><trigger><triggertype>time</triggertype><enabled>true</enabled><endboundary>9996-12-31 23:59:59.9999999</endboundary><executiontimelimit>00:00:00</executiontimelimit><id>d6846086-45b9-4789-bd52-cml9c517e82</id><startboundary>2010-12-26 13:20:00</startboundary><delay>00:00:00</delay><repeatTask>00:00:00</repeatTask><repeatTaskduration>00:00:00</repeatTaskduration><daysinterval>1</daysinterval><randomdelay>00:00:00</randomdelay><daysofweek>sunday</daysofweek><monthsofyear>allmonths</monthsofyear><runonlastweekofmonth>false</runonlastweekofmonth><weeksofmonth>firstweek</weeksofmonth><runonlastdayofmonth>false</runonlastdayofmonth><weeksinterval>1</weeksinterval></trigger></Schedules><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">613f806d-dc95-4944-838f-c7152b01c889</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">11554</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">546f21d6-10e6-49e3-81f1-a3894ac36148</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">true</isScheduled><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">process1</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">164</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nagendra@ha.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nagendra@ha.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">simulationprocessLocaldevNucleus</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">nagendra kumar</username><appenvironment>simulationprocessLocaldevNucleus</appenvironment><scenarioid>155</scenarioid><processid>4</processid><userlogin>227.127.124.35.122.255.80.176.232.3.185.175.160.149.109</userlogin><emailerimagesurl>http://download.MachineLearning.Com/emailer/images/</emailerimagesurl><xmlfilelocalpath>c:\atg\MachineLearning.Ml\mlgatwayservices\files\simulationengine</xmlfilelocalpath><xmlfilehttppath>http://localhost/mlgatewayservices/files/simulationengine/</xmlfilehttppath></simulationengineTask>', N'1.0', N'process1', N'simulationprocessLocaldevNucleus', 1, N'completed', cast(N'2010-12-26 13:37:41.827' as datetime), cast(N'2010-12-26 13:38:01.000' as datetime), cast(N'2010-12-26 13:40:28.000' as datetime), N'?]5??
F?Ko|[xj', cast(N'2010-12-26 13:40:28.000' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:37:41.827' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:40:28.000' as datetime))
Go
--Insert [dbo].[ml_CompletedTaskHistory] ([id], [tenantId], [userId], [data], [dataVersion], [TaskName], [processType], [isScheduled], [status], [queuedTime], [processStartTime], [processEndTime], [checksum], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) values (N'ec480281-ff31-46da-9110-9c7e06abbf4e', N'3', N'4', N'<mathTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">ec480281-ff31-46da-9110-9c7e06abbf4e</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">0c1d5caf-71e0-40bb-9e42-65846441c3c7</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">ec480281-ff31-46da-9110-9c7e06abbf4e</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">false</isScheduled><description xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask</description><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask_1</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathTask>', N'1.0', N'myTask_1', N'myTask', 0, N'aborted', cast(N'2010-12-21 10:34:41.510' as datetime), cast(N'2010-12-21 10:38:33.000' as datetime), cast(N'2010-12-21 10:40:04.000' as datetime), N'?W?????1?????]??', cast(N'2010-12-21 10:40:04.000' as datetime), N'', cast(N'2010-12-21 10:34:41.730' as datetime), N'', cast(N'2010-12-21 10:40:04.000' as datetime))
--Go
--Insert [dbo].[ml_CompletedTaskHistory] ([id], [tenantId], [userId], [data], [dataVersion], [TaskName], [processType], [isScheduled], [status], [queuedTime], [processStartTime], [processEndTime], [checksum], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) values (N'd667915e-64be-4099-871f-217dfd590d3e', N'3', N'4', N'<mathTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">d667915e-64be-4099-871f-217dfd590d3e</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">888d420a-4814-4543-9dc6-996347a36fda</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">d667915e-64be-4099-871f-217dfd590d3e</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">false</isScheduled><description xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask</description><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask_1_1</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask_1</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathTask>', N'1.0', N'myTask_1_1', N'myTask_1', 0, N'aborted', cast(N'2010-12-21 10:34:58.353' as datetime), cast(N'2010-12-21 10:38:33.000' as datetime), cast(N'2010-12-21 10:40:04.000' as datetime), N'?V0`r\(??????M?', cast(N'2010-12-21 10:40:04.000' as datetime), N'', cast(N'2010-12-21 10:34:58.353' as datetime), N'', cast(N'2010-12-21 10:40:04.000' as datetime))
--Go
--Insert [dbo].[ml_CompletedTaskHistory] ([id], [tenantId], [userId], [data], [dataVersion], [TaskName], [processType], [isScheduled], [status], [queuedTime], [processStartTime], [processEndTime], [checksum], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) values (N'b9a01af0-75ce-4c87-83e0-d28daa606733', N'3', N'4', N'<mathTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">b9a01af0-75ce-4c87-83e0-d28daa606733</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">d197f89c-7425-4ade-a02a-a6de5b50c28e</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">b9a01af0-75ce-4c87-83e0-d28daa606733</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">false</isScheduled><description xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask_2</description><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">2.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask_2_6</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask_2</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathTask>', N'2.0', N'myTask_2_6', N'myTask_2', 0, N'aborted', cast(N'2010-12-21 10:38:21.117' as datetime), cast(N'2010-12-21 10:38:45.000' as datetime), cast(N'2010-12-21 10:40:14.000' as datetime), N'o??3??D??1v??', cast(N'2010-12-21 10:40:14.000' as datetime), N'', cast(N'2010-12-21 10:38:21.113' as datetime), N'', cast(N'2010-12-21 10:40:14.000' as datetime))
--Go
--Insert [dbo].[ml_CompletedTaskHistory] ([id], [tenantId], [userId], [data], [dataVersion], [TaskName], [processType], [isScheduled], [status], [queuedTime], [processStartTime], [processEndTime], [checksum], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) values (N'b362a5e7-2906-4a88-aded-f66cc8a79ff2', N'3', N'4', N'<mathTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">b362a5e7-2906-4a88-aded-f66cc8a79ff2</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">53458e0c-f827-4d78-8ecb-30674391c256</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">b362a5e7-2906-4a88-aded-f66cc8a79ff2</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">false</isScheduled><description xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask</description><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask_5</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathTask>', N'1.0', N'myTask_5', N'myTask', 0, N'completed', cast(N'2010-12-21 10:36:38.693' as datetime), cast(N'2010-12-21 10:38:37.000' as datetime), cast(N'2010-12-21 10:42:27.000' as datetime), N'?W?????1?????]??', cast(N'2010-12-21 10:42:27.000' as datetime), N'', cast(N'2010-12-21 10:36:38.693' as datetime), N'', cast(N'2010-12-21 10:42:27.000' as datetime))
--Go
--Insert [dbo].[ml_CompletedTaskHistory] ([id], [tenantId], [userId], [data], [dataVersion], [TaskName], [processType], [isScheduled], [status], [queuedTime], [processStartTime], [processEndTime], [checksum], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) values (N'81f16816-b5a2-4a13-b0bb-80d4e451c1a4', N'3', N'4', N'<mathTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">81f16816-b5a2-4a13-b0bb-80d4e451c1a4</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">4a2b20cf-1cac-4ac3-a3b2-9f3b2b9b89be</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">81f16816-b5a2-4a13-b0bb-80d4e451c1a4</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">false</isScheduled><description xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask_2</description><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">2.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask_2_2</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask_2</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathTask>', N'2.0', N'myTask_2_2', N'myTask_2', 0, N'aborted', cast(N'2010-12-21 10:38:06.707' as datetime), cast(N'2010-12-21 10:38:39.000' as datetime), cast(N'2010-12-21 10:40:09.000' as datetime), N'o??3??D??1v??', cast(N'2010-12-21 10:40:09.000' as datetime), N'', cast(N'2010-12-21 10:38:06.707' as datetime), N'', cast(N'2010-12-21 10:40:09.000' as datetime))
--Go
--Insert [dbo].[ml_CompletedTaskHistory] ([id], [tenantId], [userId], [data], [dataVersion], [TaskName], [processType], [isScheduled], [status], [queuedTime], [processStartTime], [processEndTime], [checksum], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) values (N'80957c4a-a3a5-4ef3-b1f1-5ad0bd17f307', N'3', N'4', N'<mathTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">80957c4a-a3a5-4ef3-b1f1-5ad0bd17f307</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">f0158084-d2bc-436d-8384-dc850206ee31</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">80957c4a-a3a5-4ef3-b1f1-5ad0bd17f307</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">false</isScheduled><description xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask</description><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask_8</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathTask>', N'1.0', N'myTask_8', N'myTask', 0, N'completed', cast(N'2010-12-21 10:37:25.773' as datetime), cast(N'2010-12-21 10:40:05.000' as datetime), cast(N'2010-12-21 10:44:01.000' as datetime), N'?W?????1?????]??', cast(N'2010-12-21 10:44:01.000' as datetime), N'', cast(N'2010-12-21 10:37:25.770' as datetime), N'', cast(N'2010-12-21 10:44:01.000' as datetime))
--Go
--Insert [dbo].[ml_CompletedTaskHistory] ([id], [tenantId], [userId], [data], [dataVersion], [TaskName], [processType], [isScheduled], [status], [queuedTime], [processStartTime], [processEndTime], [checksum], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) values (N'517b6c9e-b348-4554-a061-2c5f79ecf0a5', N'3', N'4', N'<mathTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">517b6c9e-b348-4554-a061-2c5f79ecf0a5</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">95139c17-817a-4aed-9a4c-9198a5b3bed9</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">517b6c9e-b348-4554-a061-2c5f79ecf0a5</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">false</isScheduled><description xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask</description><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask_3</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathTask>', N'1.0', N'myTask_3', N'myTask', 0, N'completed', cast(N'2010-12-21 10:36:28.790' as datetime), cast(N'2010-12-21 10:38:36.000' as datetime), cast(N'2010-12-21 10:41:26.000' as datetime), N'?W?????1?????]??', cast(N'2010-12-21 10:41:26.000' as datetime), N'', cast(N'2010-12-21 10:36:28.790' as datetime), N'', cast(N'2010-12-21 10:41:26.000' as datetime))
--Go
--Insert [dbo].[ml_CompletedTaskHistory] ([id], [tenantId], [userId], [data], [dataVersion], [TaskName], [processType], [isScheduled], [status], [queuedTime], [processStartTime], [processEndTime], [checksum], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) values (N'3feca64f-5e21-481a-843c-63ed2ef6de22', N'3', N'4', N'<mathTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">3feca64f-5e21-481a-843c-63ed2ef6de22</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">7277cb0a-ab08-470b-be1d-b22c9b2bc8ba</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">3feca64f-5e21-481a-843c-63ed2ef6de22</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">false</isScheduled><description xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask</description><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask_2</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathTask>', N'1.0', N'myTask_2', N'myTask', 0, N'aborted', cast(N'2010-12-21 10:34:47.843' as datetime), cast(N'2010-12-21 10:38:33.000' as datetime), cast(N'2010-12-21 10:40:04.000' as datetime), N'?W?????1?????]??', cast(N'2010-12-21 10:40:04.000' as datetime), N'', cast(N'2010-12-21 10:34:47.840' as datetime), N'', cast(N'2010-12-21 10:40:04.000' as datetime))
--Go
--Insert [dbo].[ml_CompletedTaskHistory] ([id], [tenantId], [userId], [data], [dataVersion], [TaskName], [processType], [isScheduled], [status], [queuedTime], [processStartTime], [processEndTime], [checksum], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) values (N'3349bc90-0ff1-45c0-b448-63d70b02b584', N'4', N'5', N'<mathTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">3349bc90-0ff1-45c0-b448-63d70b02b584</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">7b86caef-613c-4c63-8300-c95f18665b18</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">3349bc90-0ff1-45c0-b448-63d70b02b584</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">false</isScheduled><description xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1</description><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">2.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask_2_1</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">4</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">5</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask_2</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><value1>0</value1><value2>0</value2><sid>2</sid><tid>3</tid></mathTask>', N'2.0', N'myTask_2_1', N'myTask_2', 0, N'completed', cast(N'2010-12-26 09:55:54.567' as datetime), cast(N'2010-12-26 09:55:57.000' as datetime), cast(N'2010-12-26 09:59:07.000' as datetime), N'???>?7e????;,', cast(N'2010-12-26 09:59:07.000' as datetime), N'', cast(N'2010-12-26 09:55:55.120' as datetime), N'', cast(N'2010-12-26 09:59:07.000' as datetime))
--Go
--Insert [dbo].[ml_CompletedTaskHistory] ([id], [tenantId], [userId], [data], [dataVersion], [TaskName], [processType], [isScheduled], [status], [queuedTime], [processStartTime], [processEndTime], [checksum], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) values (N'1dfc70fb-9d7e-43d3-b53c-cb1c7ad3ea8c', N'3', N'4', N'<mathTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1dfc70fb-9d7e-43d3-b53c-cb1c7ad3ea8c</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">f5178dd5-f8d7-48c7-a43c-8b79eaafea03</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1dfc70fb-9d7e-43d3-b53c-cb1c7ad3ea8c</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">false</isScheduled><description xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask</description><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask_7</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathTask>', N'1.0', N'myTask_7', N'myTask', 0, N'completed', cast(N'2010-12-21 10:37:20.580' as datetime), cast(N'2010-12-21 10:40:04.000' as datetime), cast(N'2010-12-21 10:43:12.000' as datetime), N'?W?????1?????]??', cast(N'2010-12-21 10:43:12.000' as datetime), N'', cast(N'2010-12-21 10:37:20.580' as datetime), N'', cast(N'2010-12-21 10:43:12.000' as datetime))
--Go
--Insert [dbo].[ml_CompletedTaskHistory] ([id], [tenantId], [userId], [data], [dataVersion], [TaskName], [processType], [isScheduled], [status], [queuedTime], [processStartTime], [processEndTime], [checksum], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) values (N'13878217-0239-415a-8d5b-a38eb63a0caf', N'3', N'4', N'<mathTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">13878217-0239-415a-8d5b-a38eb63a0caf</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">3afe1684-5ded-4b72-9513-f02e80e94f5d</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">13878217-0239-415a-8d5b-a38eb63a0caf</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">false</isScheduled><description xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask</description><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask_9</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathTask>', N'1.0', N'myTask_9', N'myTask', 0, N'completed', cast(N'2010-12-21 10:37:31.160' as datetime), cast(N'2010-12-21 10:40:07.000' as datetime), cast(N'2010-12-21 10:43:30.000' as datetime), N'?W?????1?????]??', cast(N'2010-12-21 10:43:30.000' as datetime), N'', cast(N'2010-12-21 10:37:31.160' as datetime), N'', cast(N'2010-12-21 10:43:30.000' as datetime))
--Go
--Insert [dbo].[ml_CompletedTaskHistory] ([id], [tenantId], [userId], [data], [dataVersion], [TaskName], [processType], [isScheduled], [status], [queuedTime], [processStartTime], [processEndTime], [checksum], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) values (N'0fb8ec5f-f5a9-4787-9bfa-477a3f2bde5d', N'3', N'4', N'<mathTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">0fb8ec5f-f5a9-4787-9bfa-477a3f2bde5d</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">10e697e0-4161-4d55-8c1c-fac805e79707</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">0fb8ec5f-f5a9-4787-9bfa-477a3f2bde5d</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">false</isScheduled><description xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask_2</description><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">2.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask_2_4</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask_2</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathTask>', N'2.0', N'myTask_2_4', N'myTask_2', 0, N'aborted', cast(N'2010-12-21 10:38:16.513' as datetime), cast(N'2010-12-21 10:38:43.000' as datetime), cast(N'2010-12-21 10:40:12.000' as datetime), N'o??3??D??1v??', cast(N'2010-12-21 10:40:12.000' as datetime), N'', cast(N'2010-12-21 10:38:16.513' as datetime), N'', cast(N'2010-12-21 10:40:12.000' as datetime))
--Go
--Insert [dbo].[ml_CompletedTaskHistory] ([id], [tenantId], [userId], [data], [dataVersion], [TaskName], [processType], [isScheduled], [status], [queuedTime], [processStartTime], [processEndTime], [checksum], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) values (N'0da3968f-bdc4-4244-8c41-048c4a783461', N'1', N'164', N'<simulationengineTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><Schedules xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><trigger><triggertype>time</triggertype><enabled>true</enabled><endboundary>9996-12-31 23:59:59.9999999</endboundary><executiontimelimit>00:00:00</executiontimelimit><id>d6846086-45b9-4789-bd52-cml9c517e82</id><startboundary>2010-12-26 13:20:00</startboundary><delay>00:00:00</delay><repeatTask>00:00:00</repeatTask><repeatTaskduration>00:00:00</repeatTaskduration><daysinterval>1</daysinterval><randomdelay>00:00:00</randomdelay><daysofweek>sunday</daysofweek><monthsofyear>allmonths</monthsofyear><runonlastweekofmonth>false</runonlastweekofmonth><weeksofmonth>firstweek</weeksofmonth><runonlastdayofmonth>false</runonlastdayofmonth><weeksinterval>1</weeksinterval></trigger></Schedules><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">0da3968f-bdc4-4244-8c41-048c4a783461</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">11554</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">546f21d6-10e6-49e3-81f1-a3894ac36148</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">true</isScheduled><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">process1</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">164</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nagendra@ha.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nagendra@ha.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">simulationprocessLocaldevNucleus</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">nagendra kumar</username><appenvironment>simulationprocessLocaldevNucleus</appenvironment><scenarioid>155</scenarioid><processid>4</processid><userlogin>227.127.124.35.122.255.80.176.232.3.185.175.160.149.109</userlogin><emailerimagesurl>http://download.MachineLearning.Com/emailer/images/</emailerimagesurl><xmlfilelocalpath>c:\atg\MachineLearning.Ml\mlgatwayservices\files\simulationengine</xmlfilelocalpath><xmlfilehttppath>http://localhost/mlgatewayservices/files/simulationengine/</xmlfilehttppath></simulationengineTask>', N'1.0', N'process1', N'simulationprocessLocaldevNucleus', 1, N'aborted', cast(N'2010-12-26 13:33:48.117' as datetime), cast(N'2010-12-26 13:33:48.000' as datetime), cast(N'2010-12-26 13:33:51.000' as datetime), N'?]5??
--F?Ko|[xj', cast(N'2010-12-26 13:33:51.000' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:33:48.117' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:33:51.000' as datetime))
--Go
--Insert [dbo].[ml_CompletedTaskHistory] ([id], [tenantId], [userId], [data], [dataVersion], [TaskName], [processType], [isScheduled], [status], [queuedTime], [processStartTime], [processEndTime], [checksum], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) values (N'c708837b-4cf5-4108-a862-255dbe32b3e8', N'3', N'4', N'<mathTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">c708837b-4cf5-4108-a862-255dbe32b3e8</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">665d45c1-90ec-494b-8789-75f2a4021ff6</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">c708837b-4cf5-4108-a862-255dbe32b3e8</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">false</isScheduled><description xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask</description><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask_6</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathTask>', N'1.0', N'myTask_6', N'myTask', 0, N'completed', cast(N'2010-12-21 10:36:43.920' as datetime), cast(N'2010-12-21 10:40:06.000' as datetime), cast(N'2010-12-21 10:43:34.000' as datetime), N'?W?????1?????]??', cast(N'2010-12-21 10:43:34.000' as datetime), N'', cast(N'2010-12-21 10:36:43.920' as datetime), N'', cast(N'2010-12-21 10:43:34.000' as datetime))
--Go
--Insert [dbo].[ml_CompletedTaskHistory] ([id], [tenantId], [userId], [data], [dataVersion], [TaskName], [processType], [isScheduled], [status], [queuedTime], [processStartTime], [processEndTime], [checksum], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) values (N'c63b9bac-568e-4080-867e-a82b540d961b', N'3', N'4', N'<mathTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">c63b9bac-568e-4080-867e-a82b540d961b</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">5371ff0d-be33-4f8f-8fc9-b24d7f4e0362</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">c63b9bac-568e-4080-867e-a82b540d961b</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">false</isScheduled><description xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask</description><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask_1_4</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask_1</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathTask>', N'1.0', N'myTask_1_4', N'myTask_1', 0, N'aborted', cast(N'2010-12-21 10:36:10.560' as datetime), cast(N'2010-12-21 10:38:38.000' as datetime), cast(N'2010-12-21 10:40:08.000' as datetime), N'?V0`r\(??????M?', cast(N'2010-12-21 10:40:08.000' as datetime), N'', cast(N'2010-12-21 10:36:10.560' as datetime), N'', cast(N'2010-12-21 10:40:08.000' as datetime))
--Go
--Insert [dbo].[ml_CompletedTaskHistory] ([id], [tenantId], [userId], [data], [dataVersion], [TaskName], [processType], [isScheduled], [status], [queuedTime], [processStartTime], [processEndTime], [checksum], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) values (N'9b31725b-fd41-46bd-9fee-c296341078af', N'3', N'4', N'<mathTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">9b31725b-fd41-46bd-9fee-c296341078af</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">426cbe39-00c7-47bb-b541-d113bd9f7c6c</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">9b31725b-fd41-46bd-9fee-c296341078af</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">false</isScheduled><description xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask_2</description><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">2.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask_2_3</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask_2</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathTask>', N'2.0', N'myTask_2_3', N'myTask_2', 0, N'aborted', cast(N'2010-12-21 10:38:11.447' as datetime), cast(N'2010-12-21 10:38:42.000' as datetime), cast(N'2010-12-21 10:40:11.000' as datetime), N'o??3??D??1v??', cast(N'2010-12-21 10:40:11.000' as datetime), N'', cast(N'2010-12-21 10:38:11.447' as datetime), N'', cast(N'2010-12-21 10:40:11.000' as datetime))
--Go
--Insert [dbo].[ml_CompletedTaskHistory] ([id], [tenantId], [userId], [data], [dataVersion], [TaskName], [processType], [isScheduled], [status], [queuedTime], [processStartTime], [processEndTime], [checksum], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) values (N'974ad4e2-b14c-48e1-93e6-8b091197cd80', N'1', N'164', N'<simulationengineTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><Schedules xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><trigger><triggertype>time</triggertype><enabled>true</enabled><endboundary>9996-12-31 23:59:59.9999999</endboundary><executiontimelimit>00:00:00</executiontimelimit><id>d6846086-45b9-4789-bd52-cml9c517e82</id><startboundary>2010-12-26 13:20:00</startboundary><delay>00:00:00</delay><repeatTask>00:00:00</repeatTask><repeatTaskduration>00:00:00</repeatTaskduration><daysinterval>1</daysinterval><randomdelay>00:00:00</randomdelay><daysofweek>sunday</daysofweek><monthsofyear>allmonths</monthsofyear><runonlastweekofmonth>false</runonlastweekofmonth><weeksofmonth>firstweek</weeksofmonth><runonlastdayofmonth>false</runonlastdayofmonth><weeksinterval>1</weeksinterval></trigger></Schedules><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">974ad4e2-b14c-48e1-93e6-8b091197cd80</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">11554</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">546f21d6-10e6-49e3-81f1-a3894ac36148</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">true</isScheduled><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">process1</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">164</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nagendra@ha.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nagendra@ha.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">simulationprocessLocaldevNucleus</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">nagendra kumar</username><appenvironment>simulationprocessLocaldevNucleus</appenvironment><scenarioid>155</scenarioid><processid>4</processid><userlogin>227.127.124.35.122.255.80.176.232.3.185.175.160.149.109</userlogin><emailerimagesurl>http://download.MachineLearning.Com/emailer/images/</emailerimagesurl><xmlfilelocalpath>c:\atg\MachineLearning.Ml\mlgatwayservices\files\simulationengine</xmlfilelocalpath><xmlfilehttppath>http://localhost/mlgatewayservices/files/simulationengine/</xmlfilehttppath></simulationengineTask>', N'1.0', N'process1', N'simulationprocessLocaldevNucleus', 1, N'aborted', cast(N'2010-12-26 13:34:38.353' as datetime), cast(N'2010-12-26 13:34:38.000' as datetime), cast(N'2010-12-26 13:34:41.000' as datetime), N'?]5??
--F?Ko|[xj', cast(N'2010-12-26 13:34:41.000' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:34:38.353' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:34:41.000' as datetime))
--Go
--Insert [dbo].[ml_CompletedTaskHistory] ([id], [tenantId], [userId], [data], [dataVersion], [TaskName], [processType], [isScheduled], [status], [queuedTime], [processStartTime], [processEndTime], [checksum], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) values (N'6b5cba6a-8c8b-4cb9-ac61-a28bf60ce453', N'3', N'4', N'<mathTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">6b5cba6a-8c8b-4cb9-ac61-a28bf60ce453</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">87e1741a-7f0d-4480-80b4-6d57d1d531ed</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">6b5cba6a-8c8b-4cb9-ac61-a28bf60ce453</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">false</isScheduled><description xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask</description><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask_4</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathTask>', N'1.0', N'myTask_4', N'myTask', 0, N'completed', cast(N'2010-12-21 10:36:33.910' as datetime), cast(N'2010-12-21 10:38:36.000' as datetime), cast(N'2010-12-21 10:41:40.000' as datetime), N'?W?????1?????]??', cast(N'2010-12-21 10:41:40.000' as datetime), N'', cast(N'2010-12-21 10:36:33.910' as datetime), N'', cast(N'2010-12-21 10:41:40.000' as datetime))
--Go
--Insert [dbo].[ml_CompletedTaskHistory] ([id], [tenantId], [userId], [data], [dataVersion], [TaskName], [processType], [isScheduled], [status], [queuedTime], [processStartTime], [processEndTime], [checksum], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) values (N'5ef785ad-0800-49e7-941c-287440d186d2', N'3', N'4', N'<mathTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">5ef785ad-0800-49e7-941c-287440d186d2</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">aeb771e7-8a2b-4761-be98-f8ad8948f074</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">5ef785ad-0800-49e7-941c-287440d186d2</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">false</isScheduled><description xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask</description><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask_1_3</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask_1</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathTask>', N'1.0', N'myTask_1_3', N'myTask_1', 0, N'completed', cast(N'2010-12-21 10:35:08.830' as datetime), cast(N'2010-12-21 10:38:36.000' as datetime), cast(N'2010-12-21 10:41:41.000' as datetime), N'?V0`r\(??????M?', cast(N'2010-12-21 10:41:41.000' as datetime), N'', cast(N'2010-12-21 10:35:08.830' as datetime), N'', cast(N'2010-12-21 10:41:41.000' as datetime))
--Go
--Insert [dbo].[ml_CompletedTaskHistory] ([id], [tenantId], [userId], [data], [dataVersion], [TaskName], [processType], [isScheduled], [status], [queuedTime], [processStartTime], [processEndTime], [checksum], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) values (N'386a22aa-0b1a-4056-95c7-eaaebc96aca9', N'3', N'4', N'<mathTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">386a22aa-0b1a-4056-95c7-eaaebc96aca9</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">f18aeae9-83ce-4d90-ae86-30e2857643dd</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">386a22aa-0b1a-4056-95c7-eaaebc96aca9</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">false</isScheduled><description xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask</description><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask_1_2</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask_1</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathTask>', N'1.0', N'myTask_1_2', N'myTask_1', 0, N'aborted', cast(N'2010-12-21 10:35:03.887' as datetime), cast(N'2010-12-21 10:38:35.000' as datetime), cast(N'2010-12-21 10:40:05.000' as datetime), N'?V0`r\(??????M?', cast(N'2010-12-21 10:40:05.000' as datetime), N'', cast(N'2010-12-21 10:35:03.883' as datetime), N'', cast(N'2010-12-21 10:40:05.000' as datetime))
--Go
--Insert [dbo].[ml_CompletedTaskHistory] ([id], [tenantId], [userId], [data], [dataVersion], [TaskName], [processType], [isScheduled], [status], [queuedTime], [processStartTime], [processEndTime], [checksum], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) values (N'355e19c1-74c0-4dfd-8ec5-540ce3ad03fd', N'3', N'4', N'<mathTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">355e19c1-74c0-4dfd-8ec5-540ce3ad03fd</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">05aca835-e8e1-4b2a-b14c-1bfc6ddad601</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">355e19c1-74c0-4dfd-8ec5-540ce3ad03fd</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">false</isScheduled><description xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask</description><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask_1_5</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask_1</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathTask>', N'1.0', N'myTask_1_5', N'myTask_1', 0, N'completed', cast(N'2010-12-21 10:36:16.030' as datetime), cast(N'2010-12-21 10:38:36.000' as datetime), cast(N'2010-12-21 10:42:09.000' as datetime), N'?V0`r\(??????M?', cast(N'2010-12-21 10:42:09.000' as datetime), N'', cast(N'2010-12-21 10:36:16.030' as datetime), N'', cast(N'2010-12-21 10:42:09.000' as datetime))
--Go
--Insert [dbo].[ml_CompletedTaskHistory] ([id], [tenantId], [userId], [data], [dataVersion], [TaskName], [processType], [isScheduled], [status], [queuedTime], [processStartTime], [processEndTime], [checksum], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) values (N'1cd62e30-4060-4afd-8ceb-1e28b419c9e4', N'3', N'4', N'<mathTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1cd62e30-4060-4afd-8ceb-1e28b419c9e4</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">05989d3a-30f7-4d83-a647-cfe1448f89a5</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1cd62e30-4060-4afd-8ceb-1e28b419c9e4</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">false</isScheduled><description xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask_2</description><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">2.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask_2_1</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">myTask_2</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathTask>', N'2.0', N'myTask_2_1', N'myTask_2', 0, N'completed', cast(N'2010-12-21 10:38:01.610' as datetime), cast(N'2010-12-21 10:38:43.000' as datetime), cast(N'2010-12-21 10:41:29.000' as datetime), N'o??3??D??1v??', cast(N'2010-12-21 10:41:29.000' as datetime), N'', cast(N'2010-12-21 10:38:01.610' as datetime), N'', cast(N'2010-12-21 10:41:29.000' as datetime))
--Go
--Insert [dbo].[ml_CompletedTaskHistory] ([id], [tenantId], [userId], [data], [dataVersion], [TaskName], [processType], [isScheduled], [status], [queuedTime], [processStartTime], [processEndTime], [checksum], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) values (N'17aa9ed1-9fc8-46e4-824c-65c00f39bc52', N'1', N'164', N'<simulationengineTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><Schedules xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><trigger><triggertype>time</triggertype><enabled>true</enabled><endboundary>9996-12-31 23:59:59.9999999</endboundary><executiontimelimit>00:00:00</executiontimelimit><id>d6846086-45b9-4789-bd52-cml9c517e82</id><startboundary>2010-12-26 13:20:00</startboundary><delay>00:00:00</delay><repeatTask>00:00:00</repeatTask><repeatTaskduration>00:00:00</repeatTaskduration><daysinterval>1</daysinterval><randomdelay>00:00:00</randomdelay><daysofweek>sunday</daysofweek><monthsofyear>allmonths</monthsofyear><runonlastweekofmonth>false</runonlastweekofmonth><weeksofmonth>firstweek</weeksofmonth><runonlastdayofmonth>false</runonlastdayofmonth><weeksinterval>1</weeksinterval></trigger></Schedules><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">17aa9ed1-9fc8-46e4-824c-65c00f39bc52</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">11554</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">546f21d6-10e6-49e3-81f1-a3894ac36148</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">true</isScheduled><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">process1</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">164</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nagendra@ha.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nagendra@ha.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">simulationprocessLocaldevNucleus</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">nagendra kumar</username><appenvironment>simulationprocessLocaldevNucleus</appenvironment><scenarioid>155</scenarioid><processid>4</processid><userlogin>227.127.124.35.122.255.80.176.232.3.185.175.160.149.109</userlogin><emailerimagesurl>http://download.MachineLearning.Com/emailer/images/</emailerimagesurl><xmlfilelocalpath>c:\atg\MachineLearning.Ml\mlgatwayservices\files\simulationengine</xmlfilelocalpath><xmlfilehttppath>http://localhost/mlgatewayservices/files/simulationengine/</xmlfilehttppath></simulationengineTask>', N'1.0', N'process1', N'simulationprocessLocaldevNucleus', 1, N'aborted', cast(N'2010-12-26 13:20:00.797' as datetime), cast(N'2010-12-26 13:20:02.000' as datetime), cast(N'2010-12-26 13:20:06.000' as datetime), N'?]5??
--F?Ko|[xj', cast(N'2010-12-26 13:20:06.000' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:20:00.797' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:20:06.000' as datetime))
--Go
Set identity_Insert [dbo].[ml_ExecuteTask] on 
Go
Insert [dbo].[ml_ExecuteTask] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1820 as numeric(18, 0)), N'﻿19076aa9-907e-459f-97ef-4a18bdebe9ad', N'MachineLearning.Simulationengine.Task.SimulationengineTaskprocessor', N'aborted', cast(N'2010-12-26 13:35:29.997' as datetime), cast(N'2010-12-26 13:35:32.000' as datetime), cast(N'2010-12-26 13:35:32.000' as datetime))
Go
Insert [dbo].[ml_ExecuteTask] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1821 as numeric(18, 0)), N'﻿122421b2-5b19-41a5-840a-5681a45caaf0', N'MachineLearning.Simulationengine.Task.SimulationengineTaskprocessor', N'aborted', cast(N'2010-12-26 13:36:25.573' as datetime), cast(N'2010-12-26 13:36:28.000' as datetime), cast(N'2010-12-26 13:36:28.000' as datetime))
Go
Insert [dbo].[ml_ExecuteTask] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1822 as numeric(18, 0)), N'﻿613f806d-dc95-4944-838f-c7152b01c889', N'MachineLearning.Simulationengine.Task.SimulationengineTaskprocessor', N'aborted', cast(N'2010-12-26 13:38:19.897' as datetime), cast(N'2010-12-26 13:39:52.000' as datetime), cast(N'2010-12-26 13:39:52.000' as datetime))
Go
Insert [dbo].[ml_ExecuteTask] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1824 as numeric(18, 0)), N'﻿14c05595-a36f-458b-a86b-03fab412d81a', N'MachineLearning.Simulationengine.Task.SimulationengineTaskprocessor', N'aborted', cast(N'2010-12-26 13:40:53.037' as datetime), cast(N'2010-12-26 13:41:34.000' as datetime), cast(N'2010-12-26 13:41:34.000' as datetime))
Go
Insert [dbo].[ml_ExecuteTask] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1825 as numeric(18, 0)), N'﻿32dd24c7-8ec0-4065-ae00-4bd16ded564c', N'MachineLearning.Simulationengine.Task.SimulationengineTaskprocessor', N'aborted', cast(N'2010-12-26 13:41:50.033' as datetime), cast(N'2010-12-26 13:43:39.000' as datetime), cast(N'2010-12-26 13:43:39.000' as datetime))
Go
Set identity_Insert [dbo].[ml_ExecuteTask] off
Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1819 as numeric(18, 0)), N'﻿974ad4e2-b14c-48e1-93e6-8b091197cd80', N'MachineLearning.Simulationengine.Task.SimulationengineTaskprocessor', N'aborted', cast(N'2010-12-26 13:34:38.427' as datetime), cast(N'2010-12-26 13:34:41.000' as datetime), cast(N'2010-12-26 13:34:41.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1817 as numeric(18, 0)), N'﻿17aa9ed1-9fc8-46e4-824c-65c00f39bc52', N'MachineLearning.Simulationengine.Task.SimulationengineTaskprocessor', N'aborted', cast(N'2010-12-26 13:20:02.810' as datetime), cast(N'2010-12-26 13:20:06.000' as datetime), cast(N'2010-12-26 13:20:06.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1818 as numeric(18, 0)), N'﻿0da3968f-bdc4-4244-8c41-048c4a783461', N'MachineLearning.Simulationengine.Task.SimulationengineTaskprocessor', N'aborted', cast(N'2010-12-26 13:33:48.397' as datetime), cast(N'2010-12-26 13:33:51.000' as datetime), cast(N'2010-12-26 13:33:51.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1777 as numeric(18, 0)), N'﻿ec480281-ff31-46da-9110-9c7e06abbf4e', N'MachineLearning.Ml.Tasks.SampleTasks.SampleTaskprocessor', N'aborted', cast(N'2010-12-21 10:38:33.560' as datetime), cast(N'2010-12-21 10:39:19.000' as datetime), cast(N'2010-12-21 10:39:19.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1794 as numeric(18, 0)), N'﻿d667915e-64be-4099-871f-217dfd590d3e', N'MachineLearning.Ml.Tasks.SampleTasks.SampleTaskprocessor', N'aborted', cast(N'2010-12-21 10:39:20.040' as datetime), cast(N'2010-12-21 10:40:04.000' as datetime), cast(N'2010-12-21 10:40:04.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1805 as numeric(18, 0)), N'﻿c708837b-4cf5-4108-a862-255dbe32b3e8', N'MachineLearning.Ml.Tasks.SampleTasks.SampleTaskprocessor', N'completed', cast(N'2010-12-21 10:40:06.153' as datetime), cast(N'2010-12-21 10:41:40.000' as datetime), cast(N'2010-12-21 10:41:40.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1796 as numeric(18, 0)), N'﻿c63b9bac-568e-4080-867e-a82b540d961b', N'MachineLearning.Ml.Tasks.SampleTasks.SampleTaskprocessor', N'aborted', cast(N'2010-12-21 10:39:23.460' as datetime), cast(N'2010-12-21 10:40:08.000' as datetime), cast(N'2010-12-21 10:40:08.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1800 as numeric(18, 0)), N'﻿b9a01af0-75ce-4c87-83e0-d28daa606733', N'MachineLearning.Ml.Tasks.SampleTasks.SampleTaskprocessor', N'aborted', cast(N'2010-12-21 10:39:29.897' as datetime), cast(N'2010-12-21 10:40:14.000' as datetime), cast(N'2010-12-21 10:40:14.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1785 as numeric(18, 0)), N'﻿b362a5e7-2906-4a88-aded-f66cc8a79ff2', N'MachineLearning.Ml.Tasks.SampleTasks.SampleTaskprocessor', N'completed', cast(N'2010-12-21 10:38:37.610' as datetime), cast(N'2010-12-21 10:40:22.000' as datetime), cast(N'2010-12-21 10:40:22.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1798 as numeric(18, 0)), N'﻿9b31725b-fd41-46bd-9fee-c296341078af', N'MachineLearning.Ml.Tasks.SampleTasks.SampleTaskprocessor', N'aborted', cast(N'2010-12-21 10:39:27.003' as datetime), cast(N'2010-12-21 10:40:11.000' as datetime), cast(N'2010-12-21 10:40:11.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1797 as numeric(18, 0)), N'﻿81f16816-b5a2-4a13-b0bb-80d4e451c1a4', N'MachineLearning.Ml.Tasks.SampleTasks.SampleTaskprocessor', N'aborted', cast(N'2010-12-21 10:39:24.417' as datetime), cast(N'2010-12-21 10:40:09.000' as datetime), cast(N'2010-12-21 10:40:09.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1804 as numeric(18, 0)), N'﻿80957c4a-a3a5-4ef3-b1f1-5ad0bd17f307', N'MachineLearning.Ml.Tasks.SampleTasks.SampleTaskprocessor', N'completed', cast(N'2010-12-21 10:40:05.247' as datetime), cast(N'2010-12-21 10:41:57.000' as datetime), cast(N'2010-12-21 10:41:57.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1784 as numeric(18, 0)), N'﻿6b5cba6a-8c8b-4cb9-ac61-a28bf60ce453', N'MachineLearning.Ml.Tasks.SampleTasks.SampleTaskprocessor', N'completed', cast(N'2010-12-21 10:38:36.093' as datetime), cast(N'2010-12-21 10:40:25.000' as datetime), cast(N'2010-12-21 10:40:25.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1810 as numeric(18, 0)), N'﻿5ef785ad-0800-49e7-941c-287440d186d2', N'MachineLearning.Ml.Tasks.SampleTasks.SampleTaskprocessor', N'completed', cast(N'2010-12-21 10:40:27.057' as datetime), cast(N'2010-12-21 10:41:41.000' as datetime), cast(N'2010-12-21 10:41:41.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1783 as numeric(18, 0)), N'﻿517b6c9e-b348-4554-a061-2c5f79ecf0a5', N'MachineLearning.Ml.Tasks.SampleTasks.SampleTaskprocessor', N'completed', cast(N'2010-12-21 10:38:36.073' as datetime), cast(N'2010-12-21 10:40:05.000' as datetime), cast(N'2010-12-21 10:40:05.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1778 as numeric(18, 0)), N'﻿3feca64f-5e21-481a-843c-63ed2ef6de22', N'MachineLearning.Ml.Tasks.SampleTasks.SampleTaskprocessor', N'aborted', cast(N'2010-12-21 10:38:33.573' as datetime), cast(N'2010-12-21 10:39:19.000' as datetime), cast(N'2010-12-21 10:39:19.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1795 as numeric(18, 0)), N'﻿386a22aa-0b1a-4056-95c7-eaaebc96aca9', N'MachineLearning.Ml.Tasks.SampleTasks.SampleTaskprocessor', N'aborted', cast(N'2010-12-21 10:39:20.383' as datetime), cast(N'2010-12-21 10:40:05.000' as datetime), cast(N'2010-12-21 10:40:05.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1809 as numeric(18, 0)), N'﻿355e19c1-74c0-4dfd-8ec5-540ce3ad03fd', N'MachineLearning.Ml.Tasks.SampleTasks.SampleTaskprocessor', N'completed', cast(N'2010-12-21 10:40:26.783' as datetime), cast(N'2010-12-21 10:42:09.000' as datetime), cast(N'2010-12-21 10:42:09.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1816 as numeric(18, 0)), N'﻿3349bc90-0ff1-45c0-b448-63d70b02b584', N'MachineLearning.Ml.Tasks.SampleTasks.SampleTaskprocessor', N'completed', cast(N'2010-12-26 09:57:30.690' as datetime), cast(N'2010-12-26 09:59:07.000' as datetime), cast(N'2010-12-26 09:59:07.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1802 as numeric(18, 0)), N'﻿1dfc70fb-9d7e-43d3-b53c-cb1c7ad3ea8c', N'MachineLearning.Ml.Tasks.SampleTasks.SampleTaskprocessor', N'completed', cast(N'2010-12-21 10:40:04.970' as datetime), cast(N'2010-12-21 10:41:35.000' as datetime), cast(N'2010-12-21 10:41:35.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1801 as numeric(18, 0)), N'﻿1cd62e30-4060-4afd-8ceb-1e28b419c9e4', N'MachineLearning.Ml.Tasks.SampleTasks.SampleTaskprocessor', N'completed', cast(N'2010-12-21 10:39:59.727' as datetime), cast(N'2010-12-21 10:41:29.000' as datetime), cast(N'2010-12-21 10:41:29.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1806 as numeric(18, 0)), N'﻿13878217-0239-415a-8d5b-a38eb63a0caf', N'MachineLearning.Ml.Tasks.SampleTasks.SampleTaskprocessor', N'completed', cast(N'2010-12-21 10:40:07.150' as datetime), cast(N'2010-12-21 10:41:44.000' as datetime), cast(N'2010-12-21 10:41:44.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1799 as numeric(18, 0)), N'﻿0fb8ec5f-f5a9-4787-9bfa-477a3f2bde5d', N'MachineLearning.Ml.Tasks.SampleTasks.SampleTaskprocessor', N'aborted', cast(N'2010-12-21 10:39:28.063' as datetime), cast(N'2010-12-21 10:40:12.000' as datetime), cast(N'2010-12-21 10:40:12.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1793 as numeric(18, 0)), N'﻿ec480281-ff31-46da-9110-9c7e06abbf4e', N'MachineLearning.Ml.Tasks.SampleTasks.MathTaskprocessor', N'aborted', cast(N'2010-12-21 10:39:19.263' as datetime), cast(N'2010-12-21 10:40:04.000' as datetime), cast(N'2010-12-21 10:40:04.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1779 as numeric(18, 0)), N'﻿d667915e-64be-4099-871f-217dfd590d3e', N'MachineLearning.Ml.Tasks.SampleTasks.MathTaskprocessor', N'aborted', cast(N'2010-12-21 10:38:33.597' as datetime), cast(N'2010-12-21 10:39:20.000' as datetime), cast(N'2010-12-21 10:39:20.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1812 as numeric(18, 0)), N'﻿c708837b-4cf5-4108-a862-255dbe32b3e8', N'MachineLearning.Ml.Tasks.SampleTasks.MathTaskprocessor', N'completed', cast(N'2010-12-21 10:41:40.930' as datetime), cast(N'2010-12-21 10:43:34.000' as datetime), cast(N'2010-12-21 10:43:34.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1786 as numeric(18, 0)), N'﻿c63b9bac-568e-4080-867e-a82b540d961b', N'MachineLearning.Ml.Tasks.SampleTasks.MathTaskprocessor', N'aborted', cast(N'2010-12-21 10:38:38.650' as datetime), cast(N'2010-12-21 10:39:23.000' as datetime), cast(N'2010-12-21 10:39:23.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1791 as numeric(18, 0)), N'﻿b9a01af0-75ce-4c87-83e0-d28daa606733', N'MachineLearning.Ml.Tasks.SampleTasks.MathTaskprocessor', N'aborted', cast(N'2010-12-21 10:38:45.143' as datetime), cast(N'2010-12-21 10:39:29.000' as datetime), cast(N'2010-12-21 10:39:29.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1807 as numeric(18, 0)), N'﻿b362a5e7-2906-4a88-aded-f66cc8a79ff2', N'MachineLearning.Ml.Tasks.SampleTasks.MathTaskprocessor', N'completed', cast(N'2010-12-21 10:40:22.280' as datetime), cast(N'2010-12-21 10:42:27.000' as datetime), cast(N'2010-12-21 10:42:27.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1788 as numeric(18, 0)), N'﻿9b31725b-fd41-46bd-9fee-c296341078af', N'MachineLearning.Ml.Tasks.SampleTasks.MathTaskprocessor', N'aborted', cast(N'2010-12-21 10:38:42.200' as datetime), cast(N'2010-12-21 10:39:26.000' as datetime), cast(N'2010-12-21 10:39:26.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1787 as numeric(18, 0)), N'﻿81f16816-b5a2-4a13-b0bb-80d4e451c1a4', N'MachineLearning.Ml.Tasks.SampleTasks.MathTaskprocessor', N'aborted', cast(N'2010-12-21 10:38:39.647' as datetime), cast(N'2010-12-21 10:39:24.000' as datetime), cast(N'2010-12-21 10:39:24.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1814 as numeric(18, 0)), N'﻿80957c4a-a3a5-4ef3-b1f1-5ad0bd17f307', N'MachineLearning.Ml.Tasks.SampleTasks.MathTaskprocessor', N'completed', cast(N'2010-12-21 10:41:57.183' as datetime), cast(N'2010-12-21 10:44:01.000' as datetime), cast(N'2010-12-21 10:44:01.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1808 as numeric(18, 0)), N'﻿6b5cba6a-8c8b-4cb9-ac61-a28bf60ce453', N'MachineLearning.Ml.Tasks.SampleTasks.MathTaskprocessor', N'completed', cast(N'2010-12-21 10:40:25.537' as datetime), cast(N'2010-12-21 10:41:40.000' as datetime), cast(N'2010-12-21 10:41:40.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1781 as numeric(18, 0)), N'﻿5ef785ad-0800-49e7-941c-287440d186d2', N'MachineLearning.Ml.Tasks.SampleTasks.MathTaskprocessor', N'completed', cast(N'2010-12-21 10:38:36.047' as datetime), cast(N'2010-12-21 10:40:27.000' as datetime), cast(N'2010-12-21 10:40:27.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1803 as numeric(18, 0)), N'﻿517b6c9e-b348-4554-a061-2c5f79ecf0a5', N'MachineLearning.Ml.Tasks.SampleTasks.MathTaskprocessor', N'completed', cast(N'2010-12-21 10:40:05.243' as datetime), cast(N'2010-12-21 10:41:26.000' as datetime), cast(N'2010-12-21 10:41:26.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1792 as numeric(18, 0)), N'﻿3feca64f-5e21-481a-843c-63ed2ef6de22', N'MachineLearning.Ml.Tasks.SampleTasks.MathTaskprocessor', N'aborted', cast(N'2010-12-21 10:39:19.227' as datetime), cast(N'2010-12-21 10:40:04.000' as datetime), cast(N'2010-12-21 10:40:04.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1780 as numeric(18, 0)), N'﻿386a22aa-0b1a-4056-95c7-eaaebc96aca9', N'MachineLearning.Ml.Tasks.SampleTasks.MathTaskprocessor', N'aborted', cast(N'2010-12-21 10:38:35.600' as datetime), cast(N'2010-12-21 10:39:20.000' as datetime), cast(N'2010-12-21 10:39:20.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1782 as numeric(18, 0)), N'﻿355e19c1-74c0-4dfd-8ec5-540ce3ad03fd', N'MachineLearning.Ml.Tasks.SampleTasks.MathTaskprocessor', N'completed', cast(N'2010-12-21 10:38:36.060' as datetime), cast(N'2010-12-21 10:40:26.000' as datetime), cast(N'2010-12-21 10:40:26.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1815 as numeric(18, 0)), N'﻿3349bc90-0ff1-45c0-b448-63d70b02b584', N'MachineLearning.Ml.Tasks.SampleTasks.MathTaskprocessor', N'completed', cast(N'2010-12-26 09:55:57.290' as datetime), cast(N'2010-12-26 09:57:30.000' as datetime), cast(N'2010-12-26 09:57:30.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1811 as numeric(18, 0)), N'﻿1dfc70fb-9d7e-43d3-b53c-cb1c7ad3ea8c', N'MachineLearning.Ml.Tasks.SampleTasks.MathTaskprocessor', N'completed', cast(N'2010-12-21 10:41:35.517' as datetime), cast(N'2010-12-21 10:43:12.000' as datetime), cast(N'2010-12-21 10:43:12.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1790 as numeric(18, 0)), N'﻿1cd62e30-4060-4afd-8ceb-1e28b419c9e4', N'MachineLearning.Ml.Tasks.SampleTasks.MathTaskprocessor', N'completed', cast(N'2010-12-21 10:38:43.670' as datetime), cast(N'2010-12-21 10:39:59.000' as datetime), cast(N'2010-12-21 10:39:59.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1813 as numeric(18, 0)), N'﻿13878217-0239-415a-8d5b-a38eb63a0caf', N'MachineLearning.Ml.Tasks.SampleTasks.MathTaskprocessor', N'completed', cast(N'2010-12-21 10:41:44.733' as datetime), cast(N'2010-12-21 10:43:30.000' as datetime), cast(N'2010-12-21 10:43:30.000' as datetime))
--Go
--Insert [dbo].[ml_ExecuteTaskHistory] ([id], [TaskId], [processorName], [status], [processStartTime], [processEndTime], [recentUpdateTime]) values (cast(1789 as numeric(18, 0)), N'﻿0fb8ec5f-f5a9-4787-9bfa-477a3f2bde5d', N'MachineLearning.Ml.Tasks.SampleTasks.MathTaskprocessor', N'aborted', cast(N'2010-12-21 10:38:43.200' as datetime), cast(N'2010-12-21 10:39:28.000' as datetime), cast(N'2010-12-21 10:39:28.000' as datetime))
--Go
--Insert [dbo].[ml_LogHistory] ([id], [TaskId], [logType], [methodName], [logMessage], [timeStamp]) values (cast(75 as numeric(18, 0)), N'066dc45d-7894-457d-b37b-622df03f5905', N'mlinfo', N'writeinfolog', N'test', cast(N'2010-11-29 04:37:13.273' as datetime))
--Go
--Insert [dbo].[ml_LogHistory] ([id], [TaskId], [logType], [methodName], [logMessage], [timeStamp]) values (cast(74 as numeric(18, 0)), N'a7e8c96a-9cb4-4b9f-80b3-3ec4e2bf8992', N'mlinfo', N'writeinfolog', N'test', cast(N'2010-11-29 04:36:08.967' as datetime))
--Go
--Insert [dbo].[ml_LogHistory] ([id], [TaskId], [logType], [methodName], [logMessage], [timeStamp]) values (cast(73 as numeric(18, 0)), N'1de86f4c-bd46-4527-a9f6-e6d1fbbefd6b', N'mlinfo', N'writeinfolog', N'test', cast(N'2010-11-28 14:26:10.720' as datetime))
--Go
--Insert [dbo].[ml_LogHistory] ([id], [TaskId], [logType], [methodName], [logMessage], [timeStamp]) values (cast(72 as numeric(18, 0)), N'41f810c8-5f4c-4a78-a5d1-df4601b40d20', N'mlinfo', N'writeinfolog', N'test', cast(N'2010-11-28 14:24:15.937' as datetime))
--Go
Insert [dbo].[ml_QueuedTask] ([id], [tenantId], [userId], [data], [dataVersion], [TaskName], [processType], [isScheduled], [status], [queuedTime], [processStartTime], [processEndTime], [checksum], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) values (N'70fd4cc2-bad2-4edc-9c57-d4bc59fbf5fe', N'1', N'164', N'<simulationengineTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><Schedules xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><trigger><triggertype>time</triggertype><enabled>true</enabled><endboundary>9996-12-31 23:59:59.9999999</endboundary><executiontimelimit>00:00:00</executiontimelimit><id>d6846086-45b9-4789-bd52-cml9c517e82</id><startboundary>2010-12-26 13:20:00</startboundary><delay>00:00:00</delay><repeatTask>00:00:00</repeatTask><repeatTaskduration>00:00:00</repeatTaskduration><daysinterval>1</daysinterval><randomdelay>00:00:00</randomdelay><daysofweek>sunday</daysofweek><monthsofyear>allmonths</monthsofyear><runonlastweekofmonth>false</runonlastweekofmonth><weeksofmonth>firstweek</weeksofmonth><runonlastdayofmonth>false</runonlastdayofmonth><weeksinterval>1</weeksinterval></trigger></Schedules><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">70fd4cc2-bad2-4edc-9c57-d4bc59fbf5fe</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">11554</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">546f21d6-10e6-49e3-81f1-a3894ac36148</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">true</isScheduled><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">process1</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">164</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nagendra@ha.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nagendra@ha.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">simulationprocessLocaldevNucleus</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">nagendra kumar</username><appenvironment>simulationprocessLocaldevNucleus</appenvironment><scenarioid>155</scenarioid><processid>4</processid><userlogin>227.127.124.35.122.255.80.176.232.3.185.175.160.149.109</userlogin><emailerimagesurl>http://download.MachineLearning.Com/emailer/images/</emailerimagesurl><xmlfilelocalpath>c:\atg\MachineLearning.Ml\mlgatwayservices\files\simulationengine</xmlfilelocalpath><xmlfilehttppath>http://localhost/mlgatewayservices/files/simulationengine/</xmlfilehttppath></simulationengineTask>', N'1.0', N'process1', N'simulationprocessLocaldevNucleus', 1, N'processStarted', cast(N'2010-12-26 13:44:08.537' as datetime), cast(N'2010-12-26 13:44:08.000' as datetime), null, N'?]5??
F?Ko|[xj', cast(N'2010-12-26 13:44:08.000' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:44:08.537' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:44:08.000' as datetime))
Go
Insert [dbo].[ml_Registration] ([id], [TaskType], [implementationType], [url], [TaskVersion], [TaskObjectType], [TaskProcessorType], [TaskObjectSchema], [isActive], [isSchedulable], [isQueueable], [maxJobs], [currentJobs], [methodName], [waitOneTimeout], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [platformTarget], [SchedulerManager], [registryConfigValues]) values (N'cc41e2b7-290e-4bf5-8ab4-c974638ad4f7', N'myTask', N'inProc', N' ', N'1.0', N'MachineLearning.Ml.Tasks.SampleTasks.MathTasks.Dll |_|MachineLearning.Ml.Tasks.SampleTasks.MathTask', N'MachineLearning.Ml.Tasks.SampleTasks.Dll|_|MachineLearning.Ml.Tasks.SampleTasks.SampleTaskprocessor|_|MachineLearning.Ml.Tasks.SampleTasks.MathTasks.Dll|_|MachineLearning.Ml.Tasks.SampleTasks.MathTaskprocessor', N'<xs:schema xmlns:xs="Http://www.W3.Org/2001/xmlschema" elementformdefault="Qualified"><xs:import namespace="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><xs:element name="MathTask" nillable="True" type="MathTask" /><xs:complextype name="MathTask"><xs:complexcontent mixed="False"><xs:extension xmlns:q1="Http://www.MachineLearning.Com/ml/baseTaskdata/" base="Q1:baseTaskdata"><xs:sequence><xs:element minoccurs="1" maxoccurs="1" name="Value1" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Value2" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Sid" type="Xs:int" /><xs:element minoccurs="0" maxoccurs="1" name="Tid" type="Xs:string" /></xs:sequence></xs:extension></xs:complexcontent></xs:complextype></xs:schema>', 1, 1, 1, 5, 0, null, cast(10 as numeric(8, 0)), N'', cast(N'2010-11-29 14:06:02.337' as datetime), N'', cast(N'2010-11-29 14:06:02.337' as datetime), null, null, null)
Go
Insert [dbo].[ml_Registration] ([id], [TaskType], [implementationType], [url], [TaskVersion], [TaskObjectType], [TaskProcessorType], [TaskObjectSchema], [isActive], [isSchedulable], [isQueueable], [maxJobs], [currentJobs], [methodName], [waitOneTimeout], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [platformTarget], [SchedulerManager], [registryConfigValues]) values (N'1a492122-0e29-48c4-9d82-f3512fe48638', N'myTask_1', N'inProc', N'', N'1.0', N'MachineLearning.Ml.Tasks.SampleTasks.MathTasks.Dll |_|MachineLearning.Ml.Tasks.SampleTasks.MathTask', N'MachineLearning.Ml.Tasks.SampleTasks.MathTasks.Dll|_|MachineLearning.Ml.Tasks.SampleTasks.MathTaskprocessor|_|MachineLearning.Ml.Tasks.SampleTasks.Dll|_|MachineLearning.Ml.Tasks.SampleTasks.SampleTaskprocessor', N'<Taskobjectschema><xs:schema xmlns:xs="Http://www.W3.Org/2001/xmlschema" elementformdefault="Qualified"><xs:import namespace="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><xs:element name="MathTask" nillable="True" type="MathTask" /><xs:complextype name="MathTask"><xs:complexcontent mixed="False"><xs:extension xmlns:q1="Http://www.MachineLearning.Com/ml/baseTaskdata/" base="Q1:baseTaskdata"><xs:sequence><xs:element minoccurs="1" maxoccurs="1" name="Value1" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Value2" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Sid" type="Xs:int" /><xs:element minoccurs="0" maxoccurs="1" name="Tid" type="Xs:string" /></xs:sequence></xs:extension></xs:complexcontent></xs:complextype></xs:schema></Taskobjectschema>', 1, 1, 1, 5, 0, null, cast(10 as numeric(8, 0)), N'', cast(N'2001-01-01 00:00:00.000' as datetime), null, null, null, null, null)
Go
Insert [dbo].[ml_Registration] ([id], [TaskType], [implementationType], [url], [TaskVersion], [TaskObjectType], [TaskProcessorType], [TaskObjectSchema], [isActive], [isSchedulable], [isQueueable], [maxJobs], [currentJobs], [methodName], [waitOneTimeout], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [platformTarget], [SchedulerManager], [registryConfigValues]) values (N'f93416cd-8137-4efb-bcf9-c57af3396c1a', N'myTask_2', N'inProc', N' ', N'2.0', N'MachineLearning.Ml.Tasks.SampleTasks.MathTasks.Dll |_|MachineLearning.Ml.Tasks.SampleTasks.MathTask', N'MachineLearning.Ml.Tasks.SampleTasks.MathTasks.Dll|_|MachineLearning.Ml.Tasks.SampleTasks.MathTaskprocessor|_|MachineLearning.Ml.Tasks.SampleTasks.Dll|_|MachineLearning.Ml.Tasks.SampleTasks.SampleTaskprocessor', N'<xs:schema xmlns:xs="Http://www.W3.Org/2001/xmlschema" elementformdefault="Qualified"><xs:import namespace="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><xs:element name="MathTask" nillable="True" type="MathTask" /><xs:complextype name="MathTask"><xs:complexcontent mixed="False"><xs:extension xmlns:q1="Http://www.MachineLearning.Com/ml/baseTaskdata/" base="Q1:baseTaskdata"><xs:sequence><xs:element minoccurs="1" maxoccurs="1" name="Value1" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Value2" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Sid" type="Xs:int" /><xs:element minoccurs="0" maxoccurs="1" name="Tid" type="Xs:string" /></xs:sequence></xs:extension></xs:complexcontent></xs:complextype></xs:schema>', 1, 1, 1, 5, 0, null, cast(10 as numeric(8, 0)), N'', cast(N'2010-12-08 07:52:53.340' as datetime), N'', cast(N'2010-12-08 07:52:53.340' as datetime), null, null, null)
Go
Insert [dbo].[ml_Registration] ([id], [TaskType], [implementationType], [url], [TaskVersion], [TaskObjectType], [TaskProcessorType], [TaskObjectSchema], [isActive], [isSchedulable], [isQueueable], [maxJobs], [currentJobs], [methodName], [waitOneTimeout], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [platformTarget], [SchedulerManager], [registryConfigValues]) values (N'8bfee9f2-971a-45ed-a24d-56b44feba774', N'simulationprocessLocaldevNucleus', N'inProc', N' ', N'1.0', N'MachineLearning.Simulationengine.Task.Dll |_|MachineLearning.Simulationengine.Task.SimulationengineTask', N'MachineLearning.Simulationengine.Task.Dll|_|MachineLearning.Simulationengine.Task.SimulationengineTaskprocessor', N'<xs:schema xmlns:xs="Http://www.W3.Org/2001/xmlschema" elementformdefault="Qualified"><xs:import namespace="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><xs:element name="SimulationengineTask" nillable="True" type="SimulationengineTask" /><xs:complextype name="SimulationengineTask"><xs:complexcontent mixed="False"><xs:extension xmlns:q1="Http://www.MachineLearning.Com/ml/baseTaskdata/" base="Q1:baseTaskdata"><xs:sequence><xs:element minoccurs="0" maxoccurs="1" name="Appenvironment" type="Xs:string" /><xs:element minoccurs="1" maxoccurs="1" name="Scenarioid" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Processid" type="Xs:int" /><xs:element minoccurs="0" maxoccurs="1" name="Userlogin" type="Xs:string" /><xs:element minoccurs="0" maxoccurs="1" name="Emailerimagesurl" type="Xs:string" /><xs:element minoccurs="0" maxoccurs="1" name="Xmlfilelocalpath" type="Xs:string" /><xs:element minoccurs="0" maxoccurs="1" name="Xmlfilehttppath" type="Xs:string" /></xs:sequence></xs:extension></xs:complexcontent></xs:complextype></xs:schema>', 1, 1, 1, 5, 1, null, cast(10 as numeric(8, 0)), N'', cast(N'2010-12-26 13:11:55.353' as datetime), N'', cast(N'2010-12-26 13:11:55.353' as datetime), null, null, null)
Go
Insert [dbo].[ml_RegistrationUnregistered] ([id], [TaskType], [implementationType], [url], [TaskVersion], [TaskObjectType], [TaskProcessorType], [TaskObjectSchema], [isActive], [isSchedulable], [isQueueable], [maxJobs], [currentJobs], [methodName], [waitOneTimeout], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [platformTarget]) values (N'8dc8344a-3e12-4f07-8926-32319b2d11cd', N'Taskregistry', N'inProc', N' ', N'', N'MachineLearning.Ml.Tasks.SampleTasks.MathTasks.Dll |_|MachineLearning.Ml.Tasks.SampleTasks.MathTask', N'MachineLearning.Ml.Tasks.SampleTasks.Dll|_|MachineLearning.Ml.Tasks.SampleTasks.SampleTaskprocessor', N'<xs:schema xmlns:xs="Http://www.W3.Org/2001/xmlschema" elementformdefault="Qualified"><xs:import namespace="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><xs:element name="MathTask" nillable="True" type="MathTask" /><xs:complextype name="MathTask"><xs:complexcontent mixed="False"><xs:extension xmlns:q1="Http://www.MachineLearning.Com/ml/baseTaskdata/" base="Q1:baseTaskdata"><xs:sequence><xs:element minoccurs="1" maxoccurs="1" name="Value1" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Value2" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Sid" type="Xs:int" /><xs:element minoccurs="0" maxoccurs="1" name="Tid" type="Xs:string" /></xs:sequence></xs:extension></xs:complexcontent></xs:complextype></xs:schema>', 1, 1, 1, 5, 0, null, cast(10 as numeric(8, 0)), N'', cast(N'2010-11-26 11:57:56.230' as datetime), N'', cast(N'2010-11-26 11:57:56.230' as datetime), null)
Go
Insert [dbo].[ml_RegistrationUnregistered] ([id], [TaskType], [implementationType], [url], [TaskVersion], [TaskObjectType], [TaskProcessorType], [TaskObjectSchema], [isActive], [isSchedulable], [isQueueable], [maxJobs], [currentJobs], [methodName], [waitOneTimeout], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [platformTarget]) values (N'a67752a4-b4d4-49c8-a12b-0c695b5996e4', N'myTask', N'inProc', N' ', N'1.0', N'MachineLearning.Ml.Tasks.SampleTasks.MathTasks.Dll |_|MachineLearning.Ml.Tasks.SampleTasks.MathTask', N'MachineLearning.Ml.Tasks.SampleTasks.MathTasks.Dll|_|MachineLearning.Ml.Tasks.SampleTasks.MathTaskprocessor|_|MachineLearning.Ml.Tasks.SampleTasks.Dll|_|MachineLearning.Ml.Tasks.SampleTasks.SampleTaskprocessor', N'<xs:schema xmlns:xs="Http://www.W3.Org/2001/xmlschema" elementformdefault="Qualified"><xs:import namespace="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><xs:element name="MathTask" nillable="True" type="MathTask" /><xs:complextype name="MathTask"><xs:complexcontent mixed="False"><xs:extension xmlns:q1="Http://www.MachineLearning.Com/ml/baseTaskdata/" base="Q1:baseTaskdata"><xs:sequence><xs:element minoccurs="1" maxoccurs="1" name="Value1" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Value2" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Sid" type="Xs:int" /><xs:element minoccurs="0" maxoccurs="1" name="Tid" type="Xs:string" /></xs:sequence></xs:extension></xs:complexcontent></xs:complextype></xs:schema>', 1, 1, 1, 5, 0, null, cast(10 as numeric(8, 0)), N'', cast(N'2010-11-29 13:58:41.083' as datetime), N'', cast(N'2010-11-29 13:58:41.083' as datetime), null)
Go
Insert [dbo].[ml_RegistrationUnregistered] ([id], [TaskType], [implementationType], [url], [TaskVersion], [TaskObjectType], [TaskProcessorType], [TaskObjectSchema], [isActive], [isSchedulable], [isQueueable], [maxJobs], [currentJobs], [methodName], [waitOneTimeout], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [platformTarget]) values (N'e9820310-a436-48e6-9000-059465052bd4', N'myTask', N'inProc', N' ', N'1.0', N'MachineLearning.Ml.Tasks.SampleTasks.MathTasks.Dll |_|MachineLearning.Ml.Tasks.SampleTasks.MathTask', N'MachineLearning.Ml.Tasks.SampleTasks.MathTasks.Dll|_|MachineLearning.Ml.Tasks.SampleTasks.MathTaskprocessor|_|MachineLearning.Ml.Tasks.SampleTasks.Dll|_|MachineLearning.Ml.Tasks.SampleTasks.SampleTaskprocessor', N'<xs:schema xmlns:xs="Http://www.W3.Org/2001/xmlschema" elementformdefault="Qualified"><xs:import namespace="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><xs:element name="MathTask" nillable="True" type="MathTask" /><xs:complextype name="MathTask"><xs:complexcontent mixed="False"><xs:extension xmlns:q1="Http://www.MachineLearning.Com/ml/baseTaskdata/" base="Q1:baseTaskdata"><xs:sequence><xs:element minoccurs="1" maxoccurs="1" name="Value1" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Value2" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Sid" type="Xs:int" /><xs:element minoccurs="0" maxoccurs="1" name="Tid" type="Xs:string" /></xs:sequence></xs:extension></xs:complexcontent></xs:complextype></xs:schema>', 1, 1, 1, 5, 0, null, cast(10 as numeric(8, 0)), N'', cast(N'2010-11-29 14:02:35.827' as datetime), N'', cast(N'2010-11-29 14:02:35.827' as datetime), null)
Go
Insert [dbo].[ml_RegistrationUnregistered] ([id], [TaskType], [implementationType], [url], [TaskVersion], [TaskObjectType], [TaskProcessorType], [TaskObjectSchema], [isActive], [isSchedulable], [isQueueable], [maxJobs], [currentJobs], [methodName], [waitOneTimeout], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [platformTarget]) values (N'22', N'myTask2', N'inProc', N'', N'1.0', N'MachineLearning.Ml.Tasks.SampleTasks.MathTasks.Dll |_|MachineLearning.Ml.Tasks.SampleTasks.MathTask', N'MachineLearning.Ml.Tasks.SampleTasks.Dll|_|MachineLearning.Ml.Tasks.SampleTasks.SampleTaskprocessor|_|MachineLearning.Ml.Tasks.SampleTasks.MathTasks.Dll|_|MachineLearning.Ml.Tasks.SampleTasks.MathTaskprocessor', N'<Taskobjectschema><xs:schema xmlns:xs="Http://www.W3.Org/2001/xmlschema" elementformdefault="Qualified"><xs:import namespace="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><xs:element name="MathTask" nillable="True" type="MathTask" /><xs:complextype name="MathTask"><xs:complexcontent mixed="False"><xs:extension xmlns:q1="Http://www.MachineLearning.Com/ml/baseTaskdata/" base="Q1:baseTaskdata"><xs:sequence><xs:element minoccurs="1" maxoccurs="1" name="Value1" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Value2" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Sid" type="Xs:int" /><xs:element minoccurs="0" maxoccurs="1" name="Tid" type="Xs:string" /></xs:sequence></xs:extension></xs:complexcontent></xs:complextype></xs:schema></Taskobjectschema>', 1, 1, 1, 5, 0, null, cast(10 as numeric(8, 0)), N'', cast(N'2001-01-01 00:00:00.000' as datetime), null, null, null)
Go
Insert [dbo].[ml_RegistrationUnregistered] ([id], [TaskType], [implementationType], [url], [TaskVersion], [TaskObjectType], [TaskProcessorType], [TaskObjectSchema], [isActive], [isSchedulable], [isQueueable], [maxJobs], [currentJobs], [methodName], [waitOneTimeout], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [platformTarget]) values (N'22', N'myTask2', N'inProc', N'', N'1.0', N'MachineLearning.Ml.Tasks.SampleTasks.MathTasks.Dll |_|MachineLearning.Ml.Tasks.SampleTasks.MathTask', N'MachineLearning.Ml.Tasks.SampleTasks.Dll|_|MachineLearning.Ml.Tasks.SampleTasks.SampleTaskprocessor|_|MachineLearning.Ml.Tasks.SampleTasks.MathTasks.Dll|_|MachineLearning.Ml.Tasks.SampleTasks.MathTaskprocessor', N'<Taskobjectschema><xs:schema xmlns:xs="Http://www.W3.Org/2001/xmlschema" elementformdefault="Qualified"><xs:import namespace="Http://www.MachineLearning.Com/ml/baseTaskdata/" /><xs:element name="MathTask" nillable="True" type="MathTask" /><xs:complextype name="MathTask"><xs:complexcontent mixed="False"><xs:extension xmlns:q1="Http://www.MachineLearning.Com/ml/baseTaskdata/" base="Q1:baseTaskdata"><xs:sequence><xs:element minoccurs="1" maxoccurs="1" name="Value1" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Value2" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Sid" type="Xs:int" /><xs:element minoccurs="0" maxoccurs="1" name="Tid" type="Xs:string" /></xs:sequence></xs:extension></xs:complexcontent></xs:complextype></xs:schema></Taskobjectschema>', 1, 1, 1, 5, 0, null, cast(10 as numeric(8, 0)), N'', cast(N'2001-01-01 00:00:00.000' as datetime), null, null, null)
Go
Insert [dbo].[ml_ScheduledTask] ([id], [tenantId], [userId], [data], [dataVersion], [ScheduleName], [processType], [frequency], [ScheduledTime], [status], [lastRunStatus], [startTime], [endTime], [checksum], [recentUpdateBy], [recentUpdateTime], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) values (N'546f21d6-10e6-49e3-81f1-a3894ac36148', N'1', N'164', N'<simulationengineTask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><Schedules xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><trigger><triggertype>time</triggertype><enabled>true</enabled><endboundary>9996-12-31 23:59:59.9999999</endboundary><executiontimelimit>00:00:00</executiontimelimit><id>d6846086-45b9-4789-bd52-cml9c517e82</id><startboundary>2010-12-26 13:20:00</startboundary><delay>00:00:00</delay><repeatTask>00:00:00</repeatTask><repeatTaskduration>00:00:00</repeatTaskduration><daysinterval>1</daysinterval><randomdelay>00:00:00</randomdelay><daysofweek>sunday</daysofweek><monthsofyear>allmonths</monthsofyear><runonlastweekofmonth>false</runonlastweekofmonth><weeksofmonth>firstweek</weeksofmonth><runonlastdayofmonth>false</runonlastdayofmonth><weeksinterval>1</weeksinterval></trigger></Schedules><id xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">546f21d6-10e6-49e3-81f1-a3894ac36148</id><uniqueTaskidentifier xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">11554</uniqueTaskidentifier><Schedulerid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">546f21d6-10e6-49e3-81f1-a3894ac36148</Schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">inProc</implementation><isScheduled xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">true</isScheduled><version xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1.0</version><Taskname xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">process1</Taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">1</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">164</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nagendra@ha.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/"><string>nagendra@ha.Com</string></emailidsonfail><Tasktype xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">simulationprocessLocaldevNucleus</Tasktype><username xmlns="Http://www.MachineLearning.Com/ml/baseTaskdata/">nagendra kumar</username><appenvironment>simulationprocessLocaldevNucleus</appenvironment><scenarioid>155</scenarioid><processid>4</processid><userlogin>227.127.124.35.122.255.80.176.232.3.185.175.160.149.109</userlogin><emailerimagesurl>http://download.MachineLearning.Com/emailer/images/</emailerimagesurl><xmlfilelocalpath>c:\atg\MachineLearning.Ml\mlgatwayservices\files\simulationengine</xmlfilelocalpath><xmlfilehttppath>http://localhost/mlgatewayservices/files/simulationengine/</xmlfilehttppath></simulationengineTask>', N'1.0', N'process1', N'simulationprocessLocaldevNucleus', N'run once', cast(N'2010-12-26 13:20:00.000' as datetime), N'Scheduled', N'aborted', cast(N'2010-12-26 13:44:08.000' as datetime), null, N'?]5??
F?Ko|[xj', N'164', cast(N'2010-12-26 13:44:08.000' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:15:28.900' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:15:28.900' as datetime))
Go
Insert [dbo].[ml_ServerQueues] ([queueId], [ml_ServerGuid], [ml_ServerIpAddress], [timeStamp]) values (N'70fd4cc2-bad2-4edc-9c57-d4bc59fbf5fe', null, null, cast(N'2010-12-26 13:44:08.537' as datetime))
Go
Set identity_Insert [dbo].[readings] on 
Go
Insert [dbo].[readings] ([id], [celsius], [fahrenheit], [test], [test2]) values (1, 1, 33.8, null, null)
Go
Insert [dbo].[readings] ([id], [celsius], [fahrenheit], [test], [test2]) values (2, 2, 35.6, null, null)
Go
Insert [dbo].[readings] ([id], [celsius], [fahrenheit], [test], [test2]) values (3, 3, 37.4, null, null)
Go
Insert [dbo].[readings] ([id], [celsius], [fahrenheit], [test], [test2]) values (4, 4, 39.2, null, null)
Go
Insert [dbo].[readings] ([id], [celsius], [fahrenheit], [test], [test2]) values (5, 5, null, null, null)
Go
Insert [dbo].[readings] ([id], [celsius], [fahrenheit], [test], [test2]) values (6, 6, 42.8, null, null)
Go
Insert [dbo].[readings] ([id], [celsius], [fahrenheit], [test], [test2]) values (7, 7, 44.6, null, null)
Go
Insert [dbo].[readings] ([id], [celsius], [fahrenheit], [test], [test2]) values (8, 8, 46.4, null, null)
Go
Insert [dbo].[readings] ([id], [celsius], [fahrenheit], [test], [test2]) values (9, 9, 48.2, null, null)
Go
Insert [dbo].[readings] ([id], [celsius], [fahrenheit], [test], [test2]) values (10, 10, 50, null, null)
Go
Set identity_Insert [dbo].[readings] off
Go
Insert [dbo].[ml_ScheduledQueuedTasks] ([queuedTaskid], [ScheduledTaskid]) values (N'17aa9ed1-9fc8-46e4-824c-65c00f39bc52', N'546f21d6-10e6-49e3-81f1-a3894ac36148')
Go
Insert [dbo].[ml_ScheduledQueuedTasks] ([queuedTaskid], [ScheduledTaskid]) values (N'0da3968f-bdc4-4244-8c41-048c4a783461', N'546f21d6-10e6-49e3-81f1-a3894ac36148')
Go
Insert [dbo].[ml_ScheduledQueuedTasks] ([queuedTaskid], [ScheduledTaskid]) values (N'974ad4e2-b14c-48e1-93e6-8b091197cd80', N'546f21d6-10e6-49e3-81f1-a3894ac36148')
Go
Insert [dbo].[ml_ScheduledQueuedTasks] ([queuedTaskid], [ScheduledTaskid]) values (N'122421b2-5b19-41a5-840a-5681a45caaf0', N'546f21d6-10e6-49e3-81f1-a3894ac36148')
Go
Insert [dbo].[ml_ScheduledQueuedTasks] ([queuedTaskid], [ScheduledTaskid]) values (N'613f806d-dc95-4944-838f-c7152b01c889', N'546f21d6-10e6-49e3-81f1-a3894ac36148')
Go
Insert [dbo].[ml_ScheduledQueuedTasks] ([queuedTaskid], [ScheduledTaskid]) values (N'14c05595-a36f-458b-a86b-03fab412d81a', N'546f21d6-10e6-49e3-81f1-a3894ac36148')
Go
Insert [dbo].[ml_ScheduledQueuedTasks] ([queuedTaskid], [ScheduledTaskid]) values (N'32dd24c7-8ec0-4065-ae00-4bd16ded564c', N'546f21d6-10e6-49e3-81f1-a3894ac36148')
Go
Insert [dbo].[ml_ScheduledQueuedTasks] ([queuedTaskid], [ScheduledTaskid]) values (N'70fd4cc2-bad2-4edc-9c57-d4bc59fbf5fe', N'546f21d6-10e6-49e3-81f1-a3894ac36148')
Go
Insert [dbo].[ml_ScheduledQueuedTasks] ([queuedTaskid], [ScheduledTaskid]) values (N'19076aa9-907e-459f-97ef-4a18bdebe9ad', N'546f21d6-10e6-49e3-81f1-a3894ac36148')
Go
Set ansi_Padding on
Go
/****** object:  index [queuedTaskidUnique]    script date: 12/31/2020 9:27:54 am ******/
Alter table [dbo].[ml_ScheduledQueuedTasks] add  constraint [queuedTaskidUnique] unique nonclustered 
(
	[queuedTaskid] asc
)with (pad_Index = off, statistics_Norecompute = off,  ignore_Dup_Key = off, online = off, allow_Row_Locks = on, allow_Page_Locks = on, optimize_For_Sequential_Key = off) on [primary]
Go
Alter table [dbo].[ml_Log] add  constraint [dfml_LogTimeStamp]  default (getutcdate()) for [timeStamp]
Go
Alter table [dbo].[ml_Registration] add  constraint [dfml_RegistrationIsSchedulable]  default ((1)) for [isSchedulable]
Go
Alter table [dbo].[ml_Registration] add  constraint [dfml_RegistrationIsQueueable]  default ((1)) for [isQueueable]
Go
Alter table [dbo].[ml_Registration] add  constraint [dfml_RegistrationWaitOneTimeout]  default ((10)) for [waitOneTimeout]
Go
Alter table [dbo].[ml_ServerQueues] add  constraint [dfml_ServerQueuesTimeStamp]  default (getutcdate()) for [timeStamp]
Go
/****** object:  storedprocedure [dbo].[usp_ml_TruncateTasks]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
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
Go
/****** object:  storedprocedure [dbo].[usp_ml_AbortScheduledTask]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
Create procedure [dbo].[usp_ml_AbortScheduledTask] 
	@id nvarchar(128), @status nvarchar(200), @recentUpdateTime datetime
As
Begin
	Update ml_ScheduledTask set status=@status, recentUpdateTime=@recentUpdateTime, modifiedDate=getutcdate()  where id=@id
End
Go
/****** object:  storedprocedure [dbo].[usp_ml_AddAuditRecord]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
Create procedure [dbo].[usp_ml_AddAuditRecord] 
	@TaskId nvarchar(128),@processorName nvarchar(1000),@status nvarchar(200),@processStartTime datetime, @recentUpdateTime datetime
As
Begin
	Insert into ml_ExecuteTask
		(TaskId,processorName,status,processStartTime,recentUpdateTime) 
	Values 
		(@TaskId,@processorName,@status,@processStartTime, @recentUpdateTime)
End
Go
/****** object:  storedprocedure [dbo].[usp_ml_AddScheduledTaskToQueue]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
Create proc [dbo].[usp_ml_AddScheduledTaskToQueue]
@ScheduledTaskid nvarchar(128)
As
Begin tran
	Declare @queuedTaskid nvarchar (128)
	Declare @processType nvarchar (100)
	Select @queuedTaskid = lower( convert(nvarchar(max), newid()))
	Declare @xmldata xml
	
	Select @processType= [data].value('declare namespace ns="Http://www.MachineLearning.Com/ml/baseTaskdata/"; 
	(/*/ns:Tasktype/text())[1]', 'nvarchar(max)') ,@xmldata= data
	From ml_ScheduledTask
	Where id=@ScheduledTaskid
	
	Set @xmldata.modify('declare namespace ns="Http://www.MachineLearning.Com/ml/baseTaskdata/";replace value of (/*/ns:id/text())[1] with sql:variable("@queuedTaskid")')
		
-- add Task to queue table
	Insert into ml_QueuedTask 
		(id,tenantId, userId, data, dataVersion, TaskName, processType, isScheduled, status, 
		QueuedTime, checksum, recentUpdateTime, createdBy, createdDate, modifiedBy,modifiedDate )

	Select 
		@queuedTaskid, tenantId, userId, @xmldata, dataVersion, ScheduleName, processType, 1, 'ScheduledQueued', 
		Getutcdate(),checksum, recentUpdateTime, createdBy, getutcdate(), modifiedBy, getutcdate()
	From ml_ScheduledTask	
	Where id=@ScheduledTaskid
	
	
	

--add Task to Schedule mapping table
	Insert into ml_ScheduledQueuedTasks(queuedTaskid,ScheduledTaskid) values(@queuedTaskid,@ScheduledTaskid)

-- post notification to service broker queue 
	Declare @notificationdialog uniqueidentifier;
	Declare @message xml;
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
Go
/****** object:  storedprocedure [dbo].[usp_ml_AddScheduledTaskToQueueOld]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go


Create proc [dbo].[usp_ml_AddScheduledTaskToQueueOld]
@ScheduledTaskid nvarchar(128)
As
Begin tran
	Declare @queuedTaskid nvarchar (128)
	Declare @processType nvarchar (100)
	Select @queuedTaskid = lower( convert(nvarchar(max), newid()) )
	
	Select @processType= [data].value('declare namespace ns="Http://www.MachineLearning.Com/ml/baseTaskdata/"; 
	(/*/ns:Tasktype/text())[1]', 'nvarchar(max)') 
	From ml_ScheduledTask
	Where id=@ScheduledTaskid

-- add Task to queue table
	Insert into ml_QueuedTask 
		(id,tenantId, userId, data, dataVersion, TaskName, processType, isScheduled, status, 
		QueuedTime, checksum, modifiedBy, recentUpdateTime, createdBy, createdDate)

	Select 
		@queuedTaskid, tenantId, userId, data, dataVersion, ScheduleName, processType, 1, 'ScheduledQueued', 
		Getutcdate(),checksum, recentUpdateBy, recentUpdateTime, createdBy, getdate()
	From ml_ScheduledTask	
	Where id=@ScheduledTaskid
	

	Update  ml_QueuedTask 
		Set [data].modify('declare namespace ns="Http://www.MachineLearning.Com/ml/baseTaskdata/";replace value of (/*/ns:id/text())[1] with sql:variable("@queuedTaskid")')
	Where id=@queuedTaskid
	
	

--add Task to Schedule mapping table
	Insert into ml_ScheduledQueuedTasks(queuedTaskid,ScheduledTaskid) values(@queuedTaskid,@ScheduledTaskid)

-- post notification to service broker queue 
	Declare @notificationdialog uniqueidentifier;
	Declare @message xml;
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

Go
--/****** object:  storedprocedure [dbo].[usp_ml_AddScheduledTaskToQueue]    script date: 12/31/2020 9:27:54 am ******/
--Set ansi_Nulls on
--Go
--Set quoted_Identifier on
--Go
--Create procedure [dbo].[usp_ml_AddScheduledTaskToQueue] 
--	@queuedTaskid nvarchar (128), @ScheduledTaskid nvarchar (128)
--As
--Begin
--	Insert into ml_ScheduledQueuedTasks(queuedTaskid,ScheduledTaskid) values(@queuedTaskid,@ScheduledTaskid)
--End
--Go
--/****** object:  storedprocedure [dbo].[usp_ml_AddScheduleTask]    script date: 12/31/2020 9:27:54 am ******/
--Set ansi_Nulls on
--Go
--Set quoted_Identifier on
--Go
--Create procedure [dbo].[usp_ml_AddScheduleTask] 
--	@id nvarchar(128), @tenantId int, @userId nvarchar(128), @userName nvarchar(256), @data xml, @dataVersion nvarchar(100), 
--	@ScheduleName nvarchar(100),@processType nvarchar(100),
--	@status nvarchar(200),
--	@checksum nvarchar(128),@recentUpdateTime datetime,
--	@frequency nvarchar(100), @ScheduledTime datetime, @recentUpdateBy nvarchar(100)
--As
--Begin
--		Insert into ml_ScheduledTask
--			(id,tenantId,userId,data, dataVersion, ScheduleName, processType,frequency, ScheduledTime,status, 
--			Checksum,recentUpdateBy,recentUpdateTime, createdBy, createdDate, modifiedBy,modifiedDate ) 
--		Values 
--			(@id,@tenantId,@userId,@data, @dataVersion, @ScheduleName, @processType,  
--			@frequency, @ScheduledTime, @status, @checksum,@recentUpdateBy,@recentUpdateTime,
--			@userName, getutcdate(), @userName, getutcdate())
--End
--Go
/****** object:  storedprocedure [dbo].[usp_ml_AddTaskToQueue]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
Create procedure [dbo].[usp_ml_AddTaskToQueue] 
	@id nvarchar(128), @tenantId int, @userId nvarchar(128), @userName nvarchar(256), @data xml, @dataVersion nvarchar(100), 
	@TaskName nvarchar(100),@processType nvarchar(100),
	@isScheduled bit,@status nvarchar(200),@queuedTime datetime,
	@checksum nvarchar(128),@recentUpdateTime datetime
As
Begin tran

	Insert into ml_QueuedTask
		(id,tenantId,userId,data, dataVersion, TaskName, processType,isScheduled, status, 
		 QueuedTime,checksum,recentUpdateTime, createdBy, createdDate, modifiedBy, modifiedDate  ) 
	Values (@id,@tenantId,@userId,@data, @dataVersion, @TaskName,@processType, 
			@isScheduled, @status, @queuedTime,@checksum,@recentUpdateTime,
			@userName, getutcdate(),@userName, getutcdate())
			
			
	Declare @notificationdialog uniqueidentifier;
    Declare @message xml;
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
Go
/****** object:  storedprocedure [dbo].[usp_ml_CheckDuplicateTaskInQueue]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
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
Go
/****** object:  storedprocedure [dbo].[usp_ml_DeleteRegisteredTaskService]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
Create procedure [dbo].[usp_ml_DeleteRegisteredTaskService] 
	@TaskType nvarchar(128)
As
Begin
	Delete from ml_Registration where TaskType=@TaskType
End
Go
/****** object:  storedprocedure [dbo].[usp_ml_DeleteScheduledTask]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
Create procedure [dbo].[usp_ml_DeleteScheduledTask] 
	@id nvarchar(128)
As
Begin
	Delete from ml_ScheduledTask   where id=@id
	 And id not in(select ScheduledTaskid from ml_ScheduledQueuedTasks 
	 Where ml_ScheduledTask.Id=ml_ScheduledQueuedTasks.ScheduledTaskid and 
	 ml_ScheduledQueuedTasks.ScheduledTaskid=@id)
	 
End
Go
/****** object:  storedprocedure [dbo].[usp_ml_DeleteTask]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
Create procedure [dbo].[usp_ml_DeleteTask] 
	@id nvarchar(128)
As
Begin
	
	Delete from ml_ScheduledTask   where id=@id
	Delete from ml_CompletedTask where id=@id
	Delete from ml_ScheduledQueuedTasks where ScheduledTaskid=@id
End
Go
/****** object:  storedprocedure [dbo].[usp_ml_GetRegisteredTaskImplementationType]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
Create procedure [dbo].[usp_ml_GetRegisteredTaskImplementationType] 
	@TaskType nvarchar(128)
As
Begin
	Select implementationType from ml_Registration [nolock]   where isActive='true' and TaskType=@TaskType
End
Go
/****** object:  storedprocedure [dbo].[usp_ml_GetRegisteredTasks]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
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
Go
/****** object:  storedprocedure [dbo].[usp_ml_GetScheduledTaskById]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
Create procedure [dbo].[usp_ml_GetScheduledTaskById] 
	@ScheduledTaskid nvarchar(128)
As
Begin
	Select 
		Isnull(id,'') id, isnull(tenantId,'') tenantId, isnull(userId,'') [userId], isnull(data,'') data, isnull(dataVersion,'') dataVersion, 
		Isnull(ScheduleName,'') ScheduleName, isnull(processType,'') processType, isnull(frequency,'') frequency, isnull(ScheduledTime,'') ScheduledTime, isnull(status,'') status, 
		Isnull(lastRunStatus,'') lastRunStatus, isnull(startTime,'') startTime, isnull(endTime,'') endTime, isnull(checksum,'') checksum, 
		Isnull(recentUpdateBy,'') recentUpdateBy, isnull(recentUpdateTime,'') recentUpdateTime, 
		Isnull(createdBy,'') as createdBy, isnull(createdDate,'') as createdDate, isnull(modifiedBy,'') as modifiedBy, isnull(modifiedDate,'') as modifiedDate
	From 
		ml_ScheduledTask  [nolock] 
	Where 
		Id=@ScheduledTaskid
End
Go
/****** object:  storedprocedure [dbo].[usp_ml_GetScheduledTasklist]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
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
					 Isnull(id,'''') id, isnull(tenantId,'''') tenantId, isnull(userId,'''') [userId], isnull(data,'''') data, 
					 Isnull(dataVersion,'''') dataVersion, isnull(ScheduleName,'''') ScheduleName, isnull(processType,'''') processType, isnull(frequency,'''') frequency, 
					 ScheduledTime, isnull(status,'''') status, isnull(lastRunStatus,'''') lastRunStatus, startTime, 
					 EndTime, isnull(checksum,'''') checksum, isnull(recentUpdateBy,'''') recentUpdateBy, isnull(recentUpdateTime,'''') 
					 RecentUpdateTime, isnull(createdBy,'''') as createdBy, createdDate, isnull(modifiedBy,'''') as modifiedBy, 
					 ModifiedDate
                From ml_ScheduledTask  [nolock]  where 1=1 '+ @whereclause 
		)

End
Go
/****** object:  storedprocedure [dbo].[usp_ml_GetScheduledTaskTypenExtSlotTime]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
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


Go
/****** object:  storedprocedure [dbo].[usp_ml_GetSchedulerStatus]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
Create procedure [dbo].[usp_ml_GetSchedulerStatus] 
	@id nvarchar(128)
As
Begin
	Select status from ml_ScheduledTask  [nolock] where id=@id
End
Go
/****** object:  storedprocedure [dbo].[usp_ml_GetRegisteredSuspendedTasks]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
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
Go
/****** object:  storedprocedure [dbo].[usp_ml_GetTaskById]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
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
			Id=@Taskid,queueId=id, isnull(tenantId,'') tenantId, isnull(userId,'') [userId], data, dataVersion, TaskName,processType, isScheduled, status, queuedTime, processStartTime, processEndTime ,checksum,recentUpdateTime, 
			Case isScheduled  when '1'  then isnull(@frequency,'') else ''  end as frequency, case isScheduled  when '1' then isnull(@lastRunStatus,'') else '' end  as lastRunStatus,
			Isnull(createdBy,'') as createdBy, createdDate, isnull(modifiedBy,'') as modifiedBy, modifiedDate
		From 
			ml_QueuedTask [nolock] 
		Where 
			Id in(select queuedTaskid from ml_ScheduledQueuedTasks [nolock]  where (queuedTaskid=@Taskid or ScheduledTaskid=@Taskid) )
	Union all 
		Select 
			Id,queueId='',isnull(tenantId,'') tenantId, isnull(userId,'') [userId],data, dataVersion, ScheduleName,processType, isScheduled='1', status, ScheduledTime queuedTime, startTime processStartTime,  endTime processEndTime,checksum,recentUpdateTime, isnull(frequency,'') frequency , 
			Isnull(lastRunStatus,'') as lastRunStatus,
			Isnull(createdBy,'') as createdBy, createdDate, isnull(modifiedBy,'') as modifiedBy, modifiedDate
		From 
			ml_ScheduledTask [nolock] 
		Where 
			Id=@Taskid and id not in(select ScheduledTaskid from ml_ScheduledQueuedTasks  [nolock] where ScheduledTaskid=@Taskid)
	Union all 
		Select 
			Id=@Taskid,queueId=id,isnull(tenantId,'') tenantId, isnull(userId,'') [userId],data, dataVersion, TaskName,processType, isScheduled, status, queuedTime, processStartTime, processEndTime ,checksum,recentUpdateTime, 
			Case isScheduled  when '1'  then isnull(@frequency,'') else ''  end as frequency, case isScheduled  when '1' then isnull(@lastRunStatus,'') else '' end  as lastRunStatus,
			Isnull(createdBy,'') as createdBy, createdDate, isnull(modifiedBy,'') as modifiedBy, modifiedDate
		From 
			ml_CompletedTask [nolock]  
		Where 
			Id in(select queuedTaskid from ml_ScheduledQueuedTasks [nolock]  where (queuedTaskid=@Taskid or ScheduledTaskid=@Taskid) )
	Union all 
	
		Select 
			Id,queueId=id,isnull(tenantId,'') tenantId, isnull(userId,'') [userId],data, dataVersion, TaskName,processType, isScheduled, status, queuedTime, processStartTime, processEndTime ,checksum,recentUpdateTime, 
			Case isScheduled  when '1'  then isnull(@frequency,'') else ''  end as frequency, case isScheduled  when '1' then isnull(@lastRunStatus,'') else '' end  as lastRunStatus,
			Isnull(createdBy,'') as createdBy, createdDate, isnull(modifiedBy,'') as modifiedBy, modifiedDate
		From 
			ml_QueuedTask [nolock] 
		Where 
			Id=@Taskid and not exists(select 1 from ml_ScheduledQueuedTasks [nolock]  where (queuedTaskid=@Taskid or ScheduledTaskid=@Taskid) )
	Union all 
		Select 
			Id,queueId=id,isnull(tenantId,'') tenantId, isnull(userId,'') [userId],data, dataVersion, TaskName,processType, isScheduled, status, queuedTime, processStartTime, processEndTime ,checksum,recentUpdateTime, 
			Case isScheduled  when '1'  then isnull(@frequency,'') else ''  end as frequency, case isScheduled  when '1' then isnull(@lastRunStatus,'') else '' end  as lastRunStatus,
			Isnull(createdBy,'') as createdBy, createdDate, isnull(modifiedBy,'') as modifiedBy, modifiedDate
		From 
			ml_CompletedTask [nolock]  
		Where 
			Id=@Taskid and not exists(select 1 from ml_ScheduledQueuedTasks [nolock]  where (queuedTaskid=@Taskid or ScheduledTaskid=@Taskid) )
			
		) src order by queuedTime desc, modifiedDate 
End
Go
/****** object:  storedprocedure [dbo].[usp_ml_GetTaskdataById]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
Create procedure [dbo].[usp_ml_GetTaskdataById] 
	@id nvarchar(128)
As
Begin
	Select data from ml_QueuedTask [nolock]  where id=@id 
	Union all 
	Select data from ml_ScheduledTask [nolock]  where id=@id 
	Union all
	Select data from ml_CompletedTask  [nolock]  where id=@id 
End
Go
/****** object:  storedprocedure [dbo].[usp_ml_GetTasklist]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
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
				Select aqt.Id,queueId=aqt.Id,isnull(tenantId,'''') tenantId, isnull(userId,'''') [userId],data, dataVersion, TaskName,processType,aet.ProcessorName,isScheduled, isnull(aet.Status,aqt.Status) status, queuedTime, aet.ProcessStartTime processStartTime, aet.ProcessEndTime processEndTime,checksum,isnull(aet.RecentUpdateTime,aqt.RecentUpdateTime) recentUpdateTime,isnull(case isScheduled  when ''1'' then (select frequency from ml_ScheduledTask where id= aqt.Id)  else '''' end,'''') as frequency, isnull(case isScheduled  when ''1'' then (select lastRunStatus from ml_ScheduledTask where id= aqt.Id) else '''' end,'''') as lastRunStatus, isnull(createdBy,'''') as createdBy, createdDate, isnull(modifiedBy,'''') as modifiedBy, modifiedDate 
				From ml_QueuedTask aqt left join ml_ExecuteTask  aet  on  aqt.Id=aet.TaskId  
				Where  isScheduled=''false''   '+ @whereclause + '
				Union all 
				Select id,queueId='''',isnull(tenantId,'''') tenantId, isnull(userId,'''') [userId],data, dataVersion, ScheduleName,processType,'''' processorName,isScheduled=''1'',status, ScheduledTime queuedTime, startTime processStartTime, endTime processEndTime,checksum,recentUpdateTime, isnull(frequency,'''') frequency , isnull(lastRunStatus,'''') as lastRunStatus, isnull(createdBy,'''') as createdBy,  createdDate, isnull(modifiedBy,'''') as modifiedBy, modifiedDate 
				From ml_ScheduledTask [nolock]  
				Where  '+ @schwhereclause + '
				Union all 
				Select aqt.Id,queueId=aqt.Id,isnull(tenantId,'''') tenantId, isnull(userId,'''') [userId],data, dataVersion, TaskName,processType,aet.ProcessorName,isScheduled, isnull(aet.Status,aqt.Status) status, queuedTime, aet.ProcessStartTime processStartTime, aet.ProcessEndTime processEndTime,checksum,isnull(aet.RecentUpdateTime,aqt.RecentUpdateTime) recentUpdateTime, isnull(case isScheduled  when ''1'' then (select frequency from ml_ScheduledTask where id= aqt.Id)  else '''' end,'''') as frequency, isnull(case isScheduled  when ''1'' then (select lastRunStatus from ml_ScheduledTask where id= aqt.Id) else '''' end,'''') as lastRunStatus, isnull(createdBy,'''') as createdBy, createdDate, isnull(modifiedBy,'''') as modifiedBy, modifiedDate 
				From ml_CompletedTask aqt left join ml_ExecuteTask  aet  on  aqt.Id=aet.TaskId 
				Where  isScheduled=''false''  '+ @whereclause + '
				Union all 
				Select id=ScheduledTaskid,queueId=queuedTaskid,isnull(tenantId,'''') tenantId, isnull(userId,'''') [userId],data, dataVersion, TaskName,processType,aet.ProcessorName, isScheduled, isnull(aet.Status,aqt.Status) status, (select ScheduledTime from ml_ScheduledTask where id=ScheduledTaskid) queuedTime, aet.ProcessStartTime processStartTime, aet.ProcessEndTime processEndTime,checksum,isnull(aet.RecentUpdateTime,aqt.RecentUpdateTime) recentUpdateTime, isnull(case isScheduled  when ''1'' then (select frequency from ml_ScheduledTask where id= ScheduledTaskid or id= queuedTaskid)  else '''' end,'''') as frequency, isnull(case isScheduled  when ''1'' then (select lastRunStatus from ml_ScheduledTask where id= ScheduledTaskid or id= queuedTaskid) else '''' end ,'''')as lastRunStatus, isnull(createdBy,'''') as createdBy, createdDate, isnull(modifiedBy,'''') as modifiedBy, modifiedDate 
				From ml_QueuedTask aqt  join ml_ScheduledQueuedTasks sqt on aqt.Id=queuedTaskid  left join ml_ExecuteTask  aet  on  aqt.Id=aet.TaskId  
				Where isScheduled=''true'' ' + @whereclause + '
				Union all 
				Select id=ScheduledTaskid,queueId=queuedTaskid,isnull(tenantId,'''') tenantId, isnull(userId,'''') [userId],data, dataVersion, TaskName,processType,aet.ProcessorName, isScheduled, isnull(aet.Status,aqt.Status) status, (select ScheduledTime from ml_ScheduledTask where id=ScheduledTaskid) queuedTime, aet.ProcessStartTime processStartTime, aet.ProcessEndTime processEndTime,checksum,isnull(aet.RecentUpdateTime,aqt.RecentUpdateTime) recentUpdateTime, isnull(case isScheduled  when ''1'' then (select frequency from ml_ScheduledTask where id= ScheduledTaskid or id= queuedTaskid)  else '''' end,'''') as frequency, isnull(case isScheduled  when ''1'' then (select lastRunStatus from ml_ScheduledTask where id= ScheduledTaskid or id= queuedTaskid) else '''' end ,'''')as lastRunStatus, isnull(createdBy,'''') as createdBy, createdDate, isnull(modifiedBy,'''') as modifiedBy, modifiedDate 
				From ml_CompletedTask aqt  join ml_ScheduledQueuedTasks on aqt.Id=queuedTaskid  left join ml_ExecuteTask  aet  on  aqt.Id=aet.TaskId  
				Where  isScheduled=''true'' '+ @whereclause + '
			) src order by queuedTime desc,  modifiedDate '
			
			
		)

End
Go
/****** object:  storedprocedure [dbo].[usp_usp_ml_GetTasklistByProperty]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
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
			Select aqt.Id,queueId=aqt.Id,isnull(tenantId,'''') tenantId, isnull(userId,'''') [userId],data, dataVersion, TaskName,processType,aet.ProcessorName,isScheduled, isnull(aet.Status,aqt.Status) status, queuedTime, aet.ProcessStartTime processStartTime, aet.ProcessEndTime processEndTime,checksum,isnull(aet.RecentUpdateTime,aqt.RecentUpdateTime) recentUpdateTime,isnull(case isScheduled  when ''1'' then (select frequency from ml_ScheduledTask where id= aqt.Id)  else '''' end,'''') as frequency, isnull(case isScheduled  when ''1'' then (select lastRunStatus from ml_ScheduledTask where id= aqt.Id) else '''' end,'''') as lastRunStatus, isnull(createdBy,'''') as createdBy, createdDate, isnull(modifiedBy,'''') as modifiedBy, modifiedDate 
			From ml_QueuedTask aqt left join ml_ExecuteTask  aet  on  aqt.Id=aet.TaskId  
			Where  isScheduled=''false''  and '+ @whereclause + '
			Union all 
			Select id,queueId='''',isnull(tenantId,'''') tenantId, isnull(userId,'''') [userId],data, dataVersion, ScheduleName,processType,'''' processorName,isScheduled=''1'',status,ScheduledTime queuedTime, startTime processStartTime, endTime processEndTime,checksum,recentUpdateTime, isnull(frequency,'''') frequency , isnull(lastRunStatus,'''') as lastRunStatus, isnull(createdBy,'''') as createdBy, createdDate, isnull(modifiedBy,'''') as modifiedBy, modifiedDate 
			From ml_ScheduledTask [nolock]  
			Where  '+ @whereclause + '
			Union all 
			Select aqt.Id,queueId=aqt.Id,isnull(tenantId,'''') tenantId, isnull(userId,'''') [userId],data, dataVersion, TaskName,processType,aet.ProcessorName,isScheduled, isnull(aet.Status,aqt.Status) status, queuedTime, aet.ProcessStartTime processStartTime, aet.ProcessEndTime processEndTime,checksum,isnull(aet.RecentUpdateTime,aqt.RecentUpdateTime) recentUpdateTime, isnull(case isScheduled  when ''1'' then (select frequency from ml_ScheduledTask where id= aqt.Id)  else '''' end,'''') as frequency, isnull(case isScheduled  when ''1'' then (select lastRunStatus from ml_ScheduledTask where id= aqt.Id) else '''' end,'''') as lastRunStatus, isnull(createdBy,'''') as createdBy, createdDate, isnull(modifiedBy,'''') as modifiedBy, modifiedDate 
			From ml_CompletedTask aqt left join ml_ExecuteTask  aet  on  aqt.Id=aet.TaskId 
			Where  isScheduled=''false''  and '+ @whereclause + '
			Union all 
			Select id=ScheduledTaskid,queueId=queuedTaskid,isnull(tenantId,'''') tenantId, isnull(userId,'''') [userId],data, dataVersion, TaskName,processType,aet.ProcessorName, isScheduled, isnull(aet.Status,aqt.Status) status, queuedTime, aet.ProcessStartTime processStartTime, aet.ProcessEndTime processEndTime,checksum,isnull(aet.RecentUpdateTime,aqt.RecentUpdateTime) recentUpdateTime, isnull(case isScheduled  when ''1'' then (select frequency from ml_ScheduledTask where id= ScheduledTaskid or id= queuedTaskid)  else '''' end,'''') as frequency, isnull(case isScheduled  when ''1'' then (select lastRunStatus from ml_ScheduledTask where id= ScheduledTaskid or id= queuedTaskid) else '''' end ,'''')as lastRunStatus, isnull(createdBy,'''') as createdBy, createdDate, isnull(modifiedBy,'''') as modifiedBy, modifiedDate 
			From ml_QueuedTask aqt  join ml_ScheduledQueuedTasks sqt on aqt.Id=queuedTaskid  left join ml_ExecuteTask  aet  on  aqt.Id=aet.TaskId  
			Where isScheduled=''true'' and' + @whereclause + '
			Union all 
			Select id=ScheduledTaskid,queueId=queuedTaskid,isnull(tenantId,'''') tenantId, isnull(userId,'''') [userId],data, dataVersion, TaskName,processType,aet.ProcessorName, isScheduled, isnull(aet.Status,aqt.Status) status, queuedTime, aet.ProcessStartTime processStartTime, aet.ProcessEndTime processEndTime,checksum,isnull(aet.RecentUpdateTime,aqt.RecentUpdateTime) recentUpdateTime, isnull(case isScheduled  when ''1'' then (select frequency from ml_ScheduledTask where id= ScheduledTaskid or id= queuedTaskid)  else '''' end,'''') as frequency, isnull(case isScheduled  when ''1'' then (select lastRunStatus from ml_ScheduledTask where id= ScheduledTaskid or id= queuedTaskid) else '''' end ,'''')as lastRunStatus, isnull(createdBy,'''') as createdBy, createdDate, isnull(modifiedBy,'''') as modifiedBy, modifiedDate 
			From ml_CompletedTask aqt  join ml_ScheduledQueuedTasks on aqt.Id=queuedTaskid  left join ml_ExecuteTask  aet  on  aqt.Id=aet.TaskId  
			Where  isScheduled=''true'' and '+ @whereclause + ''
		)
End
Go
/****** object:  storedprocedure [dbo].[usp_ml_GetTaskObjectSchema]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
Create procedure [dbo].[usp_ml_GetTaskObjectSchema] 
	@TaskType nvarchar (128)
As
Begin
	Select TaskObjectSchema from ml_Registration [nolock] where TaskType=@TaskType  and isActive='true'
End
Go
/****** object:  storedprocedure [dbo].[usp_ml_GetTaskObjectType]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
Create procedure [dbo].[usp_ml_GetTaskObjectType] 
	@TaskType nvarchar (128)
As
Begin
	Select TaskObjectType from ml_Registration [nolock] where TaskType=@TaskType  and isActive='true'
End
Go
/****** object:  storedprocedure [dbo].[usp_ml_GetTaskProcessorType]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
Create procedure [dbo].[usp_ml_GetTaskProcessorType] 
	@TaskType nvarchar (128)
As
Begin
	Select TaskProcessorType from ml_Registration [nolock] where TaskType=@TaskType  and isActive='true'
End
Go
/****** object:  storedprocedure [dbo].[usp_ml_GetTaskStatus]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
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
Go
/****** object:  storedprocedure [dbo].[usp_ml_GetTaskStatusDetails]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
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
Go
/****** object:  storedprocedure [dbo].[usp_ml_GetUnregisteredTasks]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
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
Go
/****** object:  storedprocedure [dbo].[usp_ml_IsTaskExists]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
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
Go
/****** object:  storedprocedure [dbo].[usp_ml_IsTaskInProcess]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
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
Go
/****** object:  storedprocedure [dbo].[usp_ml_IsTaskTypeJobsInProcess]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
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
Go
/****** object:  storedprocedure [dbo].[usp_ml_IsTaskTypeRegistered]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
Create procedure [dbo].[usp_ml_IsTaskTypeRegistered] 
	@TaskType nvarchar (128)
As
Begin
	Select 'true' 
	Where 
		Exists(select 1 from ml_Registration where isActive='true' and TaskType=@TaskType)
End
Go
/****** object:  storedprocedure [dbo].[usp_ml_RegisterTaskService]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
Create procedure [dbo].[usp_ml_RegisterTaskService] 
	@id nvarchar(128), @TaskType nvarchar(128),  @implementationType nvarchar(100), @url nvarchar(1024),
	@TaskVersion nvarchar(512), @TaskObjectSchema xml, @TaskObjectType nvarchar(1024), 
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
Go
/****** object:  storedprocedure [dbo].[usp_ml_RegisterTaskService_Old]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go



Create procedure [dbo].[usp_ml_RegisterTaskService_Old] 
@registeredTaskmetadata xml, @registeredTaskprocessdata xml=null
	--@id nvarchar(128), @TaskType nvarchar(128),  @implementationType nvarchar(100), @url nvarchar(1024),
	--@TaskVersion nvarchar(512), @TaskObjectSchema xml, @TaskObjectType nvarchar(1024), 
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
,Tasktypeprocessorslist xml
,Taskdatabinaryassemblies xml
,Taskobjectschema xml
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
,Tasktypeprocessorslist xml
,Taskdatabinaryassemblies xml
,Taskobjectschema xml
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

Go
/****** object:  storedprocedure [dbo].[usp_ml_RemoveScheduledQueuedTask]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
Create procedure [dbo].[usp_ml_RemoveScheduledQueuedTask] 
	@ScheduledTaskid nvarchar(128)
As
Begin
	Delete from ml_ScheduledQueuedTasks  where ScheduledTaskid=@ScheduledTaskid
End
Go
/****** object:  storedprocedure [dbo].[usp_ml_ResetServerComponents]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
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
Go
/****** object:  storedprocedure [dbo].[usp_ml_ResumeRegisteredTaskService]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
Create procedure [dbo].[usp_ml_ResumeRegisteredTaskService] 
	@TaskType nvarchar(128)
As
Begin
	Update ml_Registration set isActive='1' where TaskType=@TaskType
End
Go
/****** object:  storedprocedure [dbo].[usp_ml_SuspendRegisteredTaskService]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
Create procedure [dbo].[usp_ml_SuspendRegisteredTaskService] 
	@TaskType nvarchar(128)
As
Begin
	Update ml_Registration set isActive='0' where TaskType=@TaskType
End
Go
/****** object:  storedprocedure [dbo].[usp_ml_UpdateQueuedTask]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
Create procedure [dbo].[usp_ml_UpdateQueuedTask] 
	@id nvarchar(128), @tenantId int, @userId nvarchar(128), @userName nvarchar(256), @data xml, @dataVersion nvarchar(100), 
	@TaskName nvarchar(100),@processType nvarchar(100),
	@isScheduled bit,@status nvarchar(200),@queuedTime datetime,
	@checksum nvarchar(128),@recentUpdateTime datetime
As
Begin
	Update ml_QueuedTask set 
		TenantId=@tenantId,userId=@userId,data=@data,dataVersion=@dataVersion, 
		TaskName=@TaskName,processType=@processType,isScheduled=@isScheduled,
		Status=@status,queuedTime=@queuedTime,checksum=@checksum,recentUpdateTime=@recentUpdateTime,
		 ModifiedBy =@userName, modifiedDate=@recentUpdateTime
	Where id=@id
End
Go
/****** object:  storedprocedure [dbo].[usp_ml_UpdateRegisteredTaskService]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
Create procedure [dbo].[usp_ml_UpdateRegisteredTaskService] 
	@id nvarchar(128), @TaskType nvarchar(128),  @implementationType nvarchar(100), @url nvarchar(1024),
	@TaskVersion nvarchar(512), @TaskObjectSchema xml, @TaskObjectType nvarchar(1024), 
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
Go
/****** object:  storedprocedure [dbo].[usp_ml_UpdateRunningJobs]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
Create procedure [dbo].[usp_ml_UpdateRunningJobs] 
	@TaskType nvarchar (128), @currentJobs int
As
Begin
	Update ml_Registration set currentJobs=currentJobs+ @currentJobs where TaskType=@TaskType
End
Go
/****** object:  storedprocedure [dbo].[usp_ml_UpdateScheduledTask]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
Create procedure [dbo].[usp_ml_UpdateScheduledTask] 
	@id nvarchar(128), @tenantId int, @userId nvarchar(128), @userName nvarchar(256), @data xml, @dataVersion nvarchar(100), 
	@ScheduleName nvarchar(100),@processType nvarchar(100),
	@status nvarchar(200),
	@checksum nvarchar(128),@recentUpdateTime datetime,
	@frequency nvarchar(100), @ScheduledTime datetime, @recentUpdateBy nvarchar(100)
As
Begin
	Update ml_ScheduledTask set 
		TenantId=@tenantId,userId=@userId,data=@data, dataVersion=@dataVersion, 
		ScheduleName=@ScheduleName, processType=@processType,frequency=@frequency,ScheduledTime=@ScheduledTime,status=@status, checksum=@checksum,
		RecentUpdateBy=@recentUpdateBy,recentUpdateTime=@recentUpdateTime ,
		ModifiedBy =@userName, modifiedDate =@recentUpdateTime
	Where id=@id
End

Go
/****** object:  storedprocedure [dbo].[usp_ml_DeleteExipiredScheduledTasks]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
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
		 Select id
		 From   
			  ml_ScheduledTask cross apply 
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
Go
/****** object:  storedprocedure [dbo].[usp_ml_VerifyAndUpdateWebTaskStatus]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
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
Go
/****** object:  trigger [dbo].[tr_ml_CompletedTask]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
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
Go
Alter table [dbo].[ml_CompletedTask] enable trigger [tr_ml_CompletedTask]
Go
/****** object:  trigger [dbo].[tr_ml_ExecuteTask]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go

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

Go
Alter table [dbo].[ml_ExecuteTask] enable trigger [tr_ml_ExecuteTask]
Go
/****** object:  trigger [dbo].[tr_ml_Log]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
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
Go
Alter table [dbo].[ml_Log] enable trigger [tr_ml_Log]
Go
/****** object:  trigger [dbo].[tr_ml_QueuedTask]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go
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
Go
Alter table [dbo].[ml_QueuedTask] enable trigger [tr_ml_QueuedTask]
Go
/****** object:  trigger [dbo].[tr_ml_ScheduledTask]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_Nulls on
Go
Set quoted_Identifier on
Go

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
Go
Alter table [dbo].[ml_ScheduledTask] enable trigger [tr_ml_ScheduledTask]
Go
