﻿CREATE TABLE [org].[OrgMemberContactInfo] (
    [OrgMemberContactInfoID] INT            IDENTITY (1, 1) NOT NULL,
    [OrgMemberId]            INT            NOT NULL,
    [StreetAddress]          VARCHAR (200)  NOT NULL,
    [City]                   VARCHAR (50)   NOT NULL,
    [StateId]                INT            NULL,
    [ZipCode]                VARCHAR (50)   NOT NULL,
    [PhoneNumber]            VARCHAR (50)   NOT NULL,
    [PersonalEmail]          VARCHAR (50)   NOT NULL,
    [DateOfHire]             DATETIME2 (7)  NULL,
    [Role]                   INT            NULL,
    [IncidentToSupervisor]   INT            NULL,
    [CreatedBy]              INT            CONSTRAINT [df_org_OrgMemberContactInfo_CreatedBy] DEFAULT ((0)) NOT NULL,
    [CreatedOn]              DATETIME2 (7)  CONSTRAINT [df_org_OrgMemberContactInfo_CreatedOn] DEFAULT (getutcdate()) NOT NULL,
    [CreatedIpAddress]       NVARCHAR (MAX) NULL,
    [LastModifiedBy]         INT            NULL,
    [LastModifiedOn]         DATETIME2 (7)  NULL,
    [LastModifiedIpAddress]  NVARCHAR (MAX) NULL,
    [IsActive]               BIT            CONSTRAINT [df_org_OrgMemberContactInfo_IsActive] DEFAULT ((1)) NOT NULL,
    [IsDeleted]              BIT            CONSTRAINT [df_org_OrgMemberContactInfo_IsDeleted] DEFAULT ((0)) NOT NULL,
    [DeletedBy]              INT            NULL,
    [DeletedOn]              DATETIME2 (7)  NULL,
    [DeletedIpAddress]       NVARCHAR (MAX) NULL,
    [OrgEmail]               VARCHAR (50)   DEFAULT ('') NOT NULL,
    CONSTRAINT [PK_OrgMemberContactInfo] PRIMARY KEY CLUSTERED ([OrgMemberContactInfoID] ASC),
    CONSTRAINT [FK_OrgMemberContactInfo_OrgMemberInfo_OrgMemberId] FOREIGN KEY ([OrgMemberId]) REFERENCES [org].[OrgMemberInfo] ([OrgMemberId]) ON DELETE CASCADE
);

