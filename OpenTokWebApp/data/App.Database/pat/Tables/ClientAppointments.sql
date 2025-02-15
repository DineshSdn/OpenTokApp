﻿CREATE TABLE [pat].[ClientAppointments] (
    [AppointmentId]          INT             IDENTITY (1, 1) NOT NULL,
    [ClientId]               INT             NULL,
    [StartDate]              DATETIME2 (7)   NULL,
    [StartTime]              DATETIME2 (7)   NULL,
    [LocationID]             INT             NOT NULL,
    [AppointmentTypeId]      INT             NULL,
    [OrgMemberId]            INT             NULL,
    [Notes]                  VARCHAR (200)   NULL,
    [CreatedBy]              INT             CONSTRAINT [df_org_ClientAppointments_CreatedBy] DEFAULT ((0)) NOT NULL,
    [CreatedOn]              DATETIME2 (7)   CONSTRAINT [df_org_ClientAppointments_CreatedOn] DEFAULT (getutcdate()) NOT NULL,
    [CreatedIpAddress]       NVARCHAR (MAX)  NULL,
    [LastModifiedBy]         INT             NULL,
    [LastModifiedOn]         DATETIME2 (7)   NULL,
    [LastModifiedIpAddress]  NVARCHAR (MAX)  NULL,
    [IsActive]               BIT             CONSTRAINT [df_org_ClientAppointments_IsActive] DEFAULT ((1)) NOT NULL,
    [IsDeleted]              BIT             CONSTRAINT [df_org_ClientAppointments_IsDeleted] DEFAULT ((0)) NOT NULL,
    [DeletedBy]              INT             NULL,
    [DeletedOn]              DATETIME2 (7)   NULL,
    [DeletedIpAddress]       NVARCHAR (MAX)  NULL,
    [ColorID]                INT             NULL,
    [StatusId]               INT             NULL,
    [EndTime]                DATETIME2 (7)   NULL,
    [Fees]                   DECIMAL (18, 2) NULL,
    [isNonPatient]           BIT             NULL,
    [ChooseRoom]             NVARCHAR (MAX)  NULL,
    [ModifierId]             NVARCHAR (MAX)  NULL,
    [OrganizationId]         INT             DEFAULT ((0)) NOT NULL,
    [RecurringAppointmentId] INT             NULL,
    [isRecurring]            BIT             NULL,
    [ServiceUnit]            VARCHAR (200)   NULL,
    [isSentReminderMail]     BIT             DEFAULT (CONVERT([bit],(0))) NOT NULL,
    [isSentSMS]              BIT             DEFAULT (CONVERT([bit],(0))) NOT NULL,
    [isPrimeToBill]          BIT             DEFAULT (CONVERT([bit],(0))) NOT NULL,
    [isPaynow]               BIT             NULL,
    [ClaimsCPTId]            INT             NULL,
    [isCheckIn]              BIT             NULL,
    [CheckInTime]            DATETIME2 (7)   NULL,
    [CheckOutTime]           DATETIME2 (7)   NULL,
    [isResendLink]           BIT             NULL,
    [GroupId]                INT             DEFAULT (NULL) NULL,
    [IsGroupAppointment]     BIT             DEFAULT (NULL) NULL,
    [IsReschedule]           BIT             DEFAULT (NULL) NULL,
    CONSTRAINT [PK_ClientAppointments] PRIMARY KEY CLUSTERED ([AppointmentId] ASC)
);

