CREATE TABLE [dbo].[StateProvince]
(
	[StateCode] CHAR(3) NOT NULL PRIMARY KEY, 
    [StateName] NVARCHAR(100) NULL
)
GO
Insert Into  dbo.StateProvince([StateCode], [StateName])
Values 
( 'ABI', 'ABIA'),
('ADM', 'ADAMAWA'),
('AKW', 'AKWA IBOM'),
('ANM' ,'ANAMBRA'),
('BAU','BAUCHI'),
('BAY','BAYELSA'),
('BEN ','BENUE'),
('BOR' ,'BORNO'),
('CRI' ,'CROSS RIVER'),
('DEL' ,'DELTA'),
('EBY' ,'EBONYI'),
('EDO' ,'EDO'),
('EKT','EKITI'),
('ENU' ,'ENUGU'),
('GOM', 'GOMBE'),
('IMO' ,'IMO'),
('JIG' ,'JIGAWA'),
('KAD', 'KADUNA'),
('KAN ','KANO'),
('KAT' ,'KATSINA'),
('KEB' ,'KEBBI'),
('KOG','KOGI'),
('KWA','KWARA'),
('LAG','LAGOS'),
('NAS','NASSARAWA'),
('NIG','NIGER'),
('OGU','OGUN'),
('OND','ONDO'),
('OSU','OSUN'),
('OYO' ,'OYO'),
('PLT','PLATEAU'),
('RIV','RIVERS'),
('SOK','SOKOTO'),
('TAR', 'TARABA'),
('YOB','YOBE'),
('ZAM','ZAMFARA' )