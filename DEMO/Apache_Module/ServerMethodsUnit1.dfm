object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 259
  Width = 261
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 48
    Top = 67
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 104
    Top = 67
  end
  object FDStanStorageJSONLink1: TFDStanStorageJSONLink
    Left = 76
    Top = 67
  end
  object FDConnectionEMPLOYEE: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'Database=..\EMPLOYEE.FDB'
      'User_Name=sysdba'
      'password=masterkey')
    UpdateOptions.AssignedValues = [uvCountUpdatedRecords, uvFetchGeneratorsPoint]
    UpdateOptions.CountUpdatedRecords = False
    ConnectedStoredUsage = []
    LoginPrompt = False
    BeforeConnect = FDConnectionEMPLOYEEBeforeConnect
    Left = 60
    Top = 21
  end
  object RESTPoolerDB: TRESTPoolerDB
    Database = FDConnectionEMPLOYEE
    Compression = True
    Encoding = esUtf8
    Left = 88
    Top = 21
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 132
    Top = 67
  end
end