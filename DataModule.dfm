object DM1: TDM1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 179
  Width = 215
  object Ado_Conn1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=TESTE_UNICAD;Data Source=DESKTOP-3TJR38' +
      '4\SQLEXPRESS;Use Procedure for Prepare=1;Auto Translate=True;Pac' +
      'ket Size=4096;Workstation ID=DESKTOP-3TJR384;Use Encryption for ' +
      'Data=False;Tag with column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 84
    Top = 60
  end
end
