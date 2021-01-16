/*    ==scripting parameters==

    Source server version : sql server 2019 (15.0.2000)
    Source database engine edition : microsoft sql server enterprise edition
    Source database engine type : standalone sql server

    Target server version : sql server 2019
    Target database engine edition : microsoft sql server enterprise edition
    Target database engine type : standalone sql server
*/

/****** object:  trigger [ml_scheduled_task_trigger]    script date: 12/31/2020 9:27:53 am ******/
Drop trigger if exists [dbo].[ml_scheduled_task_trigger]
Go
/****** object:  trigger [ml_queued_task_trigger]    script date: 12/31/2020 9:27:53 am ******/
Drop trigger if exists [dbo].[ml_queued_task_trigger]
Go
/****** object:  trigger [ml_log_trigger]    script date: 12/31/2020 9:27:53 am ******/
Drop trigger if exists [dbo].[ml_log_trigger]
Go
/****** object:  trigger [ml_execute_task_trigger]    script date: 12/31/2020 9:27:53 am ******/
Drop trigger if exists [dbo].[ml_execute_task_trigger]
Go
/****** object:  trigger [ml_completed_task_trigger]    script date: 12/31/2020 9:27:53 am ******/
Drop trigger if exists [dbo].[ml_completed_task_trigger]
Go
/****** object:  storedprocedure [dbo].[verifyandupdatewebtaskstatus]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[verifyandupdatewebtaskstatus]
Go
/****** object:  storedprocedure [dbo].[usp_ml_deleteexipiredscheduledtasks]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[usp_ml_deleteexipiredscheduledtasks]
Go
/****** object:  storedprocedure [dbo].[test]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[test]
Go
/****** object:  storedprocedure [dbo].[ml_updatescheduledtask]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_updatescheduledtask]
Go
/****** object:  storedprocedure [dbo].[ml_updaterunningjobs]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_updaterunningjobs]
Go
/****** object:  storedprocedure [dbo].[ml_updateregisteredtaskservice]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_updateregisteredtaskservice]
Go
/****** object:  storedprocedure [dbo].[ml_updatequeuetask]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_updatequeuetask]
Go
/****** object:  storedprocedure [dbo].[ml_suspendregisteredtaskservice]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_suspendregisteredtaskservice]
Go
/****** object:  storedprocedure [dbo].[ml_resumeregisteredtaskservice]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_resumeregisteredtaskservice]
Go
/****** object:  storedprocedure [dbo].[ml_reset_ml_server_entities]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_reset_ml_server_entities]
Go
/****** object:  storedprocedure [dbo].[ml_removescheduled_queuedtask]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_removescheduled_queuedtask]
Go
/****** object:  storedprocedure [dbo].[ml_registertaskservice_old]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_registertaskservice_old]
Go
/****** object:  storedprocedure [dbo].[ml_registertaskservice]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_registertaskservice]
Go
/****** object:  storedprocedure [dbo].[ml_istasktyperegistered]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_istasktyperegistered]
Go
/****** object:  storedprocedure [dbo].[ml_istasktypejobsinprocess]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_istasktypejobsinprocess]
Go
/****** object:  storedprocedure [dbo].[ml_istaskinprocess]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_istaskinprocess]
Go
/****** object:  storedprocedure [dbo].[ml_istaskexists]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_istaskexists]
Go
/****** object:  storedprocedure [dbo].[ml_getunregisteredtasks]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_getunregisteredtasks]
Go
/****** object:  storedprocedure [dbo].[ml_gettaskstatusdetails]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_gettaskstatusdetails]
Go
/****** object:  storedprocedure [dbo].[ml_gettaskstatus]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_gettaskstatus]
Go
/****** object:  storedprocedure [dbo].[ml_gettaskprocessortype]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_gettaskprocessortype]
Go
/****** object:  storedprocedure [dbo].[ml_gettaskobjecttype]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_gettaskobjecttype]
Go
/****** object:  storedprocedure [dbo].[ml_gettaskobjectschema]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_gettaskobjectschema]
Go
/****** object:  storedprocedure [dbo].[ml_gettasklistbyproperty]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_gettasklistbyproperty]
Go
/****** object:  storedprocedure [dbo].[ml_gettasklist]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_gettasklist]
Go
/****** object:  storedprocedure [dbo].[ml_gettaskdatabyid]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_gettaskdatabyid]
Go
/****** object:  storedprocedure [dbo].[ml_gettaskbyid]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_gettaskbyid]
Go
/****** object:  storedprocedure [dbo].[ml_getsuspendedregisteredtasks]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_getsuspendedregisteredtasks]
Go
/****** object:  storedprocedure [dbo].[ml_getschedulerstatus]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_getschedulerstatus]
Go
/****** object:  storedprocedure [dbo].[ml_getscheduledtasktypenextslottime]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_getscheduledtasktypenextslottime]
Go
/****** object:  storedprocedure [dbo].[ml_getscheduledtasklist]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_getscheduledtasklist]
Go
/****** object:  storedprocedure [dbo].[ml_getscheduledtaskbyid]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_getscheduledtaskbyid]
Go
/****** object:  storedprocedure [dbo].[ml_getregisteredtasks]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_getregisteredtasks]
Go
/****** object:  storedprocedure [dbo].[ml_getregisteredtaskimplementationtype]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_getregisteredtaskimplementationtype]
Go
/****** object:  storedprocedure [dbo].[ml_deletetask]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_deletetask]
Go
/****** object:  storedprocedure [dbo].[ml_deletescheduledtask]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_deletescheduledtask]
Go
/****** object:  storedprocedure [dbo].[ml_deleteregisteredtaskservice]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_deleteregisteredtaskservice]
Go
/****** object:  storedprocedure [dbo].[ml_checkduplicatetaskinqueue]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_checkduplicatetaskinqueue]
Go
/****** object:  storedprocedure [dbo].[ml_addtasktoqueue]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_addtasktoqueue]
Go
/****** object:  storedprocedure [dbo].[ml_addscheduletask]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_addscheduletask]
Go
/****** object:  storedprocedure [dbo].[ml_addscheduledtasktoqueue]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_addscheduledtasktoqueue]
Go
/****** object:  storedprocedure [dbo].[ml_addscheduledtasktomlqueueandservicebrokerqueue_old]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_addscheduledtasktomlqueueandservicebrokerqueue_old]
Go
/****** object:  storedprocedure [dbo].[ml_addscheduledtasktomlqueueandservicebrokerqueue]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_addscheduledtasktomlqueueandservicebrokerqueue]
Go
/****** object:  storedprocedure [dbo].[ml_addmlauditrecord]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_addmlauditrecord]
Go
/****** object:  storedprocedure [dbo].[ml_abortscheduledtask]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ml_abortscheduledtask]
Go
/****** object:  storedprocedure [dbo].[ajitemptymldb]    script date: 12/31/2020 9:27:53 am ******/
Drop procedure if exists [dbo].[ajitemptymldb]
Go
If  exists (select * from sys.Objects where object_id = object_id(N'[dbo].[ml_server_queues]') and type in (N'u'))
Alter table [dbo].[ml_server_queues] drop constraint if exists [df_ml_server_queues_time_stamp]
Go
If  exists (select * from sys.Objects where object_id = object_id(N'[dbo].[ml_registration]') and type in (N'u'))
Alter table [dbo].[ml_registration] drop constraint if exists [df_ml_registration_wait_one_timeout]
Go
If  exists (select * from sys.Objects where object_id = object_id(N'[dbo].[ml_registration]') and type in (N'u'))
Alter table [dbo].[ml_registration] drop constraint if exists [df_ml_registration_is_queueable]
Go
If  exists (select * from sys.Objects where object_id = object_id(N'[dbo].[ml_registration]') and type in (N'u'))
Alter table [dbo].[ml_registration] drop constraint if exists [df_ml_registration_is_schedulable]
Go
If  exists (select * from sys.Objects where object_id = object_id(N'[dbo].[ml_log]') and type in (N'u'))
Alter table [dbo].[ml_log] drop constraint if exists [df_ml_log_time_stamp]
Go
/****** object:  index [queued_taskid_unique]    script date: 12/31/2020 9:27:53 am ******/
If  exists (select * from sys.Objects where object_id = object_id(N'[dbo].[scheduled_queued_tasks]') and type in (N'u'))
Alter table [dbo].[scheduled_queued_tasks] drop constraint if exists [queued_taskid_unique]
Go
/****** object:  table [dbo].[scheduled_queued_tasks]    script date: 12/31/2020 9:27:53 am ******/
Drop table if exists [dbo].[scheduled_queued_tasks]
Go
/****** object:  table [dbo].[readings]    script date: 12/31/2020 9:27:53 am ******/
Drop table if exists [dbo].[readings]
Go
/****** object:  table [dbo].[ml_taskprocessor_exec_results]    script date: 12/31/2020 9:27:53 am ******/
Drop table if exists [dbo].[ml_taskprocessor_exec_results]
Go
/****** object:  table [dbo].[ml_server_queues]    script date: 12/31/2020 9:27:53 am ******/
Drop table if exists [dbo].[ml_server_queues]
Go
/****** object:  table [dbo].[ml_scheduled_task_history]    script date: 12/31/2020 9:27:53 am ******/
Drop table if exists [dbo].[ml_scheduled_task_history]
Go
/****** object:  table [dbo].[ml_scheduled_task]    script date: 12/31/2020 9:27:53 am ******/
Drop table if exists [dbo].[ml_scheduled_task]
Go
/****** object:  table [dbo].[ml_registration_unregistered]    script date: 12/31/2020 9:27:53 am ******/
Drop table if exists [dbo].[ml_registration_unregistered]
Go
/****** object:  table [dbo].[ml_registration_processor_info]    script date: 12/31/2020 9:27:53 am ******/
Drop table if exists [dbo].[ml_registration_processor_info]
Go
/****** object:  table [dbo].[ml_registration]    script date: 12/31/2020 9:27:53 am ******/
Drop table if exists [dbo].[ml_registration]
Go
/****** object:  table [dbo].[ml_queued_task]    script date: 12/31/2020 9:27:53 am ******/
Drop table if exists [dbo].[ml_queued_task]
Go
/****** object:  table [dbo].[ml_log_history]    script date: 12/31/2020 9:27:53 am ******/
Drop table if exists [dbo].[ml_log_history]
Go
/****** object:  table [dbo].[ml_log]    script date: 12/31/2020 9:27:53 am ******/
Drop table if exists [dbo].[ml_log]
Go
/****** object:  table [dbo].[ml_execute_task_history]    script date: 12/31/2020 9:27:53 am ******/
Drop table if exists [dbo].[ml_execute_task_history]
Go
/****** object:  table [dbo].[ml_execute_task]    script date: 12/31/2020 9:27:53 am ******/
Drop table if exists [dbo].[ml_execute_task]
Go
/****** object:  table [dbo].[ml_completed_task_history]    script date: 12/31/2020 9:27:53 am ******/
Drop table if exists [dbo].[ml_completed_task_history]
Go
/****** object:  table [dbo].[ml_completed_task]    script date: 12/31/2020 9:27:53 am ******/
Drop table if exists [dbo].[ml_completed_task]
Go
/****** object:  userdefinedfunction [dbo].[getvaliddate]    script date: 12/31/2020 9:27:53 am ******/
Drop function if exists [dbo].[getvaliddate]
Go
/****** object:  userdefinedfunction [dbo].[getvaliddate]    script date: 12/31/2020 9:27:53 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
-- =============================================
-- author:		<author,,name>
-- create date: <create date, ,>
-- description:	<description, ,>
-- =============================================
Create function [dbo].[getvaliddate]
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
/****** object:  table [dbo].[ml_completed_task]    script date: 12/31/2020 9:27:53 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create table [dbo].[ml_completed_task](
	[id] [nvarchar](64) not null,
	[tenant_id] [nvarchar](64) not null,
	[user_id] [nvarchar](64) not null,
	[data] [xml] not null,
	[data_version] [nvarchar](50) not null,
	[task_name] [nvarchar](50) not null,
	[process_type] [nvarchar](50) not null,
	[is_scheduled] [bit] not null,
	[status] [nvarchar](100) not null,
	[queued_time] [datetime] null,
	[process_start_time] [datetime] null,
	[process_end_time] [datetime] null,
	[checksum] [nvarchar](64) not null,
	[recent_update_time] [datetime] not null,
	[created_by] [nvarchar](256) null,
	[created_date] [datetime] null,
	[modified_by] [nvarchar](256) null,
	[modified_date] [datetime] null,
 Constraint [pk_ml_completed_task] primary key clustered 
(
	[id] asc
)with (pad_index = off, statistics_norecompute = off, ignore_dup_key = off, allow_row_locks = on, allow_page_locks = on, optimize_for_sequential_key = off) on [primary]
) on [primary] textimage_on [primary]
Go
/****** object:  table [dbo].[ml_completed_task_history]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create table [dbo].[ml_completed_task_history](
	[id] [nvarchar](64) not null,
	[tenant_id] [nvarchar](64) not null,
	[user_id] [nvarchar](64) not null,
	[data] [xml] not null,
	[data_version] [nvarchar](50) not null,
	[task_name] [nvarchar](50) not null,
	[process_type] [nvarchar](50) not null,
	[is_scheduled] [bit] not null,
	[status] [nvarchar](100) not null,
	[queued_time] [datetime] null,
	[process_start_time] [datetime] null,
	[process_end_time] [datetime] null,
	[checksum] [nvarchar](64) not null,
	[recent_update_time] [datetime] not null,
	[created_by] [nvarchar](256) null,
	[created_date] [datetime] null,
	[modified_by] [nvarchar](256) null,
	[modified_date] [datetime] null
) on [primary] textimage_on [primary]
Go
/****** object:  table [dbo].[ml_execute_task]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create table [dbo].[ml_execute_task](
	[id] [numeric](18, 0) identity(1,1) not null,
	[task_id] [nvarchar](64) not null,
	[processor_name] [nvarchar](500) not null,
	[status] [nvarchar](100) not null,
	[process_start_time] [datetime] null,
	[process_end_time] [datetime] null,
	[recent_update_time] [datetime] not null,
Primary key clustered 
(
	[id] asc
)with (pad_index = off, statistics_norecompute = off, ignore_dup_key = off, allow_row_locks = on, allow_page_locks = on, optimize_for_sequential_key = off) on [primary]
) on [primary]
Go
/****** object:  table [dbo].[ml_execute_task_history]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create table [dbo].[ml_execute_task_history](
	[id] [numeric](18, 0) not null,
	[task_id] [nvarchar](64) not null,
	[processor_name] [nvarchar](500) not null,
	[status] [nvarchar](100) not null,
	[process_start_time] [datetime] null,
	[process_end_time] [datetime] null,
	[recent_update_time] [datetime] not null
) on [primary]
Go
/****** object:  table [dbo].[ml_log]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create table [dbo].[ml_log](
	[id] [numeric](18, 0) identity(1,1) not null,
	[task_id] [nvarchar](64) not null,
	[log_type] [nvarchar](50) not null,
	[method_name] [nvarchar](50) null,
	[log_message] [nvarchar](max) not null,
	[time_stamp] [datetime] null,
 Constraint [pk_ml_log] primary key clustered 
(
	[id] asc
)with (pad_index = off, statistics_norecompute = off, ignore_dup_key = off, allow_row_locks = on, allow_page_locks = on, optimize_for_sequential_key = off) on [primary]
) on [primary] textimage_on [primary]
Go
/****** object:  table [dbo].[ml_log_history]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create table [dbo].[ml_log_history](
	[id] [numeric](18, 0) not null,
	[task_id] [nvarchar](64) not null,
	[log_type] [nvarchar](50) not null,
	[method_name] [nvarchar](50) null,
	[log_message] [nvarchar](max) not null,
	[time_stamp] [datetime] null
) on [primary] textimage_on [primary]
Go
/****** object:  table [dbo].[ml_queued_task]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create table [dbo].[ml_queued_task](
	[id] [nvarchar](64) not null,
	[tenant_id] [nvarchar](64) not null,
	[user_id] [nvarchar](64) not null,
	[data] [xml] not null,
	[data_version] [nvarchar](50) not null,
	[task_name] [nvarchar](50) not null,
	[process_type] [nvarchar](50) not null,
	[is_scheduled] [bit] not null,
	[status] [nvarchar](100) not null,
	[queued_time] [datetime] null,
	[process_start_time] [datetime] null,
	[process_end_time] [datetime] null,
	[checksum] [nvarchar](64) not null,
	[recent_update_time] [datetime] not null,
	[created_by] [nvarchar](256) null,
	[created_date] [datetime] null,
	[modified_by] [nvarchar](256) null,
	[modified_date] [datetime] null,
 Constraint [pk_ml_queued_task] primary key clustered 
(
	[id] asc
)with (pad_index = off, statistics_norecompute = off, ignore_dup_key = off, allow_row_locks = on, allow_page_locks = on, optimize_for_sequential_key = off) on [primary]
) on [primary] textimage_on [primary]
Go
/****** object:  table [dbo].[ml_registration]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create table [dbo].[ml_registration](
	[id] [nvarchar](64) not null,
	[task_type] [nvarchar](64) not null,
	[implementation_type] [nvarchar](50) not null,
	[url] [nvarchar](512) null,
	[task_version] [nvarchar](256) null,
	[task_object_type] [nvarchar](max) not null,
	[task_processor_type] [nvarchar](max) null,
	[task_object_schema] [xml] not null,
	[is_active] [bit] not null,
	[is_schedulable] [bit] not null,
	[is_queueable] [bit] not null,
	[max_jobs] [int] not null,
	[current_jobs] [int] not null,
	[method_name] [nvarchar](500) null,
	[wait_one_timeout] [numeric](8, 0) null,
	[created_by] [nvarchar](256) null,
	[created_date] [datetime] null,
	[modified_by] [nvarchar](256) null,
	[modified_date] [datetime] null,
	[platform_target] [nvarchar](10) null,
	[scheduler_manager] [nvarchar](50) null,
	[registry_config_values] [xml] null,
 Constraint [pk_ml_registration] primary key clustered 
(
	[task_type] asc
)with (pad_index = off, statistics_norecompute = off, ignore_dup_key = off, allow_row_locks = on, allow_page_locks = on, optimize_for_sequential_key = off) on [primary]
) on [primary] textimage_on [primary]
Go
/****** object:  table [dbo].[ml_registration_processor_info]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create table [dbo].[ml_registration_processor_info](
	[task_type] [nvarchar](64) not null,
	[processor_name] [nvarchar](500) null,
	[processor_binary_data] [varbinary](max) not null,
	[version] [nvarchar](256) not null,
	[created_date] [datetime] null,
	[modified_date] [datetime] null,
	[platform_target] [nvarchar](10) null
) on [primary] textimage_on [primary]
Go
/****** object:  table [dbo].[ml_registration_unregistered]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create table [dbo].[ml_registration_unregistered](
	[id] [nvarchar](64) not null,
	[task_type] [nvarchar](64) not null,
	[implementation_type] [nvarchar](50) not null,
	[url] [nvarchar](512) null,
	[task_version] [nvarchar](256) null,
	[task_object_type] [nvarchar](max) not null,
	[task_processor_type] [nvarchar](max) null,
	[task_object_schema] [xml] not null,
	[is_active] [bit] not null,
	[is_schedulable] [bit] not null,
	[is_queueable] [bit] not null,
	[max_jobs] [int] not null,
	[current_jobs] [int] not null,
	[method_name] [nvarchar](500) null,
	[wait_one_timeout] [numeric](8, 0) null,
	[created_by] [nvarchar](256) null,
	[created_date] [datetime] null,
	[modified_by] [nvarchar](256) null,
	[modified_date] [datetime] null,
	[platform_target] [nvarchar](10) null
) on [primary] textimage_on [primary]
Go
/****** object:  table [dbo].[ml_scheduled_task]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create table [dbo].[ml_scheduled_task](
	[id] [nvarchar](64) not null,
	[tenant_id] [nvarchar](64) not null,
	[user_id] [nvarchar](64) not null,
	[data] [xml] not null,
	[data_version] [nvarchar](50) not null,
	[schedule_name] [nvarchar](50) not null,
	[process_type] [nvarchar](50) not null,
	[frequency] [nvarchar](50) not null,
	[scheduled_time] [datetime] not null,
	[status] [nvarchar](100) not null,
	[last_run_status] [nvarchar](100) null,
	[start_time] [datetime] null,
	[end_time] [datetime] null,
	[checksum] [nvarchar](64) not null,
	[recent_update_by] [nvarchar](50) not null,
	[recent_update_time] [datetime] not null,
	[created_by] [nvarchar](256) null,
	[created_date] [datetime] null,
	[modified_by] [nvarchar](256) null,
	[modified_date] [datetime] null,
 Constraint [pk_ml_scheduled_task] primary key clustered 
(
	[id] asc
)with (pad_index = off, statistics_norecompute = off, ignore_dup_key = off, allow_row_locks = on, allow_page_locks = on, optimize_for_sequential_key = off) on [primary]
) on [primary] textimage_on [primary]
Go
/****** object:  table [dbo].[ml_scheduled_task_history]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create table [dbo].[ml_scheduled_task_history](
	[id] [nvarchar](64) not null,
	[tenant_id] [nvarchar](64) not null,
	[user_id] [nvarchar](64) not null,
	[data] [xml] not null,
	[data_version] [nvarchar](50) not null,
	[schedule_name] [nvarchar](50) not null,
	[process_type] [nvarchar](50) not null,
	[frequency] [nvarchar](50) not null,
	[scheduled_time] [datetime] not null,
	[status] [nvarchar](100) not null,
	[last_run_status] [nvarchar](100) null,
	[start_time] [datetime] null,
	[end_time] [datetime] null,
	[checksum] [nvarchar](64) not null,
	[recent_update_by] [nvarchar](50) not null,
	[recent_update_time] [datetime] not null,
	[created_by] [nvarchar](256) null,
	[created_date] [datetime] null,
	[modified_by] [nvarchar](256) null,
	[modified_date] [datetime] null
) on [primary] textimage_on [primary]
Go
/****** object:  table [dbo].[ml_server_queues]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create table [dbo].[ml_server_queues](
	[queue_id] [nvarchar](64) not null,
	[ml_server_guid] [nvarchar](64) null,
	[ml_server_ip_address] [nvarchar](64) null,
	[time_stamp] [datetime] null,
 Constraint [pk_ml_server_queues] primary key clustered 
(
	[queue_id] asc
)with (pad_index = off, statistics_norecompute = off, ignore_dup_key = off, allow_row_locks = on, allow_page_locks = on, optimize_for_sequential_key = off) on [primary]
) on [primary]
Go
/****** object:  table [dbo].[ml_taskprocessor_exec_results]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create table [dbo].[ml_taskprocessor_exec_results](
	[task_id] [nvarchar](64) not null,
	[is_success] [bit] null
) on [primary]
Go
/****** object:  table [dbo].[readings]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
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
)with (pad_index = off, statistics_norecompute = off, ignore_dup_key = off, allow_row_locks = on, allow_page_locks = on, optimize_for_sequential_key = off) on [primary]
) on [primary] textimage_on [primary]
Go
/****** object:  table [dbo].[scheduled_queued_tasks]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create table [dbo].[scheduled_queued_tasks](
	[queued_taskid] [nvarchar](64) not null,
	[scheduled_taskid] [nvarchar](64) not null
) on [primary]
Go
Insert [dbo].[ml_completed_task] ([id], [tenant_id], [user_id], [data], [data_version], [task_name], [process_type], [is_scheduled], [status], [queued_time], [process_start_time], [process_end_time], [checksum], [recent_update_time], [created_by], [created_date], [modified_by], [modified_date]) values (N'122421b2-5b19-41a5-840a-5681a45caaf0', N'1', N'164', N'<simulationenginetask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><schedules xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><trigger><triggertype>time</triggertype><enabled>true</enabled><endboundary>9996-12-31 23:59:59.9999999</endboundary><executiontimelimit>00:00:00</executiontimelimit><id>d6846086-45b9-4789-bd52-cml9c517e82</id><startboundary>2010-12-26 13:20:00</startboundary><delay>00:00:00</delay><repeattask>00:00:00</repeattask><repeattaskduration>00:00:00</repeattaskduration><daysinterval>1</daysinterval><randomdelay>00:00:00</randomdelay><daysofweek>sunday</daysofweek><monthsofyear>allmonths</monthsofyear><runonlastweekofmonth>false</runonlastweekofmonth><weeksofmonth>firstweek</weeksofmonth><runonlastdayofmonth>false</runonlastdayofmonth><weeksinterval>1</weeksinterval></trigger></schedules><id xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">122421b2-5b19-41a5-840a-5681a45caaf0</id><uniquetaskidentifier xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">11554</uniquetaskidentifier><schedulerid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">546f21d6-10e6-49e3-81f1-a3894ac36148</schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">in_proc</implementation><isscheduled xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">true</isscheduled><version xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1.0</version><taskname xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">process1</taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">164</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nagendra@ha.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nagendra@ha.Com</string></emailidsonfail><tasktype xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">simulationprocess_localdev_nucleus</tasktype><username xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">nagendra kumar</username><appenvironment>simulationprocess_localdev_nucleus</appenvironment><scenarioid>155</scenarioid><processid>4</processid><userlogin>227.127.124.35.122.255.80.176.232.3.185.175.160.149.109</userlogin><emailerimagesurl>http://download.MachineLearning.Com/emailer/images/</emailerimagesurl><xmlfilelocalpath>c:\atg\MachineLearning.Ml\mlgatwayservices\files\simulationengine</xmlfilelocalpath><xmlfilehttppath>http://localhost/mlgatewayservices/files/simulationengine/</xmlfilehttppath></simulationenginetask>', N'1.0', N'process1', N'simulationprocess_localdev_nucleus', 1, N'aborted', cast(N'2010-12-26 13:36:25.470' as datetime), cast(N'2010-12-26 13:36:25.000' as datetime), cast(N'2010-12-26 13:36:28.000' as datetime), N'?]5??
F?Ko|[xj', cast(N'2010-12-26 13:36:28.000' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:36:25.470' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:36:28.000' as datetime))
Go
Insert [dbo].[ml_completed_task] ([id], [tenant_id], [user_id], [data], [data_version], [task_name], [process_type], [is_scheduled], [status], [queued_time], [process_start_time], [process_end_time], [checksum], [recent_update_time], [created_by], [created_date], [modified_by], [modified_date]) values (N'14c05595-a36f-458b-a86b-03fab412d81a', N'1', N'164', N'<simulationenginetask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><schedules xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><trigger><triggertype>time</triggertype><enabled>true</enabled><endboundary>9996-12-31 23:59:59.9999999</endboundary><executiontimelimit>00:00:00</executiontimelimit><id>d6846086-45b9-4789-bd52-cml9c517e82</id><startboundary>2010-12-26 13:20:00</startboundary><delay>00:00:00</delay><repeattask>00:00:00</repeattask><repeattaskduration>00:00:00</repeattaskduration><daysinterval>1</daysinterval><randomdelay>00:00:00</randomdelay><daysofweek>sunday</daysofweek><monthsofyear>allmonths</monthsofyear><runonlastweekofmonth>false</runonlastweekofmonth><weeksofmonth>firstweek</weeksofmonth><runonlastdayofmonth>false</runonlastdayofmonth><weeksinterval>1</weeksinterval></trigger></schedules><id xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">14c05595-a36f-458b-a86b-03fab412d81a</id><uniquetaskidentifier xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">11554</uniquetaskidentifier><schedulerid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">546f21d6-10e6-49e3-81f1-a3894ac36148</schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">in_proc</implementation><isscheduled xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">true</isscheduled><version xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1.0</version><taskname xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">process1</taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">164</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nagendra@ha.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nagendra@ha.Com</string></emailidsonfail><tasktype xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">simulationprocess_localdev_nucleus</tasktype><username xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">nagendra kumar</username><appenvironment>simulationprocess_localdev_nucleus</appenvironment><scenarioid>155</scenarioid><processid>4</processid><userlogin>227.127.124.35.122.255.80.176.232.3.185.175.160.149.109</userlogin><emailerimagesurl>http://download.MachineLearning.Com/emailer/images/</emailerimagesurl><xmlfilelocalpath>c:\atg\MachineLearning.Ml\mlgatwayservices\files\simulationengine</xmlfilelocalpath><xmlfilehttppath>http://localhost/mlgatewayservices/files/simulationengine/</xmlfilehttppath></simulationenginetask>', N'1.0', N'process1', N'simulationprocess_localdev_nucleus', 1, N'aborted', cast(N'2010-12-26 13:40:45.453' as datetime), cast(N'2010-12-26 13:40:45.000' as datetime), cast(N'2010-12-26 13:41:36.000' as datetime), N'?]5??
F?Ko|[xj', cast(N'2010-12-26 13:41:36.000' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:40:45.453' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:41:36.000' as datetime))
Go
Insert [dbo].[ml_completed_task] ([id], [tenant_id], [user_id], [data], [data_version], [task_name], [process_type], [is_scheduled], [status], [queued_time], [process_start_time], [process_end_time], [checksum], [recent_update_time], [created_by], [created_date], [modified_by], [modified_date]) values (N'19076aa9-907e-459f-97ef-4a18bdebe9ad', N'1', N'164', N'<simulationenginetask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><schedules xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><trigger><triggertype>time</triggertype><enabled>true</enabled><endboundary>9996-12-31 23:59:59.9999999</endboundary><executiontimelimit>00:00:00</executiontimelimit><id>d6846086-45b9-4789-bd52-cml9c517e82</id><startboundary>2010-12-26 13:20:00</startboundary><delay>00:00:00</delay><repeattask>00:00:00</repeattask><repeattaskduration>00:00:00</repeattaskduration><daysinterval>1</daysinterval><randomdelay>00:00:00</randomdelay><daysofweek>sunday</daysofweek><monthsofyear>allmonths</monthsofyear><runonlastweekofmonth>false</runonlastweekofmonth><weeksofmonth>firstweek</weeksofmonth><runonlastdayofmonth>false</runonlastdayofmonth><weeksinterval>1</weeksinterval></trigger></schedules><id xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">19076aa9-907e-459f-97ef-4a18bdebe9ad</id><uniquetaskidentifier xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">11554</uniquetaskidentifier><schedulerid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">546f21d6-10e6-49e3-81f1-a3894ac36148</schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">in_proc</implementation><isscheduled xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">true</isscheduled><version xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1.0</version><taskname xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">process1</taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">164</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nagendra@ha.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nagendra@ha.Com</string></emailidsonfail><tasktype xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">simulationprocess_localdev_nucleus</tasktype><username xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">nagendra kumar</username><appenvironment>simulationprocess_localdev_nucleus</appenvironment><scenarioid>155</scenarioid><processid>4</processid><userlogin>227.127.124.35.122.255.80.176.232.3.185.175.160.149.109</userlogin><emailerimagesurl>http://download.MachineLearning.Com/emailer/images/</emailerimagesurl><xmlfilelocalpath>c:\atg\MachineLearning.Ml\mlgatwayservices\files\simulationengine</xmlfilelocalpath><xmlfilehttppath>http://localhost/mlgatewayservices/files/simulationengine/</xmlfilehttppath></simulationenginetask>', N'1.0', N'process1', N'simulationprocess_localdev_nucleus', 1, N'aborted', cast(N'2010-12-26 13:35:29.910' as datetime), cast(N'2010-12-26 13:35:29.000' as datetime), cast(N'2010-12-26 13:35:32.000' as datetime), N'?]5??
F?Ko|[xj', cast(N'2010-12-26 13:35:32.000' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:35:29.910' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:35:32.000' as datetime))
Go
Insert [dbo].[ml_completed_task] ([id], [tenant_id], [user_id], [data], [data_version], [task_name], [process_type], [is_scheduled], [status], [queued_time], [process_start_time], [process_end_time], [checksum], [recent_update_time], [created_by], [created_date], [modified_by], [modified_date]) values (N'32dd24c7-8ec0-4065-ae00-4bd16ded564c', N'1', N'164', N'<simulationenginetask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><schedules xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><trigger><triggertype>time</triggertype><enabled>true</enabled><endboundary>9996-12-31 23:59:59.9999999</endboundary><executiontimelimit>00:00:00</executiontimelimit><id>d6846086-45b9-4789-bd52-cml9c517e82</id><startboundary>2010-12-26 13:20:00</startboundary><delay>00:00:00</delay><repeattask>00:00:00</repeattask><repeattaskduration>00:00:00</repeattaskduration><daysinterval>1</daysinterval><randomdelay>00:00:00</randomdelay><daysofweek>sunday</daysofweek><monthsofyear>allmonths</monthsofyear><runonlastweekofmonth>false</runonlastweekofmonth><weeksofmonth>firstweek</weeksofmonth><runonlastdayofmonth>false</runonlastdayofmonth><weeksinterval>1</weeksinterval></trigger></schedules><id xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">32dd24c7-8ec0-4065-ae00-4bd16ded564c</id><uniquetaskidentifier xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">11554</uniquetaskidentifier><schedulerid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">546f21d6-10e6-49e3-81f1-a3894ac36148</schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">in_proc</implementation><isscheduled xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">true</isscheduled><version xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1.0</version><taskname xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">process1</taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">164</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nagendra@ha.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nagendra@ha.Com</string></emailidsonfail><tasktype xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">simulationprocess_localdev_nucleus</tasktype><username xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">nagendra kumar</username><appenvironment>simulationprocess_localdev_nucleus</appenvironment><scenarioid>155</scenarioid><processid>4</processid><userlogin>227.127.124.35.122.255.80.176.232.3.185.175.160.149.109</userlogin><emailerimagesurl>http://download.MachineLearning.Com/emailer/images/</emailerimagesurl><xmlfilelocalpath>c:\atg\MachineLearning.Ml\mlgatwayservices\files\simulationengine</xmlfilelocalpath><xmlfilehttppath>http://localhost/mlgatewayservices/files/simulationengine/</xmlfilehttppath></simulationenginetask>', N'1.0', N'process1', N'simulationprocess_localdev_nucleus', 1, N'aborted', cast(N'2010-12-26 13:41:43.673' as datetime), cast(N'2010-12-26 13:41:43.000' as datetime), cast(N'2010-12-26 13:43:44.000' as datetime), N'?]5??
F?Ko|[xj', cast(N'2010-12-26 13:43:44.000' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:41:43.673' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:43:44.000' as datetime))
Go
Insert [dbo].[ml_completed_task] ([id], [tenant_id], [user_id], [data], [data_version], [task_name], [process_type], [is_scheduled], [status], [queued_time], [process_start_time], [process_end_time], [checksum], [recent_update_time], [created_by], [created_date], [modified_by], [modified_date]) values (N'613f806d-dc95-4944-838f-c7152b01c889', N'1', N'164', N'<simulationenginetask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><schedules xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><trigger><triggertype>time</triggertype><enabled>true</enabled><endboundary>9996-12-31 23:59:59.9999999</endboundary><executiontimelimit>00:00:00</executiontimelimit><id>d6846086-45b9-4789-bd52-cml9c517e82</id><startboundary>2010-12-26 13:20:00</startboundary><delay>00:00:00</delay><repeattask>00:00:00</repeattask><repeattaskduration>00:00:00</repeattaskduration><daysinterval>1</daysinterval><randomdelay>00:00:00</randomdelay><daysofweek>sunday</daysofweek><monthsofyear>allmonths</monthsofyear><runonlastweekofmonth>false</runonlastweekofmonth><weeksofmonth>firstweek</weeksofmonth><runonlastdayofmonth>false</runonlastdayofmonth><weeksinterval>1</weeksinterval></trigger></schedules><id xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">613f806d-dc95-4944-838f-c7152b01c889</id><uniquetaskidentifier xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">11554</uniquetaskidentifier><schedulerid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">546f21d6-10e6-49e3-81f1-a3894ac36148</schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">in_proc</implementation><isscheduled xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">true</isscheduled><version xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1.0</version><taskname xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">process1</taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">164</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nagendra@ha.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nagendra@ha.Com</string></emailidsonfail><tasktype xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">simulationprocess_localdev_nucleus</tasktype><username xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">nagendra kumar</username><appenvironment>simulationprocess_localdev_nucleus</appenvironment><scenarioid>155</scenarioid><processid>4</processid><userlogin>227.127.124.35.122.255.80.176.232.3.185.175.160.149.109</userlogin><emailerimagesurl>http://download.MachineLearning.Com/emailer/images/</emailerimagesurl><xmlfilelocalpath>c:\atg\MachineLearning.Ml\mlgatwayservices\files\simulationengine</xmlfilelocalpath><xmlfilehttppath>http://localhost/mlgatewayservices/files/simulationengine/</xmlfilehttppath></simulationenginetask>', N'1.0', N'process1', N'simulationprocess_localdev_nucleus', 1, N'completed', cast(N'2010-12-26 13:37:41.827' as datetime), cast(N'2010-12-26 13:38:01.000' as datetime), cast(N'2010-12-26 13:40:28.000' as datetime), N'?]5??
F?Ko|[xj', cast(N'2010-12-26 13:40:28.000' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:37:41.827' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:40:28.000' as datetime))
Go
Insert [dbo].[ml_completed_task_history] ([id], [tenant_id], [user_id], [data], [data_version], [task_name], [process_type], [is_scheduled], [status], [queued_time], [process_start_time], [process_end_time], [checksum], [recent_update_time], [created_by], [created_date], [modified_by], [modified_date]) values (N'ec480281-ff31-46da-9110-9c7e06abbf4e', N'3', N'4', N'<mathtask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">ec480281-ff31-46da-9110-9c7e06abbf4e</id><uniquetaskidentifier xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">0c1d5caf-71e0-40bb-9e42-65846441c3c7</uniquetaskidentifier><schedulerid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">ec480281-ff31-46da-9110-9c7e06abbf4e</schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">in_proc</implementation><isscheduled xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">false</isscheduled><description xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask</description><version xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1.0</version><taskname xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask_1</taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><tasktype xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask</tasktype><username xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathtask>', N'1.0', N'mytask_1', N'mytask', 0, N'aborted', cast(N'2010-12-21 10:34:41.510' as datetime), cast(N'2010-12-21 10:38:33.000' as datetime), cast(N'2010-12-21 10:40:04.000' as datetime), N'?W?????1?????]??', cast(N'2010-12-21 10:40:04.000' as datetime), N'', cast(N'2010-12-21 10:34:41.730' as datetime), N'', cast(N'2010-12-21 10:40:04.000' as datetime))
Go
Insert [dbo].[ml_completed_task_history] ([id], [tenant_id], [user_id], [data], [data_version], [task_name], [process_type], [is_scheduled], [status], [queued_time], [process_start_time], [process_end_time], [checksum], [recent_update_time], [created_by], [created_date], [modified_by], [modified_date]) values (N'd667915e-64be-4099-871f-217dfd590d3e', N'3', N'4', N'<mathtask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">d667915e-64be-4099-871f-217dfd590d3e</id><uniquetaskidentifier xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">888d420a-4814-4543-9dc6-996347a36fda</uniquetaskidentifier><schedulerid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">d667915e-64be-4099-871f-217dfd590d3e</schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">in_proc</implementation><isscheduled xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">false</isscheduled><description xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask</description><version xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1.0</version><taskname xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask_1_1</taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><tasktype xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask_1</tasktype><username xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathtask>', N'1.0', N'mytask_1_1', N'mytask_1', 0, N'aborted', cast(N'2010-12-21 10:34:58.353' as datetime), cast(N'2010-12-21 10:38:33.000' as datetime), cast(N'2010-12-21 10:40:04.000' as datetime), N'?V0`r\(??????M?', cast(N'2010-12-21 10:40:04.000' as datetime), N'', cast(N'2010-12-21 10:34:58.353' as datetime), N'', cast(N'2010-12-21 10:40:04.000' as datetime))
Go
Insert [dbo].[ml_completed_task_history] ([id], [tenant_id], [user_id], [data], [data_version], [task_name], [process_type], [is_scheduled], [status], [queued_time], [process_start_time], [process_end_time], [checksum], [recent_update_time], [created_by], [created_date], [modified_by], [modified_date]) values (N'b9a01af0-75ce-4c87-83e0-d28daa606733', N'3', N'4', N'<mathtask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">b9a01af0-75ce-4c87-83e0-d28daa606733</id><uniquetaskidentifier xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">d197f89c-7425-4ade-a02a-a6de5b50c28e</uniquetaskidentifier><schedulerid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">b9a01af0-75ce-4c87-83e0-d28daa606733</schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">in_proc</implementation><isscheduled xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">false</isscheduled><description xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask_2</description><version xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">2.0</version><taskname xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask_2_6</taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><tasktype xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask_2</tasktype><username xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathtask>', N'2.0', N'mytask_2_6', N'mytask_2', 0, N'aborted', cast(N'2010-12-21 10:38:21.117' as datetime), cast(N'2010-12-21 10:38:45.000' as datetime), cast(N'2010-12-21 10:40:14.000' as datetime), N'o??3??D??1v??', cast(N'2010-12-21 10:40:14.000' as datetime), N'', cast(N'2010-12-21 10:38:21.113' as datetime), N'', cast(N'2010-12-21 10:40:14.000' as datetime))
Go
Insert [dbo].[ml_completed_task_history] ([id], [tenant_id], [user_id], [data], [data_version], [task_name], [process_type], [is_scheduled], [status], [queued_time], [process_start_time], [process_end_time], [checksum], [recent_update_time], [created_by], [created_date], [modified_by], [modified_date]) values (N'b362a5e7-2906-4a88-aded-f66cc8a79ff2', N'3', N'4', N'<mathtask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">b362a5e7-2906-4a88-aded-f66cc8a79ff2</id><uniquetaskidentifier xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">53458e0c-f827-4d78-8ecb-30674391c256</uniquetaskidentifier><schedulerid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">b362a5e7-2906-4a88-aded-f66cc8a79ff2</schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">in_proc</implementation><isscheduled xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">false</isscheduled><description xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask</description><version xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1.0</version><taskname xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask_5</taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><tasktype xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask</tasktype><username xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathtask>', N'1.0', N'mytask_5', N'mytask', 0, N'completed', cast(N'2010-12-21 10:36:38.693' as datetime), cast(N'2010-12-21 10:38:37.000' as datetime), cast(N'2010-12-21 10:42:27.000' as datetime), N'?W?????1?????]??', cast(N'2010-12-21 10:42:27.000' as datetime), N'', cast(N'2010-12-21 10:36:38.693' as datetime), N'', cast(N'2010-12-21 10:42:27.000' as datetime))
Go
Insert [dbo].[ml_completed_task_history] ([id], [tenant_id], [user_id], [data], [data_version], [task_name], [process_type], [is_scheduled], [status], [queued_time], [process_start_time], [process_end_time], [checksum], [recent_update_time], [created_by], [created_date], [modified_by], [modified_date]) values (N'81f16816-b5a2-4a13-b0bb-80d4e451c1a4', N'3', N'4', N'<mathtask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">81f16816-b5a2-4a13-b0bb-80d4e451c1a4</id><uniquetaskidentifier xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">4a2b20cf-1cac-4ac3-a3b2-9f3b2b9b89be</uniquetaskidentifier><schedulerid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">81f16816-b5a2-4a13-b0bb-80d4e451c1a4</schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">in_proc</implementation><isscheduled xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">false</isscheduled><description xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask_2</description><version xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">2.0</version><taskname xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask_2_2</taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><tasktype xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask_2</tasktype><username xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathtask>', N'2.0', N'mytask_2_2', N'mytask_2', 0, N'aborted', cast(N'2010-12-21 10:38:06.707' as datetime), cast(N'2010-12-21 10:38:39.000' as datetime), cast(N'2010-12-21 10:40:09.000' as datetime), N'o??3??D??1v??', cast(N'2010-12-21 10:40:09.000' as datetime), N'', cast(N'2010-12-21 10:38:06.707' as datetime), N'', cast(N'2010-12-21 10:40:09.000' as datetime))
Go
Insert [dbo].[ml_completed_task_history] ([id], [tenant_id], [user_id], [data], [data_version], [task_name], [process_type], [is_scheduled], [status], [queued_time], [process_start_time], [process_end_time], [checksum], [recent_update_time], [created_by], [created_date], [modified_by], [modified_date]) values (N'80957c4a-a3a5-4ef3-b1f1-5ad0bd17f307', N'3', N'4', N'<mathtask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">80957c4a-a3a5-4ef3-b1f1-5ad0bd17f307</id><uniquetaskidentifier xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">f0158084-d2bc-436d-8384-dc850206ee31</uniquetaskidentifier><schedulerid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">80957c4a-a3a5-4ef3-b1f1-5ad0bd17f307</schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">in_proc</implementation><isscheduled xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">false</isscheduled><description xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask</description><version xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1.0</version><taskname xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask_8</taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><tasktype xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask</tasktype><username xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathtask>', N'1.0', N'mytask_8', N'mytask', 0, N'completed', cast(N'2010-12-21 10:37:25.773' as datetime), cast(N'2010-12-21 10:40:05.000' as datetime), cast(N'2010-12-21 10:44:01.000' as datetime), N'?W?????1?????]??', cast(N'2010-12-21 10:44:01.000' as datetime), N'', cast(N'2010-12-21 10:37:25.770' as datetime), N'', cast(N'2010-12-21 10:44:01.000' as datetime))
Go
Insert [dbo].[ml_completed_task_history] ([id], [tenant_id], [user_id], [data], [data_version], [task_name], [process_type], [is_scheduled], [status], [queued_time], [process_start_time], [process_end_time], [checksum], [recent_update_time], [created_by], [created_date], [modified_by], [modified_date]) values (N'517b6c9e-b348-4554-a061-2c5f79ecf0a5', N'3', N'4', N'<mathtask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">517b6c9e-b348-4554-a061-2c5f79ecf0a5</id><uniquetaskidentifier xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">95139c17-817a-4aed-9a4c-9198a5b3bed9</uniquetaskidentifier><schedulerid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">517b6c9e-b348-4554-a061-2c5f79ecf0a5</schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">in_proc</implementation><isscheduled xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">false</isscheduled><description xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask</description><version xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1.0</version><taskname xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask_3</taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><tasktype xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask</tasktype><username xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathtask>', N'1.0', N'mytask_3', N'mytask', 0, N'completed', cast(N'2010-12-21 10:36:28.790' as datetime), cast(N'2010-12-21 10:38:36.000' as datetime), cast(N'2010-12-21 10:41:26.000' as datetime), N'?W?????1?????]??', cast(N'2010-12-21 10:41:26.000' as datetime), N'', cast(N'2010-12-21 10:36:28.790' as datetime), N'', cast(N'2010-12-21 10:41:26.000' as datetime))
Go
Insert [dbo].[ml_completed_task_history] ([id], [tenant_id], [user_id], [data], [data_version], [task_name], [process_type], [is_scheduled], [status], [queued_time], [process_start_time], [process_end_time], [checksum], [recent_update_time], [created_by], [created_date], [modified_by], [modified_date]) values (N'3feca64f-5e21-481a-843c-63ed2ef6de22', N'3', N'4', N'<mathtask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">3feca64f-5e21-481a-843c-63ed2ef6de22</id><uniquetaskidentifier xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">7277cb0a-ab08-470b-be1d-b22c9b2bc8ba</uniquetaskidentifier><schedulerid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">3feca64f-5e21-481a-843c-63ed2ef6de22</schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">in_proc</implementation><isscheduled xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">false</isscheduled><description xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask</description><version xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1.0</version><taskname xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask_2</taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><tasktype xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask</tasktype><username xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathtask>', N'1.0', N'mytask_2', N'mytask', 0, N'aborted', cast(N'2010-12-21 10:34:47.843' as datetime), cast(N'2010-12-21 10:38:33.000' as datetime), cast(N'2010-12-21 10:40:04.000' as datetime), N'?W?????1?????]??', cast(N'2010-12-21 10:40:04.000' as datetime), N'', cast(N'2010-12-21 10:34:47.840' as datetime), N'', cast(N'2010-12-21 10:40:04.000' as datetime))
Go
Insert [dbo].[ml_completed_task_history] ([id], [tenant_id], [user_id], [data], [data_version], [task_name], [process_type], [is_scheduled], [status], [queued_time], [process_start_time], [process_end_time], [checksum], [recent_update_time], [created_by], [created_date], [modified_by], [modified_date]) values (N'3349bc90-0ff1-45c0-b448-63d70b02b584', N'4', N'5', N'<mathtask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">3349bc90-0ff1-45c0-b448-63d70b02b584</id><uniquetaskidentifier xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">7b86caef-613c-4c63-8300-c95f18665b18</uniquetaskidentifier><schedulerid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">3349bc90-0ff1-45c0-b448-63d70b02b584</schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">in_proc</implementation><isscheduled xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">false</isscheduled><description xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1</description><version xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">2.0</version><taskname xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask_2_1</taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">4</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">5</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><tasktype xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask_2</tasktype><username xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/" /><value1>0</value1><value2>0</value2><sid>2</sid><tid>3</tid></mathtask>', N'2.0', N'mytask_2_1', N'mytask_2', 0, N'completed', cast(N'2010-12-26 09:55:54.567' as datetime), cast(N'2010-12-26 09:55:57.000' as datetime), cast(N'2010-12-26 09:59:07.000' as datetime), N'???>?7e????;,', cast(N'2010-12-26 09:59:07.000' as datetime), N'', cast(N'2010-12-26 09:55:55.120' as datetime), N'', cast(N'2010-12-26 09:59:07.000' as datetime))
Go
Insert [dbo].[ml_completed_task_history] ([id], [tenant_id], [user_id], [data], [data_version], [task_name], [process_type], [is_scheduled], [status], [queued_time], [process_start_time], [process_end_time], [checksum], [recent_update_time], [created_by], [created_date], [modified_by], [modified_date]) values (N'1dfc70fb-9d7e-43d3-b53c-cb1c7ad3ea8c', N'3', N'4', N'<mathtask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1dfc70fb-9d7e-43d3-b53c-cb1c7ad3ea8c</id><uniquetaskidentifier xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">f5178dd5-f8d7-48c7-a43c-8b79eaafea03</uniquetaskidentifier><schedulerid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1dfc70fb-9d7e-43d3-b53c-cb1c7ad3ea8c</schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">in_proc</implementation><isscheduled xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">false</isscheduled><description xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask</description><version xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1.0</version><taskname xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask_7</taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><tasktype xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask</tasktype><username xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathtask>', N'1.0', N'mytask_7', N'mytask', 0, N'completed', cast(N'2010-12-21 10:37:20.580' as datetime), cast(N'2010-12-21 10:40:04.000' as datetime), cast(N'2010-12-21 10:43:12.000' as datetime), N'?W?????1?????]??', cast(N'2010-12-21 10:43:12.000' as datetime), N'', cast(N'2010-12-21 10:37:20.580' as datetime), N'', cast(N'2010-12-21 10:43:12.000' as datetime))
Go
Insert [dbo].[ml_completed_task_history] ([id], [tenant_id], [user_id], [data], [data_version], [task_name], [process_type], [is_scheduled], [status], [queued_time], [process_start_time], [process_end_time], [checksum], [recent_update_time], [created_by], [created_date], [modified_by], [modified_date]) values (N'13878217-0239-415a-8d5b-a38eb63a0caf', N'3', N'4', N'<mathtask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">13878217-0239-415a-8d5b-a38eb63a0caf</id><uniquetaskidentifier xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">3afe1684-5ded-4b72-9513-f02e80e94f5d</uniquetaskidentifier><schedulerid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">13878217-0239-415a-8d5b-a38eb63a0caf</schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">in_proc</implementation><isscheduled xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">false</isscheduled><description xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask</description><version xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1.0</version><taskname xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask_9</taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><tasktype xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask</tasktype><username xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathtask>', N'1.0', N'mytask_9', N'mytask', 0, N'completed', cast(N'2010-12-21 10:37:31.160' as datetime), cast(N'2010-12-21 10:40:07.000' as datetime), cast(N'2010-12-21 10:43:30.000' as datetime), N'?W?????1?????]??', cast(N'2010-12-21 10:43:30.000' as datetime), N'', cast(N'2010-12-21 10:37:31.160' as datetime), N'', cast(N'2010-12-21 10:43:30.000' as datetime))
Go
Insert [dbo].[ml_completed_task_history] ([id], [tenant_id], [user_id], [data], [data_version], [task_name], [process_type], [is_scheduled], [status], [queued_time], [process_start_time], [process_end_time], [checksum], [recent_update_time], [created_by], [created_date], [modified_by], [modified_date]) values (N'0fb8ec5f-f5a9-4787-9bfa-477a3f2bde5d', N'3', N'4', N'<mathtask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">0fb8ec5f-f5a9-4787-9bfa-477a3f2bde5d</id><uniquetaskidentifier xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">10e697e0-4161-4d55-8c1c-fac805e79707</uniquetaskidentifier><schedulerid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">0fb8ec5f-f5a9-4787-9bfa-477a3f2bde5d</schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">in_proc</implementation><isscheduled xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">false</isscheduled><description xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask_2</description><version xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">2.0</version><taskname xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask_2_4</taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><tasktype xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask_2</tasktype><username xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathtask>', N'2.0', N'mytask_2_4', N'mytask_2', 0, N'aborted', cast(N'2010-12-21 10:38:16.513' as datetime), cast(N'2010-12-21 10:38:43.000' as datetime), cast(N'2010-12-21 10:40:12.000' as datetime), N'o??3??D??1v??', cast(N'2010-12-21 10:40:12.000' as datetime), N'', cast(N'2010-12-21 10:38:16.513' as datetime), N'', cast(N'2010-12-21 10:40:12.000' as datetime))
Go
Insert [dbo].[ml_completed_task_history] ([id], [tenant_id], [user_id], [data], [data_version], [task_name], [process_type], [is_scheduled], [status], [queued_time], [process_start_time], [process_end_time], [checksum], [recent_update_time], [created_by], [created_date], [modified_by], [modified_date]) values (N'0da3968f-bdc4-4244-8c41-048c4a783461', N'1', N'164', N'<simulationenginetask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><schedules xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><trigger><triggertype>time</triggertype><enabled>true</enabled><endboundary>9996-12-31 23:59:59.9999999</endboundary><executiontimelimit>00:00:00</executiontimelimit><id>d6846086-45b9-4789-bd52-cml9c517e82</id><startboundary>2010-12-26 13:20:00</startboundary><delay>00:00:00</delay><repeattask>00:00:00</repeattask><repeattaskduration>00:00:00</repeattaskduration><daysinterval>1</daysinterval><randomdelay>00:00:00</randomdelay><daysofweek>sunday</daysofweek><monthsofyear>allmonths</monthsofyear><runonlastweekofmonth>false</runonlastweekofmonth><weeksofmonth>firstweek</weeksofmonth><runonlastdayofmonth>false</runonlastdayofmonth><weeksinterval>1</weeksinterval></trigger></schedules><id xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">0da3968f-bdc4-4244-8c41-048c4a783461</id><uniquetaskidentifier xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">11554</uniquetaskidentifier><schedulerid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">546f21d6-10e6-49e3-81f1-a3894ac36148</schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">in_proc</implementation><isscheduled xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">true</isscheduled><version xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1.0</version><taskname xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">process1</taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">164</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nagendra@ha.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nagendra@ha.Com</string></emailidsonfail><tasktype xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">simulationprocess_localdev_nucleus</tasktype><username xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">nagendra kumar</username><appenvironment>simulationprocess_localdev_nucleus</appenvironment><scenarioid>155</scenarioid><processid>4</processid><userlogin>227.127.124.35.122.255.80.176.232.3.185.175.160.149.109</userlogin><emailerimagesurl>http://download.MachineLearning.Com/emailer/images/</emailerimagesurl><xmlfilelocalpath>c:\atg\MachineLearning.Ml\mlgatwayservices\files\simulationengine</xmlfilelocalpath><xmlfilehttppath>http://localhost/mlgatewayservices/files/simulationengine/</xmlfilehttppath></simulationenginetask>', N'1.0', N'process1', N'simulationprocess_localdev_nucleus', 1, N'aborted', cast(N'2010-12-26 13:33:48.117' as datetime), cast(N'2010-12-26 13:33:48.000' as datetime), cast(N'2010-12-26 13:33:51.000' as datetime), N'?]5??
F?Ko|[xj', cast(N'2010-12-26 13:33:51.000' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:33:48.117' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:33:51.000' as datetime))
Go
Insert [dbo].[ml_completed_task_history] ([id], [tenant_id], [user_id], [data], [data_version], [task_name], [process_type], [is_scheduled], [status], [queued_time], [process_start_time], [process_end_time], [checksum], [recent_update_time], [created_by], [created_date], [modified_by], [modified_date]) values (N'c708837b-4cf5-4108-a862-255dbe32b3e8', N'3', N'4', N'<mathtask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">c708837b-4cf5-4108-a862-255dbe32b3e8</id><uniquetaskidentifier xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">665d45c1-90ec-494b-8789-75f2a4021ff6</uniquetaskidentifier><schedulerid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">c708837b-4cf5-4108-a862-255dbe32b3e8</schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">in_proc</implementation><isscheduled xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">false</isscheduled><description xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask</description><version xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1.0</version><taskname xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask_6</taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><tasktype xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask</tasktype><username xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathtask>', N'1.0', N'mytask_6', N'mytask', 0, N'completed', cast(N'2010-12-21 10:36:43.920' as datetime), cast(N'2010-12-21 10:40:06.000' as datetime), cast(N'2010-12-21 10:43:34.000' as datetime), N'?W?????1?????]??', cast(N'2010-12-21 10:43:34.000' as datetime), N'', cast(N'2010-12-21 10:36:43.920' as datetime), N'', cast(N'2010-12-21 10:43:34.000' as datetime))
Go
Insert [dbo].[ml_completed_task_history] ([id], [tenant_id], [user_id], [data], [data_version], [task_name], [process_type], [is_scheduled], [status], [queued_time], [process_start_time], [process_end_time], [checksum], [recent_update_time], [created_by], [created_date], [modified_by], [modified_date]) values (N'c63b9bac-568e-4080-867e-a82b540d961b', N'3', N'4', N'<mathtask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">c63b9bac-568e-4080-867e-a82b540d961b</id><uniquetaskidentifier xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">5371ff0d-be33-4f8f-8fc9-b24d7f4e0362</uniquetaskidentifier><schedulerid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">c63b9bac-568e-4080-867e-a82b540d961b</schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">in_proc</implementation><isscheduled xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">false</isscheduled><description xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask</description><version xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1.0</version><taskname xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask_1_4</taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><tasktype xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask_1</tasktype><username xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathtask>', N'1.0', N'mytask_1_4', N'mytask_1', 0, N'aborted', cast(N'2010-12-21 10:36:10.560' as datetime), cast(N'2010-12-21 10:38:38.000' as datetime), cast(N'2010-12-21 10:40:08.000' as datetime), N'?V0`r\(??????M?', cast(N'2010-12-21 10:40:08.000' as datetime), N'', cast(N'2010-12-21 10:36:10.560' as datetime), N'', cast(N'2010-12-21 10:40:08.000' as datetime))
Go
Insert [dbo].[ml_completed_task_history] ([id], [tenant_id], [user_id], [data], [data_version], [task_name], [process_type], [is_scheduled], [status], [queued_time], [process_start_time], [process_end_time], [checksum], [recent_update_time], [created_by], [created_date], [modified_by], [modified_date]) values (N'9b31725b-fd41-46bd-9fee-c296341078af', N'3', N'4', N'<mathtask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">9b31725b-fd41-46bd-9fee-c296341078af</id><uniquetaskidentifier xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">426cbe39-00c7-47bb-b541-d113bd9f7c6c</uniquetaskidentifier><schedulerid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">9b31725b-fd41-46bd-9fee-c296341078af</schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">in_proc</implementation><isscheduled xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">false</isscheduled><description xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask_2</description><version xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">2.0</version><taskname xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask_2_3</taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><tasktype xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask_2</tasktype><username xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathtask>', N'2.0', N'mytask_2_3', N'mytask_2', 0, N'aborted', cast(N'2010-12-21 10:38:11.447' as datetime), cast(N'2010-12-21 10:38:42.000' as datetime), cast(N'2010-12-21 10:40:11.000' as datetime), N'o??3??D??1v??', cast(N'2010-12-21 10:40:11.000' as datetime), N'', cast(N'2010-12-21 10:38:11.447' as datetime), N'', cast(N'2010-12-21 10:40:11.000' as datetime))
Go
Insert [dbo].[ml_completed_task_history] ([id], [tenant_id], [user_id], [data], [data_version], [task_name], [process_type], [is_scheduled], [status], [queued_time], [process_start_time], [process_end_time], [checksum], [recent_update_time], [created_by], [created_date], [modified_by], [modified_date]) values (N'974ad4e2-b14c-48e1-93e6-8b091197cd80', N'1', N'164', N'<simulationenginetask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><schedules xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><trigger><triggertype>time</triggertype><enabled>true</enabled><endboundary>9996-12-31 23:59:59.9999999</endboundary><executiontimelimit>00:00:00</executiontimelimit><id>d6846086-45b9-4789-bd52-cml9c517e82</id><startboundary>2010-12-26 13:20:00</startboundary><delay>00:00:00</delay><repeattask>00:00:00</repeattask><repeattaskduration>00:00:00</repeattaskduration><daysinterval>1</daysinterval><randomdelay>00:00:00</randomdelay><daysofweek>sunday</daysofweek><monthsofyear>allmonths</monthsofyear><runonlastweekofmonth>false</runonlastweekofmonth><weeksofmonth>firstweek</weeksofmonth><runonlastdayofmonth>false</runonlastdayofmonth><weeksinterval>1</weeksinterval></trigger></schedules><id xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">974ad4e2-b14c-48e1-93e6-8b091197cd80</id><uniquetaskidentifier xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">11554</uniquetaskidentifier><schedulerid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">546f21d6-10e6-49e3-81f1-a3894ac36148</schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">in_proc</implementation><isscheduled xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">true</isscheduled><version xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1.0</version><taskname xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">process1</taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">164</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nagendra@ha.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nagendra@ha.Com</string></emailidsonfail><tasktype xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">simulationprocess_localdev_nucleus</tasktype><username xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">nagendra kumar</username><appenvironment>simulationprocess_localdev_nucleus</appenvironment><scenarioid>155</scenarioid><processid>4</processid><userlogin>227.127.124.35.122.255.80.176.232.3.185.175.160.149.109</userlogin><emailerimagesurl>http://download.MachineLearning.Com/emailer/images/</emailerimagesurl><xmlfilelocalpath>c:\atg\MachineLearning.Ml\mlgatwayservices\files\simulationengine</xmlfilelocalpath><xmlfilehttppath>http://localhost/mlgatewayservices/files/simulationengine/</xmlfilehttppath></simulationenginetask>', N'1.0', N'process1', N'simulationprocess_localdev_nucleus', 1, N'aborted', cast(N'2010-12-26 13:34:38.353' as datetime), cast(N'2010-12-26 13:34:38.000' as datetime), cast(N'2010-12-26 13:34:41.000' as datetime), N'?]5??
F?Ko|[xj', cast(N'2010-12-26 13:34:41.000' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:34:38.353' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:34:41.000' as datetime))
Go
Insert [dbo].[ml_completed_task_history] ([id], [tenant_id], [user_id], [data], [data_version], [task_name], [process_type], [is_scheduled], [status], [queued_time], [process_start_time], [process_end_time], [checksum], [recent_update_time], [created_by], [created_date], [modified_by], [modified_date]) values (N'6b5cba6a-8c8b-4cb9-ac61-a28bf60ce453', N'3', N'4', N'<mathtask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">6b5cba6a-8c8b-4cb9-ac61-a28bf60ce453</id><uniquetaskidentifier xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">87e1741a-7f0d-4480-80b4-6d57d1d531ed</uniquetaskidentifier><schedulerid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">6b5cba6a-8c8b-4cb9-ac61-a28bf60ce453</schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">in_proc</implementation><isscheduled xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">false</isscheduled><description xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask</description><version xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1.0</version><taskname xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask_4</taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><tasktype xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask</tasktype><username xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathtask>', N'1.0', N'mytask_4', N'mytask', 0, N'completed', cast(N'2010-12-21 10:36:33.910' as datetime), cast(N'2010-12-21 10:38:36.000' as datetime), cast(N'2010-12-21 10:41:40.000' as datetime), N'?W?????1?????]??', cast(N'2010-12-21 10:41:40.000' as datetime), N'', cast(N'2010-12-21 10:36:33.910' as datetime), N'', cast(N'2010-12-21 10:41:40.000' as datetime))
Go
Insert [dbo].[ml_completed_task_history] ([id], [tenant_id], [user_id], [data], [data_version], [task_name], [process_type], [is_scheduled], [status], [queued_time], [process_start_time], [process_end_time], [checksum], [recent_update_time], [created_by], [created_date], [modified_by], [modified_date]) values (N'5ef785ad-0800-49e7-941c-287440d186d2', N'3', N'4', N'<mathtask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">5ef785ad-0800-49e7-941c-287440d186d2</id><uniquetaskidentifier xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">aeb771e7-8a2b-4761-be98-f8ad8948f074</uniquetaskidentifier><schedulerid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">5ef785ad-0800-49e7-941c-287440d186d2</schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">in_proc</implementation><isscheduled xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">false</isscheduled><description xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask</description><version xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1.0</version><taskname xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask_1_3</taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><tasktype xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask_1</tasktype><username xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathtask>', N'1.0', N'mytask_1_3', N'mytask_1', 0, N'completed', cast(N'2010-12-21 10:35:08.830' as datetime), cast(N'2010-12-21 10:38:36.000' as datetime), cast(N'2010-12-21 10:41:41.000' as datetime), N'?V0`r\(??????M?', cast(N'2010-12-21 10:41:41.000' as datetime), N'', cast(N'2010-12-21 10:35:08.830' as datetime), N'', cast(N'2010-12-21 10:41:41.000' as datetime))
Go
Insert [dbo].[ml_completed_task_history] ([id], [tenant_id], [user_id], [data], [data_version], [task_name], [process_type], [is_scheduled], [status], [queued_time], [process_start_time], [process_end_time], [checksum], [recent_update_time], [created_by], [created_date], [modified_by], [modified_date]) values (N'386a22aa-0b1a-4056-95c7-eaaebc96aca9', N'3', N'4', N'<mathtask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">386a22aa-0b1a-4056-95c7-eaaebc96aca9</id><uniquetaskidentifier xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">f18aeae9-83ce-4d90-ae86-30e2857643dd</uniquetaskidentifier><schedulerid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">386a22aa-0b1a-4056-95c7-eaaebc96aca9</schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">in_proc</implementation><isscheduled xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">false</isscheduled><description xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask</description><version xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1.0</version><taskname xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask_1_2</taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><tasktype xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask_1</tasktype><username xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathtask>', N'1.0', N'mytask_1_2', N'mytask_1', 0, N'aborted', cast(N'2010-12-21 10:35:03.887' as datetime), cast(N'2010-12-21 10:38:35.000' as datetime), cast(N'2010-12-21 10:40:05.000' as datetime), N'?V0`r\(??????M?', cast(N'2010-12-21 10:40:05.000' as datetime), N'', cast(N'2010-12-21 10:35:03.883' as datetime), N'', cast(N'2010-12-21 10:40:05.000' as datetime))
Go
Insert [dbo].[ml_completed_task_history] ([id], [tenant_id], [user_id], [data], [data_version], [task_name], [process_type], [is_scheduled], [status], [queued_time], [process_start_time], [process_end_time], [checksum], [recent_update_time], [created_by], [created_date], [modified_by], [modified_date]) values (N'355e19c1-74c0-4dfd-8ec5-540ce3ad03fd', N'3', N'4', N'<mathtask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">355e19c1-74c0-4dfd-8ec5-540ce3ad03fd</id><uniquetaskidentifier xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">05aca835-e8e1-4b2a-b14c-1bfc6ddad601</uniquetaskidentifier><schedulerid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">355e19c1-74c0-4dfd-8ec5-540ce3ad03fd</schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">in_proc</implementation><isscheduled xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">false</isscheduled><description xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask</description><version xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1.0</version><taskname xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask_1_5</taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><tasktype xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask_1</tasktype><username xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathtask>', N'1.0', N'mytask_1_5', N'mytask_1', 0, N'completed', cast(N'2010-12-21 10:36:16.030' as datetime), cast(N'2010-12-21 10:38:36.000' as datetime), cast(N'2010-12-21 10:42:09.000' as datetime), N'?V0`r\(??????M?', cast(N'2010-12-21 10:42:09.000' as datetime), N'', cast(N'2010-12-21 10:36:16.030' as datetime), N'', cast(N'2010-12-21 10:42:09.000' as datetime))
Go
Insert [dbo].[ml_completed_task_history] ([id], [tenant_id], [user_id], [data], [data_version], [task_name], [process_type], [is_scheduled], [status], [queued_time], [process_start_time], [process_end_time], [checksum], [recent_update_time], [created_by], [created_date], [modified_by], [modified_date]) values (N'1cd62e30-4060-4afd-8ceb-1e28b419c9e4', N'3', N'4', N'<mathtask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><id xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1cd62e30-4060-4afd-8ceb-1e28b419c9e4</id><uniquetaskidentifier xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">05989d3a-30f7-4d83-a647-cfe1448f89a5</uniquetaskidentifier><schedulerid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1cd62e30-4060-4afd-8ceb-1e28b419c9e4</schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">in_proc</implementation><isscheduled xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">false</isscheduled><description xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask_2</description><version xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">2.0</version><taskname xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask_2_1</taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">3</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">4</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nbattiprolu@MachineLearning.Com</string></emailidsonfail><tasktype xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">mytask_2</tasktype><username xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/" /><value1>0</value1><value2>0</value2><sid>1</sid><tid>2</tid></mathtask>', N'2.0', N'mytask_2_1', N'mytask_2', 0, N'completed', cast(N'2010-12-21 10:38:01.610' as datetime), cast(N'2010-12-21 10:38:43.000' as datetime), cast(N'2010-12-21 10:41:29.000' as datetime), N'o??3??D??1v??', cast(N'2010-12-21 10:41:29.000' as datetime), N'', cast(N'2010-12-21 10:38:01.610' as datetime), N'', cast(N'2010-12-21 10:41:29.000' as datetime))
Go
Insert [dbo].[ml_completed_task_history] ([id], [tenant_id], [user_id], [data], [data_version], [task_name], [process_type], [is_scheduled], [status], [queued_time], [process_start_time], [process_end_time], [checksum], [recent_update_time], [created_by], [created_date], [modified_by], [modified_date]) values (N'17aa9ed1-9fc8-46e4-824c-65c00f39bc52', N'1', N'164', N'<simulationenginetask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><schedules xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><trigger><triggertype>time</triggertype><enabled>true</enabled><endboundary>9996-12-31 23:59:59.9999999</endboundary><executiontimelimit>00:00:00</executiontimelimit><id>d6846086-45b9-4789-bd52-cml9c517e82</id><startboundary>2010-12-26 13:20:00</startboundary><delay>00:00:00</delay><repeattask>00:00:00</repeattask><repeattaskduration>00:00:00</repeattaskduration><daysinterval>1</daysinterval><randomdelay>00:00:00</randomdelay><daysofweek>sunday</daysofweek><monthsofyear>allmonths</monthsofyear><runonlastweekofmonth>false</runonlastweekofmonth><weeksofmonth>firstweek</weeksofmonth><runonlastdayofmonth>false</runonlastdayofmonth><weeksinterval>1</weeksinterval></trigger></schedules><id xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">17aa9ed1-9fc8-46e4-824c-65c00f39bc52</id><uniquetaskidentifier xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">11554</uniquetaskidentifier><schedulerid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">546f21d6-10e6-49e3-81f1-a3894ac36148</schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">in_proc</implementation><isscheduled xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">true</isscheduled><version xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1.0</version><taskname xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">process1</taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">164</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nagendra@ha.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nagendra@ha.Com</string></emailidsonfail><tasktype xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">simulationprocess_localdev_nucleus</tasktype><username xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">nagendra kumar</username><appenvironment>simulationprocess_localdev_nucleus</appenvironment><scenarioid>155</scenarioid><processid>4</processid><userlogin>227.127.124.35.122.255.80.176.232.3.185.175.160.149.109</userlogin><emailerimagesurl>http://download.MachineLearning.Com/emailer/images/</emailerimagesurl><xmlfilelocalpath>c:\atg\MachineLearning.Ml\mlgatwayservices\files\simulationengine</xmlfilelocalpath><xmlfilehttppath>http://localhost/mlgatewayservices/files/simulationengine/</xmlfilehttppath></simulationenginetask>', N'1.0', N'process1', N'simulationprocess_localdev_nucleus', 1, N'aborted', cast(N'2010-12-26 13:20:00.797' as datetime), cast(N'2010-12-26 13:20:02.000' as datetime), cast(N'2010-12-26 13:20:06.000' as datetime), N'?]5??
F?Ko|[xj', cast(N'2010-12-26 13:20:06.000' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:20:00.797' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:20:06.000' as datetime))
Go
Set identity_insert [dbo].[ml_execute_task] on 
Go
Insert [dbo].[ml_execute_task] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1820 as numeric(18, 0)), N'﻿19076aa9-907e-459f-97ef-4a18bdebe9ad', N'MachineLearning.Simulationengine.Task.Simulationenginetaskprocessor', N'aborted', cast(N'2010-12-26 13:35:29.997' as datetime), cast(N'2010-12-26 13:35:32.000' as datetime), cast(N'2010-12-26 13:35:32.000' as datetime))
Go
Insert [dbo].[ml_execute_task] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1821 as numeric(18, 0)), N'﻿122421b2-5b19-41a5-840a-5681a45caaf0', N'MachineLearning.Simulationengine.Task.Simulationenginetaskprocessor', N'aborted', cast(N'2010-12-26 13:36:25.573' as datetime), cast(N'2010-12-26 13:36:28.000' as datetime), cast(N'2010-12-26 13:36:28.000' as datetime))
Go
Insert [dbo].[ml_execute_task] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1822 as numeric(18, 0)), N'﻿613f806d-dc95-4944-838f-c7152b01c889', N'MachineLearning.Simulationengine.Task.Simulationenginetaskprocessor', N'aborted', cast(N'2010-12-26 13:38:19.897' as datetime), cast(N'2010-12-26 13:39:52.000' as datetime), cast(N'2010-12-26 13:39:52.000' as datetime))
Go
Insert [dbo].[ml_execute_task] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1824 as numeric(18, 0)), N'﻿14c05595-a36f-458b-a86b-03fab412d81a', N'MachineLearning.Simulationengine.Task.Simulationenginetaskprocessor', N'aborted', cast(N'2010-12-26 13:40:53.037' as datetime), cast(N'2010-12-26 13:41:34.000' as datetime), cast(N'2010-12-26 13:41:34.000' as datetime))
Go
Insert [dbo].[ml_execute_task] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1825 as numeric(18, 0)), N'﻿32dd24c7-8ec0-4065-ae00-4bd16ded564c', N'MachineLearning.Simulationengine.Task.Simulationenginetaskprocessor', N'aborted', cast(N'2010-12-26 13:41:50.033' as datetime), cast(N'2010-12-26 13:43:39.000' as datetime), cast(N'2010-12-26 13:43:39.000' as datetime))
Go
Set identity_insert [dbo].[ml_execute_task] off
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1819 as numeric(18, 0)), N'﻿974ad4e2-b14c-48e1-93e6-8b091197cd80', N'MachineLearning.Simulationengine.Task.Simulationenginetaskprocessor', N'aborted', cast(N'2010-12-26 13:34:38.427' as datetime), cast(N'2010-12-26 13:34:41.000' as datetime), cast(N'2010-12-26 13:34:41.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1817 as numeric(18, 0)), N'﻿17aa9ed1-9fc8-46e4-824c-65c00f39bc52', N'MachineLearning.Simulationengine.Task.Simulationenginetaskprocessor', N'aborted', cast(N'2010-12-26 13:20:02.810' as datetime), cast(N'2010-12-26 13:20:06.000' as datetime), cast(N'2010-12-26 13:20:06.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1818 as numeric(18, 0)), N'﻿0da3968f-bdc4-4244-8c41-048c4a783461', N'MachineLearning.Simulationengine.Task.Simulationenginetaskprocessor', N'aborted', cast(N'2010-12-26 13:33:48.397' as datetime), cast(N'2010-12-26 13:33:51.000' as datetime), cast(N'2010-12-26 13:33:51.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1777 as numeric(18, 0)), N'﻿ec480281-ff31-46da-9110-9c7e06abbf4e', N'MachineLearning.Ml.Tasks.Sampletasks.Sampletaskprocessor', N'aborted', cast(N'2010-12-21 10:38:33.560' as datetime), cast(N'2010-12-21 10:39:19.000' as datetime), cast(N'2010-12-21 10:39:19.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1794 as numeric(18, 0)), N'﻿d667915e-64be-4099-871f-217dfd590d3e', N'MachineLearning.Ml.Tasks.Sampletasks.Sampletaskprocessor', N'aborted', cast(N'2010-12-21 10:39:20.040' as datetime), cast(N'2010-12-21 10:40:04.000' as datetime), cast(N'2010-12-21 10:40:04.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1805 as numeric(18, 0)), N'﻿c708837b-4cf5-4108-a862-255dbe32b3e8', N'MachineLearning.Ml.Tasks.Sampletasks.Sampletaskprocessor', N'completed', cast(N'2010-12-21 10:40:06.153' as datetime), cast(N'2010-12-21 10:41:40.000' as datetime), cast(N'2010-12-21 10:41:40.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1796 as numeric(18, 0)), N'﻿c63b9bac-568e-4080-867e-a82b540d961b', N'MachineLearning.Ml.Tasks.Sampletasks.Sampletaskprocessor', N'aborted', cast(N'2010-12-21 10:39:23.460' as datetime), cast(N'2010-12-21 10:40:08.000' as datetime), cast(N'2010-12-21 10:40:08.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1800 as numeric(18, 0)), N'﻿b9a01af0-75ce-4c87-83e0-d28daa606733', N'MachineLearning.Ml.Tasks.Sampletasks.Sampletaskprocessor', N'aborted', cast(N'2010-12-21 10:39:29.897' as datetime), cast(N'2010-12-21 10:40:14.000' as datetime), cast(N'2010-12-21 10:40:14.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1785 as numeric(18, 0)), N'﻿b362a5e7-2906-4a88-aded-f66cc8a79ff2', N'MachineLearning.Ml.Tasks.Sampletasks.Sampletaskprocessor', N'completed', cast(N'2010-12-21 10:38:37.610' as datetime), cast(N'2010-12-21 10:40:22.000' as datetime), cast(N'2010-12-21 10:40:22.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1798 as numeric(18, 0)), N'﻿9b31725b-fd41-46bd-9fee-c296341078af', N'MachineLearning.Ml.Tasks.Sampletasks.Sampletaskprocessor', N'aborted', cast(N'2010-12-21 10:39:27.003' as datetime), cast(N'2010-12-21 10:40:11.000' as datetime), cast(N'2010-12-21 10:40:11.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1797 as numeric(18, 0)), N'﻿81f16816-b5a2-4a13-b0bb-80d4e451c1a4', N'MachineLearning.Ml.Tasks.Sampletasks.Sampletaskprocessor', N'aborted', cast(N'2010-12-21 10:39:24.417' as datetime), cast(N'2010-12-21 10:40:09.000' as datetime), cast(N'2010-12-21 10:40:09.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1804 as numeric(18, 0)), N'﻿80957c4a-a3a5-4ef3-b1f1-5ad0bd17f307', N'MachineLearning.Ml.Tasks.Sampletasks.Sampletaskprocessor', N'completed', cast(N'2010-12-21 10:40:05.247' as datetime), cast(N'2010-12-21 10:41:57.000' as datetime), cast(N'2010-12-21 10:41:57.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1784 as numeric(18, 0)), N'﻿6b5cba6a-8c8b-4cb9-ac61-a28bf60ce453', N'MachineLearning.Ml.Tasks.Sampletasks.Sampletaskprocessor', N'completed', cast(N'2010-12-21 10:38:36.093' as datetime), cast(N'2010-12-21 10:40:25.000' as datetime), cast(N'2010-12-21 10:40:25.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1810 as numeric(18, 0)), N'﻿5ef785ad-0800-49e7-941c-287440d186d2', N'MachineLearning.Ml.Tasks.Sampletasks.Sampletaskprocessor', N'completed', cast(N'2010-12-21 10:40:27.057' as datetime), cast(N'2010-12-21 10:41:41.000' as datetime), cast(N'2010-12-21 10:41:41.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1783 as numeric(18, 0)), N'﻿517b6c9e-b348-4554-a061-2c5f79ecf0a5', N'MachineLearning.Ml.Tasks.Sampletasks.Sampletaskprocessor', N'completed', cast(N'2010-12-21 10:38:36.073' as datetime), cast(N'2010-12-21 10:40:05.000' as datetime), cast(N'2010-12-21 10:40:05.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1778 as numeric(18, 0)), N'﻿3feca64f-5e21-481a-843c-63ed2ef6de22', N'MachineLearning.Ml.Tasks.Sampletasks.Sampletaskprocessor', N'aborted', cast(N'2010-12-21 10:38:33.573' as datetime), cast(N'2010-12-21 10:39:19.000' as datetime), cast(N'2010-12-21 10:39:19.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1795 as numeric(18, 0)), N'﻿386a22aa-0b1a-4056-95c7-eaaebc96aca9', N'MachineLearning.Ml.Tasks.Sampletasks.Sampletaskprocessor', N'aborted', cast(N'2010-12-21 10:39:20.383' as datetime), cast(N'2010-12-21 10:40:05.000' as datetime), cast(N'2010-12-21 10:40:05.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1809 as numeric(18, 0)), N'﻿355e19c1-74c0-4dfd-8ec5-540ce3ad03fd', N'MachineLearning.Ml.Tasks.Sampletasks.Sampletaskprocessor', N'completed', cast(N'2010-12-21 10:40:26.783' as datetime), cast(N'2010-12-21 10:42:09.000' as datetime), cast(N'2010-12-21 10:42:09.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1816 as numeric(18, 0)), N'﻿3349bc90-0ff1-45c0-b448-63d70b02b584', N'MachineLearning.Ml.Tasks.Sampletasks.Sampletaskprocessor', N'completed', cast(N'2010-12-26 09:57:30.690' as datetime), cast(N'2010-12-26 09:59:07.000' as datetime), cast(N'2010-12-26 09:59:07.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1802 as numeric(18, 0)), N'﻿1dfc70fb-9d7e-43d3-b53c-cb1c7ad3ea8c', N'MachineLearning.Ml.Tasks.Sampletasks.Sampletaskprocessor', N'completed', cast(N'2010-12-21 10:40:04.970' as datetime), cast(N'2010-12-21 10:41:35.000' as datetime), cast(N'2010-12-21 10:41:35.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1801 as numeric(18, 0)), N'﻿1cd62e30-4060-4afd-8ceb-1e28b419c9e4', N'MachineLearning.Ml.Tasks.Sampletasks.Sampletaskprocessor', N'completed', cast(N'2010-12-21 10:39:59.727' as datetime), cast(N'2010-12-21 10:41:29.000' as datetime), cast(N'2010-12-21 10:41:29.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1806 as numeric(18, 0)), N'﻿13878217-0239-415a-8d5b-a38eb63a0caf', N'MachineLearning.Ml.Tasks.Sampletasks.Sampletaskprocessor', N'completed', cast(N'2010-12-21 10:40:07.150' as datetime), cast(N'2010-12-21 10:41:44.000' as datetime), cast(N'2010-12-21 10:41:44.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1799 as numeric(18, 0)), N'﻿0fb8ec5f-f5a9-4787-9bfa-477a3f2bde5d', N'MachineLearning.Ml.Tasks.Sampletasks.Sampletaskprocessor', N'aborted', cast(N'2010-12-21 10:39:28.063' as datetime), cast(N'2010-12-21 10:40:12.000' as datetime), cast(N'2010-12-21 10:40:12.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1793 as numeric(18, 0)), N'﻿ec480281-ff31-46da-9110-9c7e06abbf4e', N'MachineLearning.Ml.Tasks.Sampletasks.Mathtaskprocessor', N'aborted', cast(N'2010-12-21 10:39:19.263' as datetime), cast(N'2010-12-21 10:40:04.000' as datetime), cast(N'2010-12-21 10:40:04.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1779 as numeric(18, 0)), N'﻿d667915e-64be-4099-871f-217dfd590d3e', N'MachineLearning.Ml.Tasks.Sampletasks.Mathtaskprocessor', N'aborted', cast(N'2010-12-21 10:38:33.597' as datetime), cast(N'2010-12-21 10:39:20.000' as datetime), cast(N'2010-12-21 10:39:20.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1812 as numeric(18, 0)), N'﻿c708837b-4cf5-4108-a862-255dbe32b3e8', N'MachineLearning.Ml.Tasks.Sampletasks.Mathtaskprocessor', N'completed', cast(N'2010-12-21 10:41:40.930' as datetime), cast(N'2010-12-21 10:43:34.000' as datetime), cast(N'2010-12-21 10:43:34.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1786 as numeric(18, 0)), N'﻿c63b9bac-568e-4080-867e-a82b540d961b', N'MachineLearning.Ml.Tasks.Sampletasks.Mathtaskprocessor', N'aborted', cast(N'2010-12-21 10:38:38.650' as datetime), cast(N'2010-12-21 10:39:23.000' as datetime), cast(N'2010-12-21 10:39:23.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1791 as numeric(18, 0)), N'﻿b9a01af0-75ce-4c87-83e0-d28daa606733', N'MachineLearning.Ml.Tasks.Sampletasks.Mathtaskprocessor', N'aborted', cast(N'2010-12-21 10:38:45.143' as datetime), cast(N'2010-12-21 10:39:29.000' as datetime), cast(N'2010-12-21 10:39:29.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1807 as numeric(18, 0)), N'﻿b362a5e7-2906-4a88-aded-f66cc8a79ff2', N'MachineLearning.Ml.Tasks.Sampletasks.Mathtaskprocessor', N'completed', cast(N'2010-12-21 10:40:22.280' as datetime), cast(N'2010-12-21 10:42:27.000' as datetime), cast(N'2010-12-21 10:42:27.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1788 as numeric(18, 0)), N'﻿9b31725b-fd41-46bd-9fee-c296341078af', N'MachineLearning.Ml.Tasks.Sampletasks.Mathtaskprocessor', N'aborted', cast(N'2010-12-21 10:38:42.200' as datetime), cast(N'2010-12-21 10:39:26.000' as datetime), cast(N'2010-12-21 10:39:26.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1787 as numeric(18, 0)), N'﻿81f16816-b5a2-4a13-b0bb-80d4e451c1a4', N'MachineLearning.Ml.Tasks.Sampletasks.Mathtaskprocessor', N'aborted', cast(N'2010-12-21 10:38:39.647' as datetime), cast(N'2010-12-21 10:39:24.000' as datetime), cast(N'2010-12-21 10:39:24.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1814 as numeric(18, 0)), N'﻿80957c4a-a3a5-4ef3-b1f1-5ad0bd17f307', N'MachineLearning.Ml.Tasks.Sampletasks.Mathtaskprocessor', N'completed', cast(N'2010-12-21 10:41:57.183' as datetime), cast(N'2010-12-21 10:44:01.000' as datetime), cast(N'2010-12-21 10:44:01.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1808 as numeric(18, 0)), N'﻿6b5cba6a-8c8b-4cb9-ac61-a28bf60ce453', N'MachineLearning.Ml.Tasks.Sampletasks.Mathtaskprocessor', N'completed', cast(N'2010-12-21 10:40:25.537' as datetime), cast(N'2010-12-21 10:41:40.000' as datetime), cast(N'2010-12-21 10:41:40.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1781 as numeric(18, 0)), N'﻿5ef785ad-0800-49e7-941c-287440d186d2', N'MachineLearning.Ml.Tasks.Sampletasks.Mathtaskprocessor', N'completed', cast(N'2010-12-21 10:38:36.047' as datetime), cast(N'2010-12-21 10:40:27.000' as datetime), cast(N'2010-12-21 10:40:27.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1803 as numeric(18, 0)), N'﻿517b6c9e-b348-4554-a061-2c5f79ecf0a5', N'MachineLearning.Ml.Tasks.Sampletasks.Mathtaskprocessor', N'completed', cast(N'2010-12-21 10:40:05.243' as datetime), cast(N'2010-12-21 10:41:26.000' as datetime), cast(N'2010-12-21 10:41:26.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1792 as numeric(18, 0)), N'﻿3feca64f-5e21-481a-843c-63ed2ef6de22', N'MachineLearning.Ml.Tasks.Sampletasks.Mathtaskprocessor', N'aborted', cast(N'2010-12-21 10:39:19.227' as datetime), cast(N'2010-12-21 10:40:04.000' as datetime), cast(N'2010-12-21 10:40:04.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1780 as numeric(18, 0)), N'﻿386a22aa-0b1a-4056-95c7-eaaebc96aca9', N'MachineLearning.Ml.Tasks.Sampletasks.Mathtaskprocessor', N'aborted', cast(N'2010-12-21 10:38:35.600' as datetime), cast(N'2010-12-21 10:39:20.000' as datetime), cast(N'2010-12-21 10:39:20.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1782 as numeric(18, 0)), N'﻿355e19c1-74c0-4dfd-8ec5-540ce3ad03fd', N'MachineLearning.Ml.Tasks.Sampletasks.Mathtaskprocessor', N'completed', cast(N'2010-12-21 10:38:36.060' as datetime), cast(N'2010-12-21 10:40:26.000' as datetime), cast(N'2010-12-21 10:40:26.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1815 as numeric(18, 0)), N'﻿3349bc90-0ff1-45c0-b448-63d70b02b584', N'MachineLearning.Ml.Tasks.Sampletasks.Mathtaskprocessor', N'completed', cast(N'2010-12-26 09:55:57.290' as datetime), cast(N'2010-12-26 09:57:30.000' as datetime), cast(N'2010-12-26 09:57:30.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1811 as numeric(18, 0)), N'﻿1dfc70fb-9d7e-43d3-b53c-cb1c7ad3ea8c', N'MachineLearning.Ml.Tasks.Sampletasks.Mathtaskprocessor', N'completed', cast(N'2010-12-21 10:41:35.517' as datetime), cast(N'2010-12-21 10:43:12.000' as datetime), cast(N'2010-12-21 10:43:12.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1790 as numeric(18, 0)), N'﻿1cd62e30-4060-4afd-8ceb-1e28b419c9e4', N'MachineLearning.Ml.Tasks.Sampletasks.Mathtaskprocessor', N'completed', cast(N'2010-12-21 10:38:43.670' as datetime), cast(N'2010-12-21 10:39:59.000' as datetime), cast(N'2010-12-21 10:39:59.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1813 as numeric(18, 0)), N'﻿13878217-0239-415a-8d5b-a38eb63a0caf', N'MachineLearning.Ml.Tasks.Sampletasks.Mathtaskprocessor', N'completed', cast(N'2010-12-21 10:41:44.733' as datetime), cast(N'2010-12-21 10:43:30.000' as datetime), cast(N'2010-12-21 10:43:30.000' as datetime))
Go
Insert [dbo].[ml_execute_task_history] ([id], [task_id], [processor_name], [status], [process_start_time], [process_end_time], [recent_update_time]) values (cast(1789 as numeric(18, 0)), N'﻿0fb8ec5f-f5a9-4787-9bfa-477a3f2bde5d', N'MachineLearning.Ml.Tasks.Sampletasks.Mathtaskprocessor', N'aborted', cast(N'2010-12-21 10:38:43.200' as datetime), cast(N'2010-12-21 10:39:28.000' as datetime), cast(N'2010-12-21 10:39:28.000' as datetime))
Go
Insert [dbo].[ml_log_history] ([id], [task_id], [log_type], [method_name], [log_message], [time_stamp]) values (cast(75 as numeric(18, 0)), N'066dc45d-7894-457d-b37b-622df03f5905', N'mlinfo', N'writeinfolog', N'test', cast(N'2010-11-29 04:37:13.273' as datetime))
Go
Insert [dbo].[ml_log_history] ([id], [task_id], [log_type], [method_name], [log_message], [time_stamp]) values (cast(74 as numeric(18, 0)), N'a7e8c96a-9cb4-4b9f-80b3-3ec4e2bf8992', N'mlinfo', N'writeinfolog', N'test', cast(N'2010-11-29 04:36:08.967' as datetime))
Go
Insert [dbo].[ml_log_history] ([id], [task_id], [log_type], [method_name], [log_message], [time_stamp]) values (cast(73 as numeric(18, 0)), N'1de86f4c-bd46-4527-a9f6-e6d1fbbefd6b', N'mlinfo', N'writeinfolog', N'test', cast(N'2010-11-28 14:26:10.720' as datetime))
Go
Insert [dbo].[ml_log_history] ([id], [task_id], [log_type], [method_name], [log_message], [time_stamp]) values (cast(72 as numeric(18, 0)), N'41f810c8-5f4c-4a78-a5d1-df4601b40d20', N'mlinfo', N'writeinfolog', N'test', cast(N'2010-11-28 14:24:15.937' as datetime))
Go
Insert [dbo].[ml_queued_task] ([id], [tenant_id], [user_id], [data], [data_version], [task_name], [process_type], [is_scheduled], [status], [queued_time], [process_start_time], [process_end_time], [checksum], [recent_update_time], [created_by], [created_date], [modified_by], [modified_date]) values (N'70fd4cc2-bad2-4edc-9c57-d4bc59fbf5fe', N'1', N'164', N'<simulationenginetask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><schedules xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><trigger><triggertype>time</triggertype><enabled>true</enabled><endboundary>9996-12-31 23:59:59.9999999</endboundary><executiontimelimit>00:00:00</executiontimelimit><id>d6846086-45b9-4789-bd52-cml9c517e82</id><startboundary>2010-12-26 13:20:00</startboundary><delay>00:00:00</delay><repeattask>00:00:00</repeattask><repeattaskduration>00:00:00</repeattaskduration><daysinterval>1</daysinterval><randomdelay>00:00:00</randomdelay><daysofweek>sunday</daysofweek><monthsofyear>allmonths</monthsofyear><runonlastweekofmonth>false</runonlastweekofmonth><weeksofmonth>firstweek</weeksofmonth><runonlastdayofmonth>false</runonlastdayofmonth><weeksinterval>1</weeksinterval></trigger></schedules><id xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">70fd4cc2-bad2-4edc-9c57-d4bc59fbf5fe</id><uniquetaskidentifier xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">11554</uniquetaskidentifier><schedulerid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">546f21d6-10e6-49e3-81f1-a3894ac36148</schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">in_proc</implementation><isscheduled xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">true</isscheduled><version xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1.0</version><taskname xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">process1</taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">164</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nagendra@ha.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nagendra@ha.Com</string></emailidsonfail><tasktype xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">simulationprocess_localdev_nucleus</tasktype><username xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">nagendra kumar</username><appenvironment>simulationprocess_localdev_nucleus</appenvironment><scenarioid>155</scenarioid><processid>4</processid><userlogin>227.127.124.35.122.255.80.176.232.3.185.175.160.149.109</userlogin><emailerimagesurl>http://download.MachineLearning.Com/emailer/images/</emailerimagesurl><xmlfilelocalpath>c:\atg\MachineLearning.Ml\mlgatwayservices\files\simulationengine</xmlfilelocalpath><xmlfilehttppath>http://localhost/mlgatewayservices/files/simulationengine/</xmlfilehttppath></simulationenginetask>', N'1.0', N'process1', N'simulationprocess_localdev_nucleus', 1, N'process_started', cast(N'2010-12-26 13:44:08.537' as datetime), cast(N'2010-12-26 13:44:08.000' as datetime), null, N'?]5??
F?Ko|[xj', cast(N'2010-12-26 13:44:08.000' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:44:08.537' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:44:08.000' as datetime))
Go
Insert [dbo].[ml_registration] ([id], [task_type], [implementation_type], [url], [task_version], [task_object_type], [task_processor_type], [task_object_schema], [is_active], [is_schedulable], [is_queueable], [max_jobs], [current_jobs], [method_name], [wait_one_timeout], [created_by], [created_date], [modified_by], [modified_date], [platform_target], [scheduler_manager], [registry_config_values]) values (N'cc41e2b7-290e-4bf5-8ab4-c974638ad4f7', N'mytask', N'in_proc', N' ', N'1.0', N'MachineLearning.Ml.Tasks.Sampletasks.Mathtasks.Dll |_|MachineLearning.Ml.Tasks.Sampletasks.Mathtask', N'MachineLearning.Ml.Tasks.Sampletasks.Dll|_|MachineLearning.Ml.Tasks.Sampletasks.Sampletaskprocessor|_|MachineLearning.Ml.Tasks.Sampletasks.Mathtasks.Dll|_|MachineLearning.Ml.Tasks.Sampletasks.Mathtaskprocessor', N'<xs:schema xmlns:xs="Http://www.W3.Org/2001/xmlschema" elementformdefault="Qualified"><xs:import namespace="Http://www.MachineLearning.Com/ml/basetaskdata/" /><xs:element name="Mathtask" nillable="True" type="Mathtask" /><xs:complextype name="Mathtask"><xs:complexcontent mixed="False"><xs:extension xmlns:q1="Http://www.MachineLearning.Com/ml/basetaskdata/" base="Q1:basetaskdata"><xs:sequence><xs:element minoccurs="1" maxoccurs="1" name="Value1" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Value2" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Sid" type="Xs:int" /><xs:element minoccurs="0" maxoccurs="1" name="Tid" type="Xs:string" /></xs:sequence></xs:extension></xs:complexcontent></xs:complextype></xs:schema>', 1, 1, 1, 5, 0, null, cast(10 as numeric(8, 0)), N'', cast(N'2010-11-29 14:06:02.337' as datetime), N'', cast(N'2010-11-29 14:06:02.337' as datetime), null, null, null)
Go
Insert [dbo].[ml_registration] ([id], [task_type], [implementation_type], [url], [task_version], [task_object_type], [task_processor_type], [task_object_schema], [is_active], [is_schedulable], [is_queueable], [max_jobs], [current_jobs], [method_name], [wait_one_timeout], [created_by], [created_date], [modified_by], [modified_date], [platform_target], [scheduler_manager], [registry_config_values]) values (N'1a492122-0e29-48c4-9d82-f3512fe48638', N'mytask_1', N'in_proc', N'', N'1.0', N'MachineLearning.Ml.Tasks.Sampletasks.Mathtasks.Dll |_|MachineLearning.Ml.Tasks.Sampletasks.Mathtask', N'MachineLearning.Ml.Tasks.Sampletasks.Mathtasks.Dll|_|MachineLearning.Ml.Tasks.Sampletasks.Mathtaskprocessor|_|MachineLearning.Ml.Tasks.Sampletasks.Dll|_|MachineLearning.Ml.Tasks.Sampletasks.Sampletaskprocessor', N'<taskobjectschema><xs:schema xmlns:xs="Http://www.W3.Org/2001/xmlschema" elementformdefault="Qualified"><xs:import namespace="Http://www.MachineLearning.Com/ml/basetaskdata/" /><xs:element name="Mathtask" nillable="True" type="Mathtask" /><xs:complextype name="Mathtask"><xs:complexcontent mixed="False"><xs:extension xmlns:q1="Http://www.MachineLearning.Com/ml/basetaskdata/" base="Q1:basetaskdata"><xs:sequence><xs:element minoccurs="1" maxoccurs="1" name="Value1" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Value2" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Sid" type="Xs:int" /><xs:element minoccurs="0" maxoccurs="1" name="Tid" type="Xs:string" /></xs:sequence></xs:extension></xs:complexcontent></xs:complextype></xs:schema></taskobjectschema>', 1, 1, 1, 5, 0, null, cast(10 as numeric(8, 0)), N'', cast(N'2001-01-01 00:00:00.000' as datetime), null, null, null, null, null)
Go
Insert [dbo].[ml_registration] ([id], [task_type], [implementation_type], [url], [task_version], [task_object_type], [task_processor_type], [task_object_schema], [is_active], [is_schedulable], [is_queueable], [max_jobs], [current_jobs], [method_name], [wait_one_timeout], [created_by], [created_date], [modified_by], [modified_date], [platform_target], [scheduler_manager], [registry_config_values]) values (N'f93416cd-8137-4efb-bcf9-c57af3396c1a', N'mytask_2', N'in_proc', N' ', N'2.0', N'MachineLearning.Ml.Tasks.Sampletasks.Mathtasks.Dll |_|MachineLearning.Ml.Tasks.Sampletasks.Mathtask', N'MachineLearning.Ml.Tasks.Sampletasks.Mathtasks.Dll|_|MachineLearning.Ml.Tasks.Sampletasks.Mathtaskprocessor|_|MachineLearning.Ml.Tasks.Sampletasks.Dll|_|MachineLearning.Ml.Tasks.Sampletasks.Sampletaskprocessor', N'<xs:schema xmlns:xs="Http://www.W3.Org/2001/xmlschema" elementformdefault="Qualified"><xs:import namespace="Http://www.MachineLearning.Com/ml/basetaskdata/" /><xs:element name="Mathtask" nillable="True" type="Mathtask" /><xs:complextype name="Mathtask"><xs:complexcontent mixed="False"><xs:extension xmlns:q1="Http://www.MachineLearning.Com/ml/basetaskdata/" base="Q1:basetaskdata"><xs:sequence><xs:element minoccurs="1" maxoccurs="1" name="Value1" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Value2" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Sid" type="Xs:int" /><xs:element minoccurs="0" maxoccurs="1" name="Tid" type="Xs:string" /></xs:sequence></xs:extension></xs:complexcontent></xs:complextype></xs:schema>', 1, 1, 1, 5, 0, null, cast(10 as numeric(8, 0)), N'', cast(N'2010-12-08 07:52:53.340' as datetime), N'', cast(N'2010-12-08 07:52:53.340' as datetime), null, null, null)
Go
Insert [dbo].[ml_registration] ([id], [task_type], [implementation_type], [url], [task_version], [task_object_type], [task_processor_type], [task_object_schema], [is_active], [is_schedulable], [is_queueable], [max_jobs], [current_jobs], [method_name], [wait_one_timeout], [created_by], [created_date], [modified_by], [modified_date], [platform_target], [scheduler_manager], [registry_config_values]) values (N'8bfee9f2-971a-45ed-a24d-56b44feba774', N'simulationprocess_localdev_nucleus', N'in_proc', N' ', N'1.0', N'MachineLearning.Simulationengine.Task.Dll |_|MachineLearning.Simulationengine.Task.Simulationenginetask', N'MachineLearning.Simulationengine.Task.Dll|_|MachineLearning.Simulationengine.Task.Simulationenginetaskprocessor', N'<xs:schema xmlns:xs="Http://www.W3.Org/2001/xmlschema" elementformdefault="Qualified"><xs:import namespace="Http://www.MachineLearning.Com/ml/basetaskdata/" /><xs:element name="Simulationenginetask" nillable="True" type="Simulationenginetask" /><xs:complextype name="Simulationenginetask"><xs:complexcontent mixed="False"><xs:extension xmlns:q1="Http://www.MachineLearning.Com/ml/basetaskdata/" base="Q1:basetaskdata"><xs:sequence><xs:element minoccurs="0" maxoccurs="1" name="Appenvironment" type="Xs:string" /><xs:element minoccurs="1" maxoccurs="1" name="Scenarioid" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Processid" type="Xs:int" /><xs:element minoccurs="0" maxoccurs="1" name="Userlogin" type="Xs:string" /><xs:element minoccurs="0" maxoccurs="1" name="Emailerimagesurl" type="Xs:string" /><xs:element minoccurs="0" maxoccurs="1" name="Xmlfilelocalpath" type="Xs:string" /><xs:element minoccurs="0" maxoccurs="1" name="Xmlfilehttppath" type="Xs:string" /></xs:sequence></xs:extension></xs:complexcontent></xs:complextype></xs:schema>', 1, 1, 1, 5, 1, null, cast(10 as numeric(8, 0)), N'', cast(N'2010-12-26 13:11:55.353' as datetime), N'', cast(N'2010-12-26 13:11:55.353' as datetime), null, null, null)
Go
Insert [dbo].[ml_registration_unregistered] ([id], [task_type], [implementation_type], [url], [task_version], [task_object_type], [task_processor_type], [task_object_schema], [is_active], [is_schedulable], [is_queueable], [max_jobs], [current_jobs], [method_name], [wait_one_timeout], [created_by], [created_date], [modified_by], [modified_date], [platform_target]) values (N'8dc8344a-3e12-4f07-8926-32319b2d11cd', N'taskregistry', N'in_proc', N' ', N'', N'MachineLearning.Ml.Tasks.Sampletasks.Mathtasks.Dll |_|MachineLearning.Ml.Tasks.Sampletasks.Mathtask', N'MachineLearning.Ml.Tasks.Sampletasks.Dll|_|MachineLearning.Ml.Tasks.Sampletasks.Sampletaskprocessor', N'<xs:schema xmlns:xs="Http://www.W3.Org/2001/xmlschema" elementformdefault="Qualified"><xs:import namespace="Http://www.MachineLearning.Com/ml/basetaskdata/" /><xs:element name="Mathtask" nillable="True" type="Mathtask" /><xs:complextype name="Mathtask"><xs:complexcontent mixed="False"><xs:extension xmlns:q1="Http://www.MachineLearning.Com/ml/basetaskdata/" base="Q1:basetaskdata"><xs:sequence><xs:element minoccurs="1" maxoccurs="1" name="Value1" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Value2" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Sid" type="Xs:int" /><xs:element minoccurs="0" maxoccurs="1" name="Tid" type="Xs:string" /></xs:sequence></xs:extension></xs:complexcontent></xs:complextype></xs:schema>', 1, 1, 1, 5, 0, null, cast(10 as numeric(8, 0)), N'', cast(N'2010-11-26 11:57:56.230' as datetime), N'', cast(N'2010-11-26 11:57:56.230' as datetime), null)
Go
Insert [dbo].[ml_registration_unregistered] ([id], [task_type], [implementation_type], [url], [task_version], [task_object_type], [task_processor_type], [task_object_schema], [is_active], [is_schedulable], [is_queueable], [max_jobs], [current_jobs], [method_name], [wait_one_timeout], [created_by], [created_date], [modified_by], [modified_date], [platform_target]) values (N'a67752a4-b4d4-49c8-a12b-0c695b5996e4', N'mytask', N'in_proc', N' ', N'1.0', N'MachineLearning.Ml.Tasks.Sampletasks.Mathtasks.Dll |_|MachineLearning.Ml.Tasks.Sampletasks.Mathtask', N'MachineLearning.Ml.Tasks.Sampletasks.Mathtasks.Dll|_|MachineLearning.Ml.Tasks.Sampletasks.Mathtaskprocessor|_|MachineLearning.Ml.Tasks.Sampletasks.Dll|_|MachineLearning.Ml.Tasks.Sampletasks.Sampletaskprocessor', N'<xs:schema xmlns:xs="Http://www.W3.Org/2001/xmlschema" elementformdefault="Qualified"><xs:import namespace="Http://www.MachineLearning.Com/ml/basetaskdata/" /><xs:element name="Mathtask" nillable="True" type="Mathtask" /><xs:complextype name="Mathtask"><xs:complexcontent mixed="False"><xs:extension xmlns:q1="Http://www.MachineLearning.Com/ml/basetaskdata/" base="Q1:basetaskdata"><xs:sequence><xs:element minoccurs="1" maxoccurs="1" name="Value1" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Value2" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Sid" type="Xs:int" /><xs:element minoccurs="0" maxoccurs="1" name="Tid" type="Xs:string" /></xs:sequence></xs:extension></xs:complexcontent></xs:complextype></xs:schema>', 1, 1, 1, 5, 0, null, cast(10 as numeric(8, 0)), N'', cast(N'2010-11-29 13:58:41.083' as datetime), N'', cast(N'2010-11-29 13:58:41.083' as datetime), null)
Go
Insert [dbo].[ml_registration_unregistered] ([id], [task_type], [implementation_type], [url], [task_version], [task_object_type], [task_processor_type], [task_object_schema], [is_active], [is_schedulable], [is_queueable], [max_jobs], [current_jobs], [method_name], [wait_one_timeout], [created_by], [created_date], [modified_by], [modified_date], [platform_target]) values (N'e9820310-a436-48e6-9000-059465052bd4', N'mytask', N'in_proc', N' ', N'1.0', N'MachineLearning.Ml.Tasks.Sampletasks.Mathtasks.Dll |_|MachineLearning.Ml.Tasks.Sampletasks.Mathtask', N'MachineLearning.Ml.Tasks.Sampletasks.Mathtasks.Dll|_|MachineLearning.Ml.Tasks.Sampletasks.Mathtaskprocessor|_|MachineLearning.Ml.Tasks.Sampletasks.Dll|_|MachineLearning.Ml.Tasks.Sampletasks.Sampletaskprocessor', N'<xs:schema xmlns:xs="Http://www.W3.Org/2001/xmlschema" elementformdefault="Qualified"><xs:import namespace="Http://www.MachineLearning.Com/ml/basetaskdata/" /><xs:element name="Mathtask" nillable="True" type="Mathtask" /><xs:complextype name="Mathtask"><xs:complexcontent mixed="False"><xs:extension xmlns:q1="Http://www.MachineLearning.Com/ml/basetaskdata/" base="Q1:basetaskdata"><xs:sequence><xs:element minoccurs="1" maxoccurs="1" name="Value1" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Value2" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Sid" type="Xs:int" /><xs:element minoccurs="0" maxoccurs="1" name="Tid" type="Xs:string" /></xs:sequence></xs:extension></xs:complexcontent></xs:complextype></xs:schema>', 1, 1, 1, 5, 0, null, cast(10 as numeric(8, 0)), N'', cast(N'2010-11-29 14:02:35.827' as datetime), N'', cast(N'2010-11-29 14:02:35.827' as datetime), null)
Go
Insert [dbo].[ml_registration_unregistered] ([id], [task_type], [implementation_type], [url], [task_version], [task_object_type], [task_processor_type], [task_object_schema], [is_active], [is_schedulable], [is_queueable], [max_jobs], [current_jobs], [method_name], [wait_one_timeout], [created_by], [created_date], [modified_by], [modified_date], [platform_target]) values (N'22', N'mytask2', N'in_proc', N'', N'1.0', N'MachineLearning.Ml.Tasks.Sampletasks.Mathtasks.Dll |_|MachineLearning.Ml.Tasks.Sampletasks.Mathtask', N'MachineLearning.Ml.Tasks.Sampletasks.Dll|_|MachineLearning.Ml.Tasks.Sampletasks.Sampletaskprocessor|_|MachineLearning.Ml.Tasks.Sampletasks.Mathtasks.Dll|_|MachineLearning.Ml.Tasks.Sampletasks.Mathtaskprocessor', N'<taskobjectschema><xs:schema xmlns:xs="Http://www.W3.Org/2001/xmlschema" elementformdefault="Qualified"><xs:import namespace="Http://www.MachineLearning.Com/ml/basetaskdata/" /><xs:element name="Mathtask" nillable="True" type="Mathtask" /><xs:complextype name="Mathtask"><xs:complexcontent mixed="False"><xs:extension xmlns:q1="Http://www.MachineLearning.Com/ml/basetaskdata/" base="Q1:basetaskdata"><xs:sequence><xs:element minoccurs="1" maxoccurs="1" name="Value1" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Value2" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Sid" type="Xs:int" /><xs:element minoccurs="0" maxoccurs="1" name="Tid" type="Xs:string" /></xs:sequence></xs:extension></xs:complexcontent></xs:complextype></xs:schema></taskobjectschema>', 1, 1, 1, 5, 0, null, cast(10 as numeric(8, 0)), N'', cast(N'2001-01-01 00:00:00.000' as datetime), null, null, null)
Go
Insert [dbo].[ml_registration_unregistered] ([id], [task_type], [implementation_type], [url], [task_version], [task_object_type], [task_processor_type], [task_object_schema], [is_active], [is_schedulable], [is_queueable], [max_jobs], [current_jobs], [method_name], [wait_one_timeout], [created_by], [created_date], [modified_by], [modified_date], [platform_target]) values (N'22', N'mytask2', N'in_proc', N'', N'1.0', N'MachineLearning.Ml.Tasks.Sampletasks.Mathtasks.Dll |_|MachineLearning.Ml.Tasks.Sampletasks.Mathtask', N'MachineLearning.Ml.Tasks.Sampletasks.Dll|_|MachineLearning.Ml.Tasks.Sampletasks.Sampletaskprocessor|_|MachineLearning.Ml.Tasks.Sampletasks.Mathtasks.Dll|_|MachineLearning.Ml.Tasks.Sampletasks.Mathtaskprocessor', N'<taskobjectschema><xs:schema xmlns:xs="Http://www.W3.Org/2001/xmlschema" elementformdefault="Qualified"><xs:import namespace="Http://www.MachineLearning.Com/ml/basetaskdata/" /><xs:element name="Mathtask" nillable="True" type="Mathtask" /><xs:complextype name="Mathtask"><xs:complexcontent mixed="False"><xs:extension xmlns:q1="Http://www.MachineLearning.Com/ml/basetaskdata/" base="Q1:basetaskdata"><xs:sequence><xs:element minoccurs="1" maxoccurs="1" name="Value1" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Value2" type="Xs:int" /><xs:element minoccurs="1" maxoccurs="1" name="Sid" type="Xs:int" /><xs:element minoccurs="0" maxoccurs="1" name="Tid" type="Xs:string" /></xs:sequence></xs:extension></xs:complexcontent></xs:complextype></xs:schema></taskobjectschema>', 1, 1, 1, 5, 0, null, cast(10 as numeric(8, 0)), N'', cast(N'2001-01-01 00:00:00.000' as datetime), null, null, null)
Go
Insert [dbo].[ml_scheduled_task] ([id], [tenant_id], [user_id], [data], [data_version], [schedule_name], [process_type], [frequency], [scheduled_time], [status], [last_run_status], [start_time], [end_time], [checksum], [recent_update_by], [recent_update_time], [created_by], [created_date], [modified_by], [modified_date]) values (N'546f21d6-10e6-49e3-81f1-a3894ac36148', N'1', N'164', N'<simulationenginetask xmlns:xsi="Http://www.W3.Org/2001/xmlschema-instance" xmlns:xsd="Http://www.W3.Org/2001/xmlschema"><schedules xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><trigger><triggertype>time</triggertype><enabled>true</enabled><endboundary>9996-12-31 23:59:59.9999999</endboundary><executiontimelimit>00:00:00</executiontimelimit><id>d6846086-45b9-4789-bd52-cml9c517e82</id><startboundary>2010-12-26 13:20:00</startboundary><delay>00:00:00</delay><repeattask>00:00:00</repeattask><repeattaskduration>00:00:00</repeattaskduration><daysinterval>1</daysinterval><randomdelay>00:00:00</randomdelay><daysofweek>sunday</daysofweek><monthsofyear>allmonths</monthsofyear><runonlastweekofmonth>false</runonlastweekofmonth><weeksofmonth>firstweek</weeksofmonth><runonlastdayofmonth>false</runonlastdayofmonth><weeksinterval>1</weeksinterval></trigger></schedules><id xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">546f21d6-10e6-49e3-81f1-a3894ac36148</id><uniquetaskidentifier xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">11554</uniquetaskidentifier><schedulerid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">546f21d6-10e6-49e3-81f1-a3894ac36148</schedulerid><implementation xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">in_proc</implementation><isscheduled xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">true</isscheduled><version xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1.0</version><taskname xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">process1</taskname><tenantid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">1</tenantid><userid xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">164</userid><emailidsonsuccess xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nagendra@ha.Com</string></emailidsonsuccess><emailidsonfail xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/"><string>nagendra@ha.Com</string></emailidsonfail><tasktype xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">simulationprocess_localdev_nucleus</tasktype><username xmlns="Http://www.MachineLearning.Com/ml/basetaskdata/">nagendra kumar</username><appenvironment>simulationprocess_localdev_nucleus</appenvironment><scenarioid>155</scenarioid><processid>4</processid><userlogin>227.127.124.35.122.255.80.176.232.3.185.175.160.149.109</userlogin><emailerimagesurl>http://download.MachineLearning.Com/emailer/images/</emailerimagesurl><xmlfilelocalpath>c:\atg\MachineLearning.Ml\mlgatwayservices\files\simulationengine</xmlfilelocalpath><xmlfilehttppath>http://localhost/mlgatewayservices/files/simulationengine/</xmlfilehttppath></simulationenginetask>', N'1.0', N'process1', N'simulationprocess_localdev_nucleus', N'run once', cast(N'2010-12-26 13:20:00.000' as datetime), N'scheduled', N'aborted', cast(N'2010-12-26 13:44:08.000' as datetime), null, N'?]5??
F?Ko|[xj', N'164', cast(N'2010-12-26 13:44:08.000' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:15:28.900' as datetime), N'nagendra kumar', cast(N'2010-12-26 13:15:28.900' as datetime))
Go
Insert [dbo].[ml_server_queues] ([queue_id], [ml_server_guid], [ml_server_ip_address], [time_stamp]) values (N'70fd4cc2-bad2-4edc-9c57-d4bc59fbf5fe', null, null, cast(N'2010-12-26 13:44:08.537' as datetime))
Go
Set identity_insert [dbo].[readings] on 
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
Set identity_insert [dbo].[readings] off
Go
Insert [dbo].[scheduled_queued_tasks] ([queued_taskid], [scheduled_taskid]) values (N'17aa9ed1-9fc8-46e4-824c-65c00f39bc52', N'546f21d6-10e6-49e3-81f1-a3894ac36148')
Go
Insert [dbo].[scheduled_queued_tasks] ([queued_taskid], [scheduled_taskid]) values (N'0da3968f-bdc4-4244-8c41-048c4a783461', N'546f21d6-10e6-49e3-81f1-a3894ac36148')
Go
Insert [dbo].[scheduled_queued_tasks] ([queued_taskid], [scheduled_taskid]) values (N'974ad4e2-b14c-48e1-93e6-8b091197cd80', N'546f21d6-10e6-49e3-81f1-a3894ac36148')
Go
Insert [dbo].[scheduled_queued_tasks] ([queued_taskid], [scheduled_taskid]) values (N'122421b2-5b19-41a5-840a-5681a45caaf0', N'546f21d6-10e6-49e3-81f1-a3894ac36148')
Go
Insert [dbo].[scheduled_queued_tasks] ([queued_taskid], [scheduled_taskid]) values (N'613f806d-dc95-4944-838f-c7152b01c889', N'546f21d6-10e6-49e3-81f1-a3894ac36148')
Go
Insert [dbo].[scheduled_queued_tasks] ([queued_taskid], [scheduled_taskid]) values (N'14c05595-a36f-458b-a86b-03fab412d81a', N'546f21d6-10e6-49e3-81f1-a3894ac36148')
Go
Insert [dbo].[scheduled_queued_tasks] ([queued_taskid], [scheduled_taskid]) values (N'32dd24c7-8ec0-4065-ae00-4bd16ded564c', N'546f21d6-10e6-49e3-81f1-a3894ac36148')
Go
Insert [dbo].[scheduled_queued_tasks] ([queued_taskid], [scheduled_taskid]) values (N'70fd4cc2-bad2-4edc-9c57-d4bc59fbf5fe', N'546f21d6-10e6-49e3-81f1-a3894ac36148')
Go
Insert [dbo].[scheduled_queued_tasks] ([queued_taskid], [scheduled_taskid]) values (N'19076aa9-907e-459f-97ef-4a18bdebe9ad', N'546f21d6-10e6-49e3-81f1-a3894ac36148')
Go
Set ansi_padding on
Go
/****** object:  index [queued_taskid_unique]    script date: 12/31/2020 9:27:54 am ******/
Alter table [dbo].[scheduled_queued_tasks] add  constraint [queued_taskid_unique] unique nonclustered 
(
	[queued_taskid] asc
)with (pad_index = off, statistics_norecompute = off,  ignore_dup_key = off, online = off, allow_row_locks = on, allow_page_locks = on, optimize_for_sequential_key = off) on [primary]
Go
Alter table [dbo].[ml_log] add  constraint [df_ml_log_time_stamp]  default (getutcdate()) for [time_stamp]
Go
Alter table [dbo].[ml_registration] add  constraint [df_ml_registration_is_schedulable]  default ((1)) for [is_schedulable]
Go
Alter table [dbo].[ml_registration] add  constraint [df_ml_registration_is_queueable]  default ((1)) for [is_queueable]
Go
Alter table [dbo].[ml_registration] add  constraint [df_ml_registration_wait_one_timeout]  default ((10)) for [wait_one_timeout]
Go
Alter table [dbo].[ml_server_queues] add  constraint [df_ml_server_queues_time_stamp]  default (getutcdate()) for [time_stamp]
Go
/****** object:  storedprocedure [dbo].[ajitemptymldb]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
-- =============================================
-- author:		<author,,name>
-- create date: <create date,,>
-- description:	<description,,>
-- =============================================
Create procedure [dbo].[ajitemptymldb]
	-- add the parameters for the stored procedure here

As
Begin
	-- set nocount on added to prevent extra result sets from
	-- interfering with select statements.
	Set nocount on;

    -- insert statements for procedure here
Truncate table dbo.Ml_completed_task
Truncate table dbo.Ml_execute_task
Truncate table dbo.Ml_execute_task_history
Truncate table dbo.Ml_queued_task
Truncate table dbo.Ml_registration
Truncate table dbo.Ml_registration_unregistered
Truncate table dbo.Ml_scheduled_task
Truncate table dbo.Scheduled_queued_tasks

End
Go
/****** object:  storedprocedure [dbo].[ml_abortscheduledtask]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create procedure [dbo].[ml_abortscheduledtask] 
	@id nvarchar(128), @status nvarchar(200), @recent_update_time datetime
As
Begin
	Update ml_scheduled_task set status=@status, recent_update_time=@recent_update_time, modified_date=getutcdate()  where id=@id
End
Go
/****** object:  storedprocedure [dbo].[ml_addmlauditrecord]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create procedure [dbo].[ml_addmlauditrecord] 
	@task_id nvarchar(128),@processor_name nvarchar(1000),@status nvarchar(200),@process_start_time datetime, @recent_update_time datetime
As
Begin
	Insert into ml_execute_task
		(task_id,processor_name,status,process_start_time,recent_update_time) 
	Values 
		(@task_id,@processor_name,@status,@process_start_time, @recent_update_time)
End
Go
/****** object:  storedprocedure [dbo].[ml_addscheduledtasktomlqueueandservicebrokerqueue]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create proc [dbo].[ml_addscheduledtasktomlqueueandservicebrokerqueue]
@scheduled_taskid nvarchar(128)
As
Begin tran
	Declare @queued_taskid nvarchar (128)
	Declare @process_type nvarchar (100)
	Select @queued_taskid = lower( convert(nvarchar(max), newid()))
	Declare @xmldata xml
	
	Select @process_type= [data].value('declare namespace ns="Http://www.MachineLearning.Com/ml/basetaskdata/"; 
	(/*/ns:tasktype/text())[1]', 'nvarchar(max)') ,@xmldata= data
	From ml_scheduled_task
	Where id=@scheduled_taskid
	
	Set @xmldata.modify('declare namespace ns="Http://www.MachineLearning.Com/ml/basetaskdata/";replace value of (/*/ns:id/text())[1] with sql:variable("@queued_taskid")')
		
