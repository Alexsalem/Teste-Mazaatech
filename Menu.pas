unit Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TfrmMenu = class(TForm)
    mm1: TMainMenu;
    Cadastro1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Entregas1: TMenuItem;
    Entregas2: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Entregas2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation







{$R *.dfm}

uses Entregas;


procedure TfrmMenu.Sair1Click(Sender: TObject);
begin
  if Application.MessageBox('Deseja abandonar o sistema?','Sair', MB_YESNO + MB_ICONQUESTION)=IdYes then
    Application.Terminate
  else
    Abort;


end;

procedure TfrmMenu.Entregas2Click(Sender: TObject);
begin
  frmEntregas := TfrmEntregas.Create(Nil);
  frmEntrega.ShowModal;
  FreeAndNil(frmEntregas);
end;

procedure TfrmMenu.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  Sair1Click(Sender);  
end;

end.
