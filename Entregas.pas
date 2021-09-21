unit Entregas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Cadastro, Data.DB, System.ImageList,
  Vcl.ImgList, Data.Win.ADODB, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmEntregas = class(TfrmCadastro)
    btnTracar_Rota: TButton;
    SQLManutencaoENTREGA: TAutoIncField;
    SQLManutencaoNOME_CLIENTE: TStringField;
    SQLManutencaoDATA_ENTREGA: TDateTimeField;
    SQLManutencaoPONTO_PARTIDA: TStringField;
    SQLManutencaoPONTO_DESTINO: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    procedure btnTracar_RotaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEntregas: TfrmEntregas;

implementation

{$R *.dfm}

uses Mapas;

procedure TfrmEntregas.btnTracar_RotaClick(Sender: TObject);
begin
  inherited;
  frmRotas := TfrmRotas.Create(nil);
  frmRotas.edtOrigem.Text := SQLManutencaoPONTO_PARTIDA.AsString;
  frmRotas.edtDestino.Text := SQLManutencaoPONTO_DESTINO.AsString;
  frmRotas.ShowModal;
  FreeAndNil(frmRotas);
end;

end.
