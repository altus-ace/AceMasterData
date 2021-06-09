CREATE TABLE [dbo].[productT] (
    [PRODUCTID]                        VARCHAR (50)   NULL,
    [PRODUCTNDC]                       VARCHAR (50)   NULL,
    [PRODUCTTYPENAME]                  VARCHAR (50)   NULL,
    [PROPRIETARYNAME]                  VARCHAR (400)  NULL,
    [PROPRIETARYNAMESUFFIX]            VARCHAR (150)  NULL,
    [NONPROPRIETARYNAME]               VARCHAR (600)  NULL,
    [DOSAGEFORMNAME]                   VARCHAR (50)   NULL,
    [ROUTENAME]                        VARCHAR (50)   NULL,
    [STARTMARKETINGDATE]               VARCHAR (50)   NULL,
    [ENDMARKETINGDATE]                 VARCHAR (50)   NULL,
    [MARKETINGCATEGORYNAME]            VARCHAR (50)   NULL,
    [APPLICATIONNUMBER]                VARCHAR (50)   NULL,
    [LABELERNAME]                      VARCHAR (200)  NULL,
    [SUBSTANCENAME]                    VARCHAR (5000) NULL,
    [ACTIVE_NUMERATOR_STRENGTH]        VARCHAR (1000) NULL,
    [ACTIVE_INGRED_UNIT]               VARCHAR (2500) NULL,
    [PHARM_CLASSES]                    VARCHAR (5000) NULL,
    [DEASCHEDULE]                      VARCHAR (50)   NULL,
    [NDC_EXCLUDE_FLAG]                 VARCHAR (50)   NULL,
    [LISTING_RECORD_CERTIFIED_THROUGH] VARCHAR (50)   NULL
);