-- add task to queue table
	Insert into ml_queued_task 
		(id,tenant_id, user_id, data, data_version, task_name, process_type, is_scheduled, status, 
		Queued_time, checksum, recent_update_time, created_by, created_date, modified_by,modified_date )

	Select 
		@queued_taskid, tenant_id, user_id, @xmldata, data_version, schedule_name, process_type, 1, 'scheduled_queued', 
		Getutcdate(),checksum, recent_update_time, created_by, getutcdate(), modified_by, getutcdate()
	From ml_scheduled_task	
	Where id=@scheduled_taskid
	
	
	

--add task to schedule mapping table
	Insert into scheduled_queued_tasks(queued_taskid,scheduled_taskid) values(@queued_taskid,@scheduled_taskid)

-- post notification to service broker queue 
	Declare @notificationdialog uniqueidentifier;
	Declare @message xml;
	Set @message  = @queued_taskid +  '|_|' + @process_type + '|_|' + 'scheduled_queued' + '|_|' + 'I';
	Set quoted_identifier on;
	Begin dialog conversation @notificationdialog
	From service ml_task_change_notifications  
	To service 'ml_task_change_notifications' 
	On contract [http://schemas.Microsoft.Com/sql/notifications/postquerynotification] 
	With encryption = off;
	Send on conversation @notificationdialog 
	Message type [http://schemas.Microsoft.Com/sql/notifications/querynotification] (@message);
    
If @@error>0 rollback tran
Else  
Commit tran
Go
/****** object:  storedprocedure [dbo].[ml_addscheduledtasktomlqueueandservicebrokerqueue_old]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go


Create proc [dbo].[ml_addscheduledtasktomlqueueandservicebrokerqueue_old]
@scheduled_taskid nvarchar(128)
As
Begin tran
	Declare @queued_taskid nvarchar (128)
	Declare @process_type nvarchar (100)
	Select @queued_taskid = lower( convert(nvarchar(max), newid()) )
	
	Select @process_type= [data].value('declare namespace ns="Http://www.MachineLearning.Com/ml/basetaskdata/"; 
	(/*/ns:tasktype/text())[1]', 'nvarchar(max)') 
	From ml_scheduled_task
	Where id=@scheduled_taskid

-- add task to queue table
	Insert into ml_queued_task 
		(id,tenant_id, user_id, data, data_version, task_name, process_type, is_scheduled, status, 
		Queued_time, checksum, modified_by, recent_update_time, created_by, created_date)

	Select 
		@queued_taskid, tenant_id, user_id, data, data_version, schedule_name, process_type, 1, 'scheduled_queued', 
		Getutcdate(),checksum, recent_update_by, recent_update_time, created_by, getdate()
	From ml_scheduled_task	
	Where id=@scheduled_taskid
	

	Update  ml_queued_task 
		Set [data].modify('declare namespace ns="Http://www.MachineLearning.Com/ml/basetaskdata/";replace value of (/*/ns:id/text())[1] with sql:variable("@queued_taskid")')
	Where id=@queued_taskid
	
	

--add task to schedule mapping table
	Insert into scheduled_queued_tasks(queued_taskid,scheduled_taskid) values(@queued_taskid,@scheduled_taskid)

-- post notification to service broker queue 
	Declare @notificationdialog uniqueidentifier;
	Declare @message xml;
	Set @message  = @queued_taskid +  '|_|' + @process_type + '|_|' + 'scheduled_queued' + '|_|' + 'I';
	Set quoted_identifier on;
	Begin dialog conversation @notificationdialog
	From service ml_task_change_notifications  
	To service 'ml_task_change_notifications' 
	On contract [http://schemas.Microsoft.Com/sql/notifications/postquerynotification] 
	With encryption = off;
	Send on conversation @notificationdialog 
	Message type [http://schemas.Microsoft.Com/sql/notifications/querynotification] (@message);
    
If @@error>0 rollback tran
Else  
Commit tran 

Go
/****** object:  storedprocedure [dbo].[ml_addscheduledtasktoqueue]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create procedure [dbo].[ml_addscheduledtasktoqueue] 
	@queued_taskid nvarchar (128), @scheduled_taskid nvarchar (128)
As
Begin
	Insert into scheduled_queued_tasks(queued_taskid,scheduled_taskid) values(@queued_taskid,@scheduled_taskid)
End
Go
/****** object:  storedprocedure [dbo].[ml_addscheduletask]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create procedure [dbo].[ml_addscheduletask] 
	@id nvarchar(128), @tenant_id int, @user_id nvarchar(128), @user_name nvarchar(256), @data xml, @data_version nvarchar(100), 
	@schedule_name nvarchar(100),@process_type nvarchar(100),
	@status nvarchar(200),
	@checksum nvarchar(128),@recent_update_time datetime,
	@frequency nvarchar(100), @scheduled_time datetime, @recent_update_by nvarchar(100)
As
Begin
		Insert into ml_scheduled_task
			(id,tenant_id,user_id,data, data_version, schedule_name, process_type,frequency, scheduled_time,status, 
			Checksum,recent_update_by,recent_update_time, created_by, created_date, modified_by,modified_date ) 
		Values 
			(@id,@tenant_id,@user_id,@data, @data_version, @schedule_name, @process_type,  
			@frequency, @scheduled_time, @status, @checksum,@recent_update_by,@recent_update_time,
			@user_name, getutcdate(), @user_name, getutcdate())
End
Go
/****** object:  storedprocedure [dbo].[ml_addtasktoqueue]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create procedure [dbo].[ml_addtasktoqueue] 
	@id nvarchar(128), @tenant_id int, @user_id nvarchar(128), @user_name nvarchar(256), @data xml, @data_version nvarchar(100), 
	@task_name nvarchar(100),@process_type nvarchar(100),
	@is_scheduled bit,@status nvarchar(200),@queued_time datetime,
	@checksum nvarchar(128),@recent_update_time datetime
As
Begin tran

	Insert into ml_queued_task
		(id,tenant_id,user_id,data, data_version, task_name, process_type,is_scheduled, status, 
		 Queued_time,checksum,recent_update_time, created_by, created_date, modified_by, modified_date  ) 
	Values (@id,@tenant_id,@user_id,@data, @data_version, @task_name,@process_type, 
			@is_scheduled, @status, @queued_time,@checksum,@recent_update_time,
			@user_name, getutcdate(),@user_name, getutcdate())
			
			
	Declare @notificationdialog uniqueidentifier;
    Declare @message xml;
    Set @message  = @id +  '|_|' + @process_type + '|_|' + @status + '|_|' + 'I';
    Set quoted_identifier on;
    Begin dialog conversation @notificationdialog
    From service ml_task_change_notifications  
    To service 'ml_task_change_notifications' 
    On contract [http://schemas.Microsoft.Com/sql/notifications/postquerynotification] 
    With encryption = off;
    Send on conversation @notificationdialog 
    Message type [http://schemas.Microsoft.Com/sql/notifications/querynotification] (@message);
    
    If @@error>0 rollback tran
    Else  
	Commit tran
Go
/****** object:  storedprocedure [dbo].[ml_checkduplicatetaskinqueue]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create procedure [dbo].[ml_checkduplicatetaskinqueue] 
	@checksum nvarchar(128)
As
Begin
	Select top 1 id from ml_queued_task [nolock] where checksum=@checksum and id not in(select top 1 queued_taskid from scheduled_queued_tasks [nolock]) 
	Union all 
	Select top 1 queued_taskid from scheduled_queued_tasks [nolock]  where scheduled_taskid in(select top 1 id from ml_scheduled_task  [nolock] where status='scheduled' and  checksum=@checksum)
	Union all 
	Select top 1 id from ml_scheduled_task [nolock]  where checksum=@checksum
	--select null id
End
Go
/****** object:  storedprocedure [dbo].[ml_deleteregisteredtaskservice]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create procedure [dbo].[ml_deleteregisteredtaskservice] 
	@task_type nvarchar(128)
As
Begin
	Delete from ml_registration where task_type=@task_type
End
Go
/****** object:  storedprocedure [dbo].[ml_deletescheduledtask]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create procedure [dbo].[ml_deletescheduledtask] 
	@id nvarchar(128)
As
Begin
	Delete from ml_scheduled_task   where id=@id
	 And id not in(select scheduled_taskid from scheduled_queued_tasks 
	 Where ml_scheduled_task.Id=scheduled_queued_tasks.Scheduled_taskid and 
	 Scheduled_queued_tasks.Scheduled_taskid=@id)
	 
End
Go
/****** object:  storedprocedure [dbo].[ml_deletetask]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create procedure [dbo].[ml_deletetask] 
	@id nvarchar(128)
As
Begin
	
	Delete from ml_scheduled_task   where id=@id
	Delete from ml_completed_task where id=@id
	Delete from scheduled_queued_tasks where scheduled_taskid=@id
End
Go
/****** object:  storedprocedure [dbo].[ml_getregisteredtaskimplementationtype]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create procedure [dbo].[ml_getregisteredtaskimplementationtype] 
	@task_type nvarchar(128)
As
Begin
	Select implementation_type from ml_registration [nolock]   where is_active='true' and task_type=@task_type
End
Go
/****** object:  storedprocedure [dbo].[ml_getregisteredtasks]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create procedure [dbo].[ml_getregisteredtasks]
@task_type nvarchar(128)=null
As
Begin
	If @task_type is null or len(@task_type)<=0 select @task_type='%'
	
	Select  
		Isnull(id,'') as id, isnull(task_type,'') as task_type, isnull(implementation_type,'') as implementation_type, 
		Isnull(url,'') as url, isnull(task_version,'') as task_version, isnull(task_object_type,'') as task_object_type, 
		Isnull(task_processor_type,'') as task_processor_type, isnull(task_object_schema,'') as task_object_schema, 
		Isnull(is_active,'') as is_active, isnull(is_schedulable,'') as is_schedulable, isnull(is_queueable,'') as is_queueable, 
		Isnull(max_jobs,0) as max_jobs, isnull(current_jobs,0) as current_jobs, isnull(method_name,'') as method_name,
		Isnull(wait_one_timeout,0) as wait_one_timeout, isnull(created_by,'') as created_by, 
		Isnull(created_date,'') as created_date, isnull(modified_by,'') as modified_by, 
		Isnull(modified_date,'') as modified_date
	From 
		Ml_registration [nolock] 
	Where 
		Is_active='true' and task_type like @task_type
End
Go
/****** object:  storedprocedure [dbo].[ml_getscheduledtaskbyid]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create procedure [dbo].[ml_getscheduledtaskbyid] 
	@scheduledtaskid nvarchar(128)
As
Begin
	Select 
		Isnull(id,'') id, isnull(tenant_id,'') tenant_id, isnull(user_id,'') [user_id], isnull(data,'') data, isnull(data_version,'') data_version, 
		Isnull(schedule_name,'') schedule_name, isnull(process_type,'') process_type, isnull(frequency,'') frequency, isnull(scheduled_time,'') scheduled_time, isnull(status,'') status, 
		Isnull(last_run_status,'') last_run_status, isnull(start_time,'') start_time, isnull(end_time,'') end_time, isnull(checksum,'') checksum, 
		Isnull(recent_update_by,'') recent_update_by, isnull(recent_update_time,'') recent_update_time, 
		Isnull(created_by,'') as created_by, isnull(created_date,'') as created_date, isnull(modified_by,'') as modified_by, isnull(modified_date,'') as modified_date
	From 
		Ml_scheduled_task  [nolock] 
	Where 
		Id=@scheduledtaskid
End
Go
/****** object:  storedprocedure [dbo].[ml_getscheduledtasklist]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
-- ml_getscheduledtasklist 'simulation_process', '','',''
Create procedure [dbo].[ml_getscheduledtasklist] 
	@tasktype nvarchar(100)  = null, @tenant_id nvarchar(128) = null, @user_id nvarchar(128)= null, @status nvarchar(128)= null
As
Begin
	--declare @tasktype nvarchar(100)  , @tenant_id nvarchar(128) , @user_id nvarchar(128), @status nvarchar(128)
	Declare @whereclause nvarchar(max),@schwhereclause nvarchar(max)
	Select 
			@whereclause = '' 
						+ case when @tasktype is not null and len(ltrim(rtrim(@tasktype))) > 0 then ' and process_type='''+ ltrim(rtrim(@tasktype))+ '''' else '' end  
						+ case when @tenant_id is not null and len(ltrim(rtrim(@tenant_id))) > 0 then ' and tenant_id='+@tenant_id else '' end  
						+ case when @user_id is not null and len(ltrim(rtrim(@user_id))) > 0 then ' and user_id='+@user_id else '' end 
						+ case when @status is not null and len(ltrim(rtrim(@status))) > 0 then ' and status='+@status else '' end
		
		
		 Exec ('
				Select 
					 Isnull(id,'''') id, isnull(tenant_id,'''') tenant_id, isnull(user_id,'''') [user_id], isnull(data,'''') data, 
					 Isnull(data_version,'''') data_version, isnull(schedule_name,'''') schedule_name, isnull(process_type,'''') process_type, isnull(frequency,'''') frequency, 
					 Scheduled_time, isnull(status,'''') status, isnull(last_run_status,'''') last_run_status, start_time, 
					 End_time, isnull(checksum,'''') checksum, isnull(recent_update_by,'''') recent_update_by, isnull(recent_update_time,'''') 
					 Recent_update_time, isnull(created_by,'''') as created_by, created_date, isnull(modified_by,'''') as modified_by, 
					 Modified_date
                From ml_scheduled_task  [nolock]  where 1=1 '+ @whereclause 
		)

End
Go
/****** object:  storedprocedure [dbo].[ml_getscheduledtasktypenextslottime]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create procedure [dbo].[ml_getscheduledtasktypenextslottime] 
@tasktype nvarchar(64)
,@scheduled_time datetime
,@interval_in_seconds int=60
As
Begin

	Declare @available_scheduled_time datetime
	
	Select @available_scheduled_time= max( scheduled_time )
	From [ml_scheduled_task] where process_type =@tasktype  and
	Scheduled_time between @scheduled_time and 
	Dateadd(second,@interval_in_seconds, @scheduled_time)


	If(@available_scheduled_time is null) 
	Begin
		Select @available_scheduled_time=@scheduled_time
		Select @available_scheduled_time
	End
	Else 
	Begin
		Verify:
		Declare @available_scheduled_time_temp datetime
		
		Select @available_scheduled_time=dateadd(second,2,@available_scheduled_time)
		--set @available_scheduled_time_temp=@available_scheduled_time
		
		Select @available_scheduled_time_temp= max( scheduled_time )
		From [ml_scheduled_task] where process_type =@tasktype  and 
		Scheduled_time between @available_scheduled_time 
		And dateadd(second,@interval_in_seconds, @available_scheduled_time)
		
		If @available_scheduled_time_temp is null select @available_scheduled_time
		Else goto verify
	End
	
	
End



--exec dbo.Get_scheduled_task_type_next_slottime 'simulationprocess_localdev_nucleus','2010-12-07 06:39:00.000',0


Go
/****** object:  storedprocedure [dbo].[ml_getschedulerstatus]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create procedure [dbo].[ml_getschedulerstatus] 
	@id nvarchar(128)
As
Begin
	Select status from ml_scheduled_task  [nolock] where id=@id
End
Go
/****** object:  storedprocedure [dbo].[ml_getsuspendedregisteredtasks]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create procedure [dbo].[ml_getsuspendedregisteredtasks] 
As
Begin
	Select  
		Isnull(id,'') as id, isnull(task_type,'') as task_type, isnull(implementation_type,'') as implementation_type, 
		Isnull(url,'') as url, isnull(task_version,'') as task_version, isnull(task_object_type,'') as task_object_type, 
		Isnull(task_processor_type,'') as task_processor_type, isnull(task_object_schema,'') as task_object_schema, 
		Isnull(is_active,'') as is_active, isnull(is_schedulable,'') as is_schedulable, isnull(is_queueable,'') as is_queueable, 
		Isnull(max_jobs,0) as max_jobs, isnull(current_jobs,0) as current_jobs, isnull(method_name,'') as method_name,
		Isnull(wait_one_timeout,0) as wait_one_timeout, isnull(created_by,'') as created_by, 
		Convert(nvarchar,isnull(created_date,''),100) as created_date, isnull(modified_by,'') as modified_by, 
		Convert(nvarchar,isnull(modified_date,''),100) as modified_date
	From 
		Ml_registration [nolock] 
	Where 
		Is_active='false'
End
Go
/****** object:  storedprocedure [dbo].[ml_gettaskbyid]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
--ml_gettaskbyid '9b80bd89-de95-4687-9d51-638819a70238'
Create procedure [dbo].[ml_gettaskbyid] 
	@taskid nvarchar(128)
As
Begin
	--declare @taskid nvarchar(128)
	--set @taskid = '9b80bd89-de95-4687-9d51-638819a70238'
	Declare @frequency nvarchar(100)
	Declare @last_run_status nvarchar(200)
	
	Select @frequency = frequency from ml_scheduled_task where id= @taskid
	Select @last_run_status = last_run_status from ml_scheduled_task where id= @taskid
	
Select * from (
		Select 
			Id=@taskid,queue_id=id, isnull(tenant_id,'') tenant_id, isnull(user_id,'') [user_id], data, data_version, task_name,process_type, is_scheduled, status, queued_time, process_start_time, process_end_time ,checksum,recent_update_time, 
			Case is_scheduled  when '1'  then isnull(@frequency,'') else ''  end as frequency, case is_scheduled  when '1' then isnull(@last_run_status,'') else '' end  as last_run_status,
			Isnull(created_by,'') as created_by, created_date, isnull(modified_by,'') as modified_by, modified_date
		From 
			Ml_queued_task [nolock] 
		Where 
			Id in(select queued_taskid from scheduled_queued_tasks [nolock]  where (queued_taskid=@taskid or scheduled_taskid=@taskid) )
	Union all 
		Select 
			Id,queue_id='',isnull(tenant_id,'') tenant_id, isnull(user_id,'') [user_id],data, data_version, schedule_name,process_type, is_scheduled='1', status, scheduled_time queued_time, start_time process_start_time,  end_time process_end_time,checksum,recent_update_time, isnull(frequency,'') frequency , 
			Isnull(last_run_status,'') as last_run_status,
			Isnull(created_by,'') as created_by, created_date, isnull(modified_by,'') as modified_by, modified_date
		From 
			Ml_scheduled_task [nolock] 
		Where 
			Id=@taskid and id not in(select scheduled_taskid from scheduled_queued_tasks  [nolock] where scheduled_taskid=@taskid)
	Union all 
		Select 
			Id=@taskid,queue_id=id,isnull(tenant_id,'') tenant_id, isnull(user_id,'') [user_id],data, data_version, task_name,process_type, is_scheduled, status, queued_time, process_start_time, process_end_time ,checksum,recent_update_time, 
			Case is_scheduled  when '1'  then isnull(@frequency,'') else ''  end as frequency, case is_scheduled  when '1' then isnull(@last_run_status,'') else '' end  as last_run_status,
			Isnull(created_by,'') as created_by, created_date, isnull(modified_by,'') as modified_by, modified_date
		From 
			Ml_completed_task [nolock]  
		Where 
			Id in(select queued_taskid from scheduled_queued_tasks [nolock]  where (queued_taskid=@taskid or scheduled_taskid=@taskid) )
	Union all 
	
		Select 
			Id,queue_id=id,isnull(tenant_id,'') tenant_id, isnull(user_id,'') [user_id],data, data_version, task_name,process_type, is_scheduled, status, queued_time, process_start_time, process_end_time ,checksum,recent_update_time, 
			Case is_scheduled  when '1'  then isnull(@frequency,'') else ''  end as frequency, case is_scheduled  when '1' then isnull(@last_run_status,'') else '' end  as last_run_status,
			Isnull(created_by,'') as created_by, created_date, isnull(modified_by,'') as modified_by, modified_date
		From 
			Ml_queued_task [nolock] 
		Where 
			Id=@taskid and not exists(select 1 from scheduled_queued_tasks [nolock]  where (queued_taskid=@taskid or scheduled_taskid=@taskid) )
	Union all 
		Select 
			Id,queue_id=id,isnull(tenant_id,'') tenant_id, isnull(user_id,'') [user_id],data, data_version, task_name,process_type, is_scheduled, status, queued_time, process_start_time, process_end_time ,checksum,recent_update_time, 
			Case is_scheduled  when '1'  then isnull(@frequency,'') else ''  end as frequency, case is_scheduled  when '1' then isnull(@last_run_status,'') else '' end  as last_run_status,
			Isnull(created_by,'') as created_by, created_date, isnull(modified_by,'') as modified_by, modified_date
		From 
			Ml_completed_task [nolock]  
		Where 
			Id=@taskid and not exists(select 1 from scheduled_queued_tasks [nolock]  where (queued_taskid=@taskid or scheduled_taskid=@taskid) )
			
		) src order by queued_time desc, modified_date 
End
Go
/****** object:  storedprocedure [dbo].[ml_gettaskdatabyid]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create procedure [dbo].[ml_gettaskdatabyid] 
	@id nvarchar(128)
As
Begin
	Select data from ml_queued_task [nolock]  where id=@id 
	Union all 
	Select data from ml_scheduled_task [nolock]  where id=@id 
	Union all
	Select data from ml_completed_task  [nolock]  where id=@id 
End
Go
/****** object:  storedprocedure [dbo].[ml_gettasklist]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
-- ml_gettasklist 'simulationprocess_localdev_nucleus', '','',''
Create procedure [dbo].[ml_gettasklist] 
	@tasktype nvarchar(100)  = null, @tenant_id nvarchar(128) = null, @user_id nvarchar(128)= null, @status nvarchar(128)= null
As
Begin
	Declare @whereclause nvarchar(max),@schwhereclause nvarchar(max)
	Select 
			@whereclause = '' 
						+ case when @tasktype is not null and len(ltrim(rtrim(@tasktype))) > 0 then ' and process_type='''+ ltrim(rtrim(@tasktype))+ '''' else '' end  
						+ case when @tenant_id is not null and len(ltrim(rtrim(@tenant_id))) > 0 then ' and tenant_id='+@tenant_id else '' end  
						+ case when @user_id is not null and len(ltrim(rtrim(@user_id))) > 0 then ' and user_id='+@user_id else '' end 
						+ case when @status is not null and len(ltrim(rtrim(@status))) > 0 then ' and aqt.Status='+@status else '' end
			,@schwhereclause = 'id not in (select scheduled_taskid from scheduled_queued_tasks [nolock] )' 
						+ case when @tasktype is not null and len(ltrim(rtrim(@tasktype))) > 0 then ' and process_type='''+ ltrim(rtrim(@tasktype))+ '''' else '' end 
						+ case when @tenant_id is not null and len(ltrim(rtrim(@tenant_id))) > 0 then ' and tenant_id='+@tenant_id else '' end 
						+ case when @user_id is not null and len(ltrim(rtrim(@user_id))) > 0 then ' and user_id='+@user_id else '' end 
						+ case when @status is not null and len(ltrim(rtrim(@status))) > 0 then ' and status='+@status else '' end
		
		Exec ('
				Select * from (
				Select aqt.Id,queue_id=aqt.Id,isnull(tenant_id,'''') tenant_id, isnull(user_id,'''') [user_id],data, data_version, task_name,process_type,aet.Processor_name,is_scheduled, isnull(aet.Status,aqt.Status) status, queued_time, aet.Process_start_time process_start_time, aet.Process_end_time process_end_time,checksum,isnull(aet.Recent_update_time,aqt.Recent_update_time) recent_update_time,isnull(case is_scheduled  when ''1'' then (select frequency from ml_scheduled_task where id= aqt.Id)  else '''' end,'''') as frequency, isnull(case is_scheduled  when ''1'' then (select last_run_status from ml_scheduled_task where id= aqt.Id) else '''' end,'''') as last_run_status, isnull(created_by,'''') as created_by, created_date, isnull(modified_by,'''') as modified_by, modified_date 
				From ml_queued_task aqt left join ml_execute_task  aet  on  aqt.Id=aet.Task_id  
				Where  is_scheduled=''false''   '+ @whereclause + '
				Union all 
				Select id,queue_id='''',isnull(tenant_id,'''') tenant_id, isnull(user_id,'''') [user_id],data, data_version, schedule_name,process_type,'''' processor_name,is_scheduled=''1'',status, scheduled_time queued_time, start_time process_start_time, end_time process_end_time,checksum,recent_update_time, isnull(frequency,'''') frequency , isnull(last_run_status,'''') as last_run_status, isnull(created_by,'''') as created_by,  created_date, isnull(modified_by,'''') as modified_by, modified_date 
				From ml_scheduled_task [nolock]  
				Where  '+ @schwhereclause + '
				Union all 
				Select aqt.Id,queue_id=aqt.Id,isnull(tenant_id,'''') tenant_id, isnull(user_id,'''') [user_id],data, data_version, task_name,process_type,aet.Processor_name,is_scheduled, isnull(aet.Status,aqt.Status) status, queued_time, aet.Process_start_time process_start_time, aet.Process_end_time process_end_time,checksum,isnull(aet.Recent_update_time,aqt.Recent_update_time) recent_update_time, isnull(case is_scheduled  when ''1'' then (select frequency from ml_scheduled_task where id= aqt.Id)  else '''' end,'''') as frequency, isnull(case is_scheduled  when ''1'' then (select last_run_status from ml_scheduled_task where id= aqt.Id) else '''' end,'''') as last_run_status, isnull(created_by,'''') as created_by, created_date, isnull(modified_by,'''') as modified_by, modified_date 
				From ml_completed_task aqt left join ml_execute_task  aet  on  aqt.Id=aet.Task_id 
				Where  is_scheduled=''false''  '+ @whereclause + '
				Union all 
				Select id=scheduled_taskid,queue_id=queued_taskid,isnull(tenant_id,'''') tenant_id, isnull(user_id,'''') [user_id],data, data_version, task_name,process_type,aet.Processor_name, is_scheduled, isnull(aet.Status,aqt.Status) status, (select scheduled_time from ml_scheduled_task where id=scheduled_taskid) queued_time, aet.Process_start_time process_start_time, aet.Process_end_time process_end_time,checksum,isnull(aet.Recent_update_time,aqt.Recent_update_time) recent_update_time, isnull(case is_scheduled  when ''1'' then (select frequency from ml_scheduled_task where id= scheduled_taskid or id= queued_taskid)  else '''' end,'''') as frequency, isnull(case is_scheduled  when ''1'' then (select last_run_status from ml_scheduled_task where id= scheduled_taskid or id= queued_taskid) else '''' end ,'''')as last_run_status, isnull(created_by,'''') as created_by, created_date, isnull(modified_by,'''') as modified_by, modified_date 
				From ml_queued_task aqt  join scheduled_queued_tasks sqt on aqt.Id=queued_taskid  left join ml_execute_task  aet  on  aqt.Id=aet.Task_id  
				Where is_scheduled=''true'' ' + @whereclause + '
				Union all 
				Select id=scheduled_taskid,queue_id=queued_taskid,isnull(tenant_id,'''') tenant_id, isnull(user_id,'''') [user_id],data, data_version, task_name,process_type,aet.Processor_name, is_scheduled, isnull(aet.Status,aqt.Status) status, (select scheduled_time from ml_scheduled_task where id=scheduled_taskid) queued_time, aet.Process_start_time process_start_time, aet.Process_end_time process_end_time,checksum,isnull(aet.Recent_update_time,aqt.Recent_update_time) recent_update_time, isnull(case is_scheduled  when ''1'' then (select frequency from ml_scheduled_task where id= scheduled_taskid or id= queued_taskid)  else '''' end,'''') as frequency, isnull(case is_scheduled  when ''1'' then (select last_run_status from ml_scheduled_task where id= scheduled_taskid or id= queued_taskid) else '''' end ,'''')as last_run_status, isnull(created_by,'''') as created_by, created_date, isnull(modified_by,'''') as modified_by, modified_date 
				From ml_completed_task aqt  join scheduled_queued_tasks on aqt.Id=queued_taskid  left join ml_execute_task  aet  on  aqt.Id=aet.Task_id  
				Where  is_scheduled=''true'' '+ @whereclause + '
			) src order by queued_time desc,  modified_date '
			
			
		)

End
Go
/****** object:  storedprocedure [dbo].[ml_gettasklistbyproperty]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
--ml_gettasklistbyproperty 'simulation_process','1',' and [data].value(''*[1]/scenarioid[1]'',''nvarchar(max)'') = ''160''  and [data].value(''*[1]/processid[1]'',''nvarchar(max)'') = ''7'' '
Create procedure [dbo].[ml_gettasklistbyproperty] 
	@tasktype nvarchar(100)  , @tenant_id nvarchar(128) , 
	@property_whereclause nvarchar(max)
	--'prop1~value|_|prop2~value|_|
As
Begin

--declare @tasktype nvarchar(100)
--declare @tenant_id nvarchar(100)
--declare @property_whereclause nvarchar(max)
--set @property_whereclause=N' and [data].value(''*[1]/scenarioid[1]'',''nvarchar(max)'') = ''160''  and [data].value(''*[1]/processid[1]'',''nvarchar(max)'') = ''7'' '

--set @tasktype = 'simulation_process'
--set @tenant_id = 1




Declare @whereclause nvarchar(max)
	Select 
			@whereclause = ' process_type = ''' + @tasktype+ ''' and tenant_id = ''' + @tenant_id + '''' + @property_whereclause
			
			

Exec ('
			Select aqt.Id,queue_id=aqt.Id,isnull(tenant_id,'''') tenant_id, isnull(user_id,'''') [user_id],data, data_version, task_name,process_type,aet.Processor_name,is_scheduled, isnull(aet.Status,aqt.Status) status, queued_time, aet.Process_start_time process_start_time, aet.Process_end_time process_end_time,checksum,isnull(aet.Recent_update_time,aqt.Recent_update_time) recent_update_time,isnull(case is_scheduled  when ''1'' then (select frequency from ml_scheduled_task where id= aqt.Id)  else '''' end,'''') as frequency, isnull(case is_scheduled  when ''1'' then (select last_run_status from ml_scheduled_task where id= aqt.Id) else '''' end,'''') as last_run_status, isnull(created_by,'''') as created_by, created_date, isnull(modified_by,'''') as modified_by, modified_date 
			From ml_queued_task aqt left join ml_execute_task  aet  on  aqt.Id=aet.Task_id  
			Where  is_scheduled=''false''  and '+ @whereclause + '
			Union all 
			Select id,queue_id='''',isnull(tenant_id,'''') tenant_id, isnull(user_id,'''') [user_id],data, data_version, schedule_name,process_type,'''' processor_name,is_scheduled=''1'',status,scheduled_time queued_time, start_time process_start_time, end_time process_end_time,checksum,recent_update_time, isnull(frequency,'''') frequency , isnull(last_run_status,'''') as last_run_status, isnull(created_by,'''') as created_by, created_date, isnull(modified_by,'''') as modified_by, modified_date 
			From ml_scheduled_task [nolock]  
			Where  '+ @whereclause + '
			Union all 
			Select aqt.Id,queue_id=aqt.Id,isnull(tenant_id,'''') tenant_id, isnull(user_id,'''') [user_id],data, data_version, task_name,process_type,aet.Processor_name,is_scheduled, isnull(aet.Status,aqt.Status) status, queued_time, aet.Process_start_time process_start_time, aet.Process_end_time process_end_time,checksum,isnull(aet.Recent_update_time,aqt.Recent_update_time) recent_update_time, isnull(case is_scheduled  when ''1'' then (select frequency from ml_scheduled_task where id= aqt.Id)  else '''' end,'''') as frequency, isnull(case is_scheduled  when ''1'' then (select last_run_status from ml_scheduled_task where id= aqt.Id) else '''' end,'''') as last_run_status, isnull(created_by,'''') as created_by, created_date, isnull(modified_by,'''') as modified_by, modified_date 
			From ml_completed_task aqt left join ml_execute_task  aet  on  aqt.Id=aet.Task_id 
			Where  is_scheduled=''false''  and '+ @whereclause + '
			Union all 
			Select id=scheduled_taskid,queue_id=queued_taskid,isnull(tenant_id,'''') tenant_id, isnull(user_id,'''') [user_id],data, data_version, task_name,process_type,aet.Processor_name, is_scheduled, isnull(aet.Status,aqt.Status) status, queued_time, aet.Process_start_time process_start_time, aet.Process_end_time process_end_time,checksum,isnull(aet.Recent_update_time,aqt.Recent_update_time) recent_update_time, isnull(case is_scheduled  when ''1'' then (select frequency from ml_scheduled_task where id= scheduled_taskid or id= queued_taskid)  else '''' end,'''') as frequency, isnull(case is_scheduled  when ''1'' then (select last_run_status from ml_scheduled_task where id= scheduled_taskid or id= queued_taskid) else '''' end ,'''')as last_run_status, isnull(created_by,'''') as created_by, created_date, isnull(modified_by,'''') as modified_by, modified_date 
			From ml_queued_task aqt  join scheduled_queued_tasks sqt on aqt.Id=queued_taskid  left join ml_execute_task  aet  on  aqt.Id=aet.Task_id  
			Where is_scheduled=''true'' and' + @whereclause + '
			Union all 
			Select id=scheduled_taskid,queue_id=queued_taskid,isnull(tenant_id,'''') tenant_id, isnull(user_id,'''') [user_id],data, data_version, task_name,process_type,aet.Processor_name, is_scheduled, isnull(aet.Status,aqt.Status) status, queued_time, aet.Process_start_time process_start_time, aet.Process_end_time process_end_time,checksum,isnull(aet.Recent_update_time,aqt.Recent_update_time) recent_update_time, isnull(case is_scheduled  when ''1'' then (select frequency from ml_scheduled_task where id= scheduled_taskid or id= queued_taskid)  else '''' end,'''') as frequency, isnull(case is_scheduled  when ''1'' then (select last_run_status from ml_scheduled_task where id= scheduled_taskid or id= queued_taskid) else '''' end ,'''')as last_run_status, isnull(created_by,'''') as created_by, created_date, isnull(modified_by,'''') as modified_by, modified_date 
			From ml_completed_task aqt  join scheduled_queued_tasks on aqt.Id=queued_taskid  left join ml_execute_task  aet  on  aqt.Id=aet.Task_id  
			Where  is_scheduled=''true'' and '+ @whereclause + ''
		)
End
Go
/****** object:  storedprocedure [dbo].[ml_gettaskobjectschema]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create procedure [dbo].[ml_gettaskobjectschema] 
	@task_type nvarchar (128)
As
Begin
	Select task_object_schema from ml_registration [nolock] where task_type=@task_type  and is_active='true'
End
Go
/****** object:  storedprocedure [dbo].[ml_gettaskobjecttype]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create procedure [dbo].[ml_gettaskobjecttype] 
	@task_type nvarchar (128)
As
Begin
	Select task_object_type from ml_registration [nolock] where task_type=@task_type  and is_active='true'
End
Go
/****** object:  storedprocedure [dbo].[ml_gettaskprocessortype]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create procedure [dbo].[ml_gettaskprocessortype] 
	@task_type nvarchar (128)
As
Begin
	Select task_processor_type from ml_registration [nolock] where task_type=@task_type  and is_active='true'
End
Go
/****** object:  storedprocedure [dbo].[ml_gettaskstatus]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create procedure [dbo].[ml_gettaskstatus] 
	@id nvarchar(128)
As
Begin
	Select isnull(status,'') as status from  ml_queued_task [nolock] where id=@id 
	Union all 
	Select 'completed' where exists(select 1 from  ml_completed_task [nolock] where id=@id) 
	Union all 
	Select 'scheduled_queued' where exists(select 1 from scheduled_queued_tasks [nolock] where scheduled_taskid=@id and exists(select id from ml_queued_task [nolock] where id in(select queued_taskid from scheduled_queued_tasks  [nolock] where scheduled_taskid=@id ))) 
	Union all 
	Select 'scheduled_completed' where exists(select 1 from scheduled_queued_tasks [nolock] where scheduled_taskid=@id and exists(select id from ml_completed_task [nolock] where id in(select queued_taskid from scheduled_queued_tasks  [nolock] where scheduled_taskid=@id ))) 
	Union all 
	Select 'scheduled' where exists(select 1 from  ml_scheduled_task [nolock] where id=@id and not exists(select scheduled_taskid from scheduled_queued_tasks  [nolock] where scheduled_taskid=@id)) ;
End
Go
/****** object:  storedprocedure [dbo].[ml_gettaskstatusdetails]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create procedure [dbo].[ml_gettaskstatusdetails] 
	@id nvarchar(128), @status nvarchar(200)
As
Begin
	 If (@status ='completed')	
		 Begin
			Select	
				Aqt.Id,queue_id=aqt.Id,task_name,process_type,aet.Processor_name, 
				Isnull(aet.Status,aqt.Status) status,is_scheduled, queued_time,
				Aet.Process_start_time,aet.Process_end_time 
			From 
				Ml_completed_task aqt left join ml_execute_task  aet  on  aqt.Id=aet.Task_id  
			Where 
				Aqt.Id=@id
		 End
	 If (@status ='scheduled_queued')	
		 Begin
			Select 
				Id=scheduled_taskid,queue_id=queued_taskid,task_name,process_type,
				Aet.Processor_name, isnull(aet.Status,aqt.Status) status,is_scheduled, 
				Queued_time,aet.Process_start_time,aet.Process_end_time 
			From 
				Ml_queued_task aqt join scheduled_queued_tasks on aqt.Id=queued_taskid left join ml_execute_task  aet on  aqt.Id=aet.Task_id 
			Where 
				Scheduled_taskid=@id or queued_taskid=@id
		 End
	 If (@status ='scheduled_completed')	
		 Begin
			Select 
				Id=scheduled_taskid,queue_id=queued_taskid,task_name,process_type,aet.Processor_name, 
				Isnull(aet.Status,aqt.Status) status,is_scheduled, queued_time,aet.Process_start_time,
				Aet.Process_end_time 
			From 
				Ml_completed_task aqt join scheduled_queued_tasks on aqt.Id=queued_taskid left join ml_execute_task  aet on  aqt.Id=aet.Task_id 
			Where 
				Scheduled_taskid=@id or queued_taskid=@id
		 End
	 If (@status ='scheduled')	
		 Begin
			Select 
				Id,queue_id='',schedule_name,process_type, '' processor_name,status,is_scheduled='1', scheduled_time,
				Start_time,end_time 
			From 
				Ml_scheduled_task [nolock] 
			Where 
				Id=@id
		 End
	 Else
		 Begin 
			Select 
				Aqt.Id,queue_id=aqt.Id,task_name,process_type,aet.Processor_name,isnull(aet.Status,aqt.Status) status,
				Is_scheduled, queued_time,aet.Process_start_time,aet.Process_end_time 
			From 
				Ml_queued_task  aqt left join ml_execute_task  aet  on  aqt.Id=aet.Task_id  
			Where 
				Aqt.Id=@id	 
		 End
End
Go
/****** object:  storedprocedure [dbo].[ml_getunregisteredtasks]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create procedure [dbo].[ml_getunregisteredtasks]
As
Begin
	Select  
		Isnull(id,'') as id, isnull(task_type,'') as task_type, isnull(implementation_type,'') as implementation_type, 
		Isnull(url,'') as url, isnull(task_version,'') as task_version, isnull(task_object_type,'') as task_object_type, 
		Isnull(task_processor_type,'') as task_processor_type, isnull(task_object_schema,'') as task_object_schema, 
		Isnull(is_active,'') as is_active, isnull(is_schedulable,'') as is_schedulable, isnull(is_queueable,'') as is_queueable, 
		Isnull(max_jobs,0) as max_jobs, isnull(current_jobs,0) as current_jobs, isnull(method_name,'') as method_name,
		Isnull(wait_one_timeout,0) as wait_one_timeout, isnull(created_by,'') as created_by, 
		Convert(nvarchar,isnull(created_date,''),100) as created_date, isnull(modified_by,'') as modified_by, 
		Convert(nvarchar,isnull(modified_date,''),100) as modified_date
	From 
		Ml_registration_unregistered [nolock] 
	Where 
		1=1
End
Go
/****** object:  storedprocedure [dbo].[ml_istaskexists]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create procedure [dbo].[ml_istaskexists] 
	@taskname nvarchar(100),@tasktype nvarchar(100)= null, @tenantid nvarchar(128) =null
As
Begin
	Declare @whereclause nvarchar(max),@schwhereclause nvarchar(max)
	Select 
			@whereclause = '' 
						+ case when @taskname is not null and len(ltrim(rtrim(@taskname))) > 0 then 'task_name='''+ ltrim(rtrim(@taskname))+ '''' else '' end  
						+ case when @tasktype is not null and len(ltrim(rtrim(@tasktype))) > 0 then ' and process_type='''+ ltrim(rtrim(@tasktype))+ '''' else '' end  
						+ case when @tenantid is not null and len(ltrim(rtrim(@tenantid))) > 0 then ' and tenant_id='+@tenantid else '' end  
			,@schwhereclause = '' 
						+ case when @taskname is not null and len(ltrim(rtrim(@taskname))) > 0 then 'schedule_name='''+ ltrim(rtrim(@taskname))+ '''' else '' end  
						+ case when @tasktype is not null and len(ltrim(rtrim(@tasktype))) > 0 then ' and process_type='''+ ltrim(rtrim(@tasktype))+ '''' else '' end  
						+ case when @tenantid is not null and len(ltrim(rtrim(@tenantid))) > 0 then ' and tenant_id='+@tenantid else '' end  
	
	Exec ('if (exists (
				Select 1 from ml_queued_task where ' + @whereclause + '
				Union all 
				Select 1 from ml_scheduled_task where ' + @schwhereclause + '
				)
		)
	Select 1
	Else
	Select 0')
End
Go
/****** object:  storedprocedure [dbo].[ml_istaskinprocess]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create procedure [dbo].[ml_istaskinprocess] 
	@id nvarchar(128), @status nvarchar(200)
As
Begin
	 If (@status ='completed')	
		 Begin
			Select 'false' 
		 End
	 If (@status ='scheduled_queued')	
		 Begin
			Select 'true' 
			Where 
				Exists(select status from ml_queued_task [nolock] join 
					Scheduled_queued_tasks on id=queued_taskid  
						Where (scheduled_taskid=@id or queued_taskid=@id) and upper(status)='process_started')
		 End
	 If (@status ='scheduled_completed')	
		 Begin
			Select 'false' 
		 End
	 If (@status ='scheduled')	
		 Begin
			Select 'false' 
			
		 End
	 Else
		 Begin 
			Select 'true' where exists(select status from ml_queued_task [nolock] where id=@id and upper(status)='process_started')
		 End
End
Go
/****** object:  storedprocedure [dbo].[ml_istasktypejobsinprocess]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create procedure [dbo].[ml_istasktypejobsinprocess] 
	@process_type nvarchar(100)
As
Begin
	Select 'true' 
	Where 
		Exists(
				Select status from ml_queued_task [nolock] 
				Where 
					Process_type=@process_type and upper(status) in('queued','scheduled_queued','process_started'))
End
Go
/****** object:  storedprocedure [dbo].[ml_istasktyperegistered]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create procedure [dbo].[ml_istasktyperegistered] 
	@task_type nvarchar (128)
As
Begin
	Select 'true' 
	Where 
		Exists(select 1 from ml_registration where is_active='true' and task_type=@task_type)
End
Go
/****** object:  storedprocedure [dbo].[ml_registertaskservice]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create procedure [dbo].[ml_registertaskservice] 
	@id nvarchar(128), @task_type nvarchar(128),  @implementation_type nvarchar(100), @url nvarchar(1024),
	@task_version nvarchar(512), @task_object_schema xml, @task_object_type nvarchar(1024), 
	@task_processor_type nvarchar(1024), @is_active bit, @is_schedulable bit, @is_queueable bit, 
	@max_jobs int, @current_jobs int, @method_name nvarchar(1000), @wait_one_timeout int, @user_name nvarchar(256)
As
Begin
	Insert into ml_registration
		(id,task_type,implementation_type,url,task_version,task_object_schema,task_object_type,task_processor_type,
		Is_active,is_schedulable,is_queueable,max_jobs,current_jobs,method_name,wait_one_timeout, 
		Created_by, created_date, modified_by, modified_date) 
	Values 
		(@id, @task_type, @implementation_type, @url, @task_version, @task_object_schema, @task_object_type, 
		@task_processor_type, @is_active, @is_schedulable, @is_queueable, @max_jobs, 0, @method_name,
		@wait_one_timeout, @user_name, getutcdate(), @user_name, getutcdate())
End
Go
/****** object:  storedprocedure [dbo].[ml_registertaskservice_old]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go



Create procedure [dbo].[ml_registertaskservice_old] 
@registeredtaskmetadata xml, @registeredtaskprocessdata xml=null
	--@id nvarchar(128), @task_type nvarchar(128),  @implementation_type nvarchar(100), @url nvarchar(1024),
	--@task_version nvarchar(512), @task_object_schema xml, @task_object_type nvarchar(1024), 
	--@task_processor_type nvarchar(1024), @is_active bit, @is_schedulable bit, @is_queueable bit, 
	--@max_jobs int, @current_jobs int, @method_name nvarchar(1000), @wait_one_timeout int, @user_name nvarchar(256)
As

Declare @idoc int 


Exec sp_xml_preparedocument @idoc output, @registeredtaskmetadata
--insert into [ml_registration]
--(
--	[id],[task_type],[implementation_type],[url]
--	,[task_version],[task_object_type]
--	,[task_processor_type],[task_object_schema]
--	,[is_active],[is_schedulable]
--	,[is_queueable],[max_jobs]
--	,[current_jobs] ,[method_name]
--	,[wait_one_timeout],[created_by]
--	,[created_date],[platform_target]
--)
Declare @test table(  
Id nvarchar(64)
,tasktype nvarchar(64)
,implementationtype  nvarchar(50)
,url  nvarchar(512) 
,taskversion  nvarchar(256)
,taskdataobjecttype nvarchar(max)
,tasktypeprocessors  nvarchar(max)
,tasktypeprocessorslist xml
,taskdatabinaryassemblies xml
,taskobjectschema xml
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
Insert into @test
Select 
Id 
,tasktype 
,implementationtype
,url  
,taskversion
,taskdataobjecttype
,tasktypeprocessors
,tasktypeprocessorslist
,taskdatabinaryassemblies
,taskobjectschema 
,isactive 
,isschedulable 
,isqueueable 
,maxjobs 
,currentjobs 
,methodname 
,waitone 
,username 
,convert(nvarchar(50), dbo.Getvaliddate( createddate),106) 
,platformtarget 


From openxml(@idoc, 'taskregistry',2)
With (
Id nvarchar(64)
,tasktype nvarchar(64)
,implementationtype  nvarchar(50)
,url  nvarchar(512) 
,taskversion  nvarchar(256)
,taskdataobjecttype nvarchar(max)
,tasktypeprocessors  nvarchar(max)
,tasktypeprocessorslist xml
,taskdatabinaryassemblies xml
,taskobjectschema xml
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
  Select * from @test
Exec sp_xml_removedocument @idoc
 



--begin
--	insert into ml_registration
--		(id,task_type,implementation_type,url,task_version,task_object_schema,task_object_type,task_processor_type,
--		is_active,is_schedulable,is_queueable,max_jobs,current_jobs,method_name,wait_one_timeout, 
--		created_by, created_date, modified_by, modified_date) 
--	values 
--		(@id, @task_type, @implementation_type, @url, @task_version, @task_object_schema, @task_object_type, 
--		@task_processor_type, @is_active, @is_schedulable, @is_queueable, @max_jobs, 0, @method_name,
--		@wait_one_timeout, @user_name, getdate(), @user_name, getdate())
--end

--select tasktypeprocessorslist.value('tasktypeprocessorslist[1]/string[2]','nvarchar(max)')  from @test
--select taskdatabinaryassemblies.value('taskdatabinaryassemblies[1]/anytype[1]','nvarchar(max)')  from @test

Go
/****** object:  storedprocedure [dbo].[ml_removescheduled_queuedtask]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create procedure [dbo].[ml_removescheduled_queuedtask] 
	@scheduled_taskid nvarchar(128)
As
Begin
	Delete from scheduled_queued_tasks  where scheduled_taskid=@scheduled_taskid
End
Go
/****** object:  storedprocedure [dbo].[ml_reset_ml_server_entities]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create procedure [dbo].[ml_reset_ml_server_entities] 
	
As
Declare @notifymessage nvarchar(max)
Begin transaction
 
Update ml_registration set current_jobs=0

Declare jobs_update_cursor cursor for  
Select 
Substring
(  
	Case message_type_name when 'x' then cast(message_body as nvarchar(max)) 
	Else message_body end ,0,38
)
From [ml_task_change_message] with(nolock)
Where 
Substring
(  
	Case message_type_name when 'x' then cast(message_body as nvarchar(max)) 
	Else message_body end ,0,38
) in 
(select  id from ml_queued_task nolock where upper(status)='process_started' )

Open jobs_update_cursor   
Fetch next from jobs_update_cursor into @notifymessage  
Select @notifymessage=replace(@notifymessage,'?','')

While @@fetch_status = 0   
Begin   
	   --update ml_registration set current_jobs=current_jobs-1 where task_type=(select task_type from ml_queued_task  nolock
	   --where id=@notifymessage )  
 
	 -- delete from ml_execute_task where task_id=@notifymessage and upper(status)='process_started'
	 -- delete from ml_execute_task where task_id=@notifymessage 
		
	  Update ml_queued_task set status=case is_scheduled when '1' then 'scheduled_queued' else  
	 'queued' end  where upper(status)='process_started' and id=@notifymessage-- and not exists(select task_id from ml_execute_task where task_id=@notifymessage)
       
       Fetch next from jobs_update_cursor into @notifymessage    
       Select @notifymessage=replace(@notifymessage,'?','')
End   

Close jobs_update_cursor   
Deallocate jobs_update_cursor 

Delete from ml_execute_task where task_id in(select id from ml_queued_task where status in('queued','scheduled_queued'))

Update  ml_execute_task set  status='aborted' where upper(status)='process_started' and  task_id in
(
	Select id from ml_queued_task where upper(status) ='process_started' and 
	Id not in
	(
		Select 
		Replace(substring
		(  
			Case message_type_name when 'x' then cast(message_body as nvarchar(max)) 
			Else message_body end ,0,38
		),'?','')
		From [ml_task_change_message] with(nolock)
	)
)

Update ml_queued_task set status='aborted' where upper(status) ='process_started' and 
	Id not in
	(
		Select 
		Replace(substring
		(  
			Case message_type_name when 'x' then cast(message_body as nvarchar(max)) 
			Else message_body end ,0,38
		),'?','')
		From [ml_task_change_message] with(nolock)
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
--/****** object:  storedprocedure [dbo].[ml_reset_ml_server_entities]    script date: 11/15/2010 10:03:57 ******/
--set ansi_nulls on
--go
--set quoted_identifier on
--go
--alter procedure [dbo].[ml_reset_ml_server_entities] 
	
--as
--declare @notifymessage nvarchar(max)
--begin transaction
 
--declare jobs_update_cursor cursor for  
--select 
--substring
--(  
--	case message_type_name when 'x' then cast(message_body as nvarchar(max)) 
--	else message_body end ,0,38
--)
--from [ml_task_change_message] with(nolock)
--where 
--substring
--(  
--	case message_type_name when 'x' then cast(message_body as nvarchar(max)) 
--	else message_body end ,0,38
--) in 
--(select  id from ml_queued_task nolock where upper(status)='process_started' )

--open jobs_update_cursor   
--fetch next from jobs_update_cursor into @notifymessage  
--select @notifymessage=replace(@notifymessage,'?','')

--while @@fetch_status = 0   
--begin   
--	   update ml_registration set current_jobs=current_jobs-1 where task_type=(select task_type from ml_queued_task  nolock
--	   where id=@notifymessage )  

--	  delete from ml_execute_task where task_id=@notifymessage and upper(status)='process_started'
		
--	  update ml_queued_task set status=case is_scheduled when '1' then 'scheduled_queued' else  
--	 'queued' end  where upper(status)='process_started' and id=@notifymessage and not exists(select task_id from ml_execute_task where task_id=@notifymessage)
       
--       fetch next from jobs_update_cursor into @notifymessage    
--       select @notifymessage=replace(@notifymessage,'?','')
--end   

--close jobs_update_cursor   
--deallocate jobs_update_cursor 

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
/****** object:  storedprocedure [dbo].[ml_resumeregisteredtaskservice]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create procedure [dbo].[ml_resumeregisteredtaskservice] 
	@task_type nvarchar(128)
As
Begin
	Update ml_registration set is_active='1' where task_type=@task_type
End
Go
/****** object:  storedprocedure [dbo].[ml_suspendregisteredtaskservice]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create procedure [dbo].[ml_suspendregisteredtaskservice] 
	@task_type nvarchar(128)
As
Begin
	Update ml_registration set is_active='0' where task_type=@task_type
End
Go
/****** object:  storedprocedure [dbo].[ml_updatequeuetask]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create procedure [dbo].[ml_updatequeuetask] 
	@id nvarchar(128), @tenant_id int, @user_id nvarchar(128), @user_name nvarchar(256), @data xml, @data_version nvarchar(100), 
	@task_name nvarchar(100),@process_type nvarchar(100),
	@is_scheduled bit,@status nvarchar(200),@queued_time datetime,
	@checksum nvarchar(128),@recent_update_time datetime
As
Begin
	Update ml_queued_task set 
		Tenant_id=@tenant_id,user_id=@user_id,data=@data,data_version=@data_version, 
		Task_name=@task_name,process_type=@process_type,is_scheduled=@is_scheduled,
		Status=@status,queued_time=@queued_time,checksum=@checksum,recent_update_time=@recent_update_time,
		 Modified_by =@user_name, modified_date=@recent_update_time
	Where id=@id
End
Go
/****** object:  storedprocedure [dbo].[ml_updateregisteredtaskservice]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create procedure [dbo].[ml_updateregisteredtaskservice] 
	@id nvarchar(128), @task_type nvarchar(128),  @implementation_type nvarchar(100), @url nvarchar(1024),
	@task_version nvarchar(512), @task_object_schema xml, @task_object_type nvarchar(1024), 
	@task_processor_type nvarchar(1024), @is_active bit, @is_schedulable bit, @is_queueable bit, 
	@max_jobs int, @current_jobs int, @method_name nvarchar(1000), @wait_one_timeout int, @user_name nvarchar(256)
As
Begin
	Update ml_registration set 
		Task_type=@task_type, implementation_type=@implementation_type, url=@url,
		Task_version=@task_version, task_object_schema=@task_object_schema,
		Task_object_type=@task_object_type, task_processor_type=@task_processor_type, 
		Is_active=@is_active,	is_schedulable=@is_schedulable,	is_queueable=@is_queueable,
		Max_jobs=@max_jobs, current_jobs=@current_jobs, method_name=@method_name, 
		Wait_one_timeout=@wait_one_timeout , modified_by =@user_name, modified_date = getutcdate() 
	Where 
		Id=@id
End
Go
/****** object:  storedprocedure [dbo].[ml_updaterunningjobs]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create procedure [dbo].[ml_updaterunningjobs] 
	@task_type nvarchar (128), @current_jobs int
As
Begin
	Update ml_registration set current_jobs=current_jobs+ @current_jobs where task_type=@task_type
End
Go
/****** object:  storedprocedure [dbo].[ml_updatescheduledtask]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create procedure [dbo].[ml_updatescheduledtask] 
	@id nvarchar(128), @tenant_id int, @user_id nvarchar(128), @user_name nvarchar(256), @data xml, @data_version nvarchar(100), 
	@schedule_name nvarchar(100),@process_type nvarchar(100),
	@status nvarchar(200),
	@checksum nvarchar(128),@recent_update_time datetime,
	@frequency nvarchar(100), @scheduled_time datetime, @recent_update_by nvarchar(100)
As
Begin
	Update ml_scheduled_task set 
		Tenant_id=@tenant_id,user_id=@user_id,data=@data, data_version=@data_version, 
		Schedule_name=@schedule_name, process_type=@process_type,frequency=@frequency,scheduled_time=@scheduled_time,status=@status, checksum=@checksum,
		Recent_update_by=@recent_update_by,recent_update_time=@recent_update_time ,
		Modified_by =@user_name, modified_date =@recent_update_time
	Where id=@id
End
Go
/****** object:  storedprocedure [dbo].[test]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create proc [dbo].[test]
As


 Raiserror (N'there is a problem in execution.No value for server ping default timeout value .', -- message text.
				   10, -- severity,
				   1, -- state,
				   N'ml_1000', -- first argument.
				   5); -- second argument.
				   Return
Select 1
Go
/****** object:  storedprocedure [dbo].[usp_ml_deleteexipiredscheduledtasks]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
-- =============================================
-- author:		<author,,name>
-- create date: <create date,,>
-- description:	<description,,>
-- =============================================
Create procedure [dbo].[usp_ml_deleteexipiredscheduledtasks]
	
As


Begin
	Declare @scheduleids table
	(
		Id nvarchar(64)
	)
	 
	Insert into @scheduleids 
	
	Select id from ml_scheduled_task where id in 
	(
		 Select id
		 From   
			  Ml_scheduled_task cross apply 
			  [Data].nodes('declare namespace x="Http://www.MachineLearning.Com/ml/basetaskdata/"; //x:trigger') as trig(pref)
		   
		   
		   Where id not in(select scheduled_taskid from scheduled_queued_tasks) and   getutcdate()>dbo.Getvaliddate
			( pref.query('declare namespace x="Http://www.MachineLearning.Com/ml/basetaskdata/";//x:endboundary').value('.', 'nvarchar(max)'))    
		    
	 )
 
	 Declare @count int
	 Select @count=count(*)from @scheduleids
	 
	 If(@count>0)
	 Begin
		
		
		Delete from ml_scheduled_task where id in (select id from @scheduleids)
		
		Exec msdb.Dbo.Sp_delete_job( select 'ml_'+id from @scheduleids)
	 End
	 
End
Go
/****** object:  storedprocedure [dbo].[verifyandupdatewebtaskstatus]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
-- =============================================
-- author:		<author,,name>
-- create date: <create date,,>
-- description:	<description,,>
-- =============================================
Create procedure [dbo].[verifyandupdatewebtaskstatus]
	
As
Begin
	-- set nocount on added to prevent extra result sets from
	-- interfering with select statements.
	Set nocount on;

    -- insert statements for procedure here
	Update ml_queued_task set status='aborted',process_end_time=getutcdate() , recent_update_time=getutcdate() 
	Where status='process_started' and
	Task_name in(select ml_registration.Task_type from ml_registration where  
	Ml_queued_task.Task_name=ml_registration.Task_type and  ml_registration.Implementation_type='post' 
	And dateadd(mi,isnull(ml_registration.Wait_one_timeout,10),ml_queued_task.Process_start_time)<=getutcdate()  )


End
Go
/****** object:  trigger [dbo].[ml_completed_task_trigger]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create trigger [dbo].[ml_completed_task_trigger]
   On  [dbo].[ml_completed_task]
   After delete
As 
Begin
	
	-- if a delete occurred
	If exists(select id from deleted) and not exists(select id from inserted)
	Begin
	Insert into ml_completed_task_history
	Select * from deleted
	
	Delete from ml_execute_task where task_id in(select id from deleted)
	Delete from ml_log where task_id in(select id from deleted)
End
     
End
Go
Alter table [dbo].[ml_completed_task] enable trigger [ml_completed_task_trigger]
Go
/****** object:  trigger [dbo].[ml_execute_task_trigger]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go

Create trigger [dbo].[ml_execute_task_trigger]
   On  [dbo].[ml_execute_task]
   After delete --insert,update
As 
Begin

-- if a delete occurred
	If exists(select id from deleted) and not exists(select id from inserted)
	
	Begin
	 Insert into ml_execute_task_history select * from deleted
	End
	
	
---- if a delete occurred
--	if exists(select id from deleted) and not exists(select id from inserted)
	
--	begin
--	 insert into ml_execute_task_history select * from deleted
--	end
--	-- if an insert occurred
--	else if exists(select id from inserted) and not exists(select id from deleted)
--	begin
--	 insert into ml_execute_task_history select * from inserted
--	end

  
--	--update occurred
--	else if exists(select id from deleted) and exists(select id from inserted)
--	begin
--	 --insert into ml_execute_task_history select * from deleted
--	 insert into ml_execute_task_history select * from inserted
--	end
	
End

Go
Alter table [dbo].[ml_execute_task] enable trigger [ml_execute_task_trigger]
Go
/****** object:  trigger [dbo].[ml_log_trigger]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create trigger [dbo].[ml_log_trigger]
   On  [dbo].[ml_log]
   After delete
As 
Begin
	
	-- if a delete occurred
	If exists(select id from deleted) and not exists(select id from inserted)
	Begin
	Insert into ml_log_history
	Select * from deleted
	
	
End
     
End
Go
Alter table [dbo].[ml_log] enable trigger [ml_log_trigger]
Go
/****** object:  trigger [dbo].[ml_queued_task_trigger]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go
Create trigger [dbo].[ml_queued_task_trigger]
   On  [dbo].[ml_queued_task]
   After insert,update
As 
Begin
	Set nocount on;
	Declare @status nvarchar(100)
	Declare @process_start_time datetime
	Declare @process_end_time datetime
	Declare @recent_update_time datetime
	Declare @is_scheduled bit
	Declare @scheduler_id  nvarchar(64)
	Declare @id  nvarchar(64)
	
	Select @id=id, @is_scheduled=is_scheduled, @process_start_time=process_start_time,
	@process_end_time=process_end_time,@recent_update_time=recent_update_time, 
	@status=upper(status) from inserted
	
	
	Select @scheduler_id=null
	-- if a delete occurred
	If exists(select id from deleted) and not exists(select id from inserted)
	Begin
		Select @scheduler_id=null
	--do nothing
	End
	-- if an insert occurred
	Else if exists(select id from inserted) and not exists(select id from deleted)
	Begin
	 Insert into ml_server_queues (queue_id) values(@id)
	End
	--update occurred
	Else if exists(select id from deleted) and exists(select id from inserted)
	Begin
		If(@status in('completed','aborted','user_aborted','process_started') and @is_scheduled='1' )
		Begin
			Select @scheduler_id=scheduled_taskid from scheduled_queued_tasks where  queued_taskid=@id
		End
		
		If(@status in('queued','scheduled_queued'))
		Begin
			Delete from ml_execute_task where task_id=@id
		End
		If(@status in('completed','aborted','user_aborted'))
		
		-- if an update occurred with any of completed,aborted,user_aborted status
		
		Begin    
			Insert into ml_completed_task
				Select * from inserted
			--delete from  ml_queued_task	 & 	ml_server_queues
			Delete from ml_queued_task where id in(select id from inserted)
			Delete from ml_server_queues where queue_id in(select id from inserted)
			
		 End
	     
		If(@scheduler_id is not null)
		Begin
			If(@status like 'process_started')
			Begin
				Select @status=null
			End
			Update ml_scheduled_task set last_run_status=isnull(@status,last_run_status),
			Start_time=@process_start_time,end_time=@process_end_time,recent_update_time=@recent_update_time
			Where id=@scheduler_id
		End 
    End 
     
End
Go
Alter table [dbo].[ml_queued_task] enable trigger [ml_queued_task_trigger]
Go
/****** object:  trigger [dbo].[ml_scheduled_task_trigger]    script date: 12/31/2020 9:27:54 am ******/
Set ansi_nulls on
Go
Set quoted_identifier on
Go

Create trigger [dbo].[ml_scheduled_task_trigger]
   On  [dbo].[ml_scheduled_task]
   After delete
As 
Begin
	
	-- if a delete occurred
	If exists(select id from deleted) and not exists(select id from inserted)
	Begin
	Insert into ml_scheduled_task_history
	Select * from deleted
	End
     
End
Go
Alter table [dbo].[ml_scheduled_task] enable trigger [ml_scheduled_task_trigger]
Go
