program Projeto_Unicad;

uses
  Vcl.Forms,
  Mapas in 'Mapas.pas' {frmRotas},
  Cadastro in 'Cadastro.pas' {frmCadastro},
  DataModule in 'DataModule.pas' {DM1: TDataModule},
  Menu in 'Menu.pas' {frmMenu},
  Entregas in 'Entregas.pas' {frmEntregas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM1, DM1);
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.Run;
end.
