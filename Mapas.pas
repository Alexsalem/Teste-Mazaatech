unit Mapas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, SHDocVw, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TfrmRotas = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtOrigem: TEdit;
    edtDestino: TEdit;
    btnTrajeto: TButton;
    wbMapa: TWebBrowser;
    procedure btnTrajetoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private

    procedure MontarMapa(AOrigem, Adestino:string);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRotas: TfrmRotas;

implementation

{$R *.dfm}

{ TfrmRotas }

procedure TfrmRotas.btnTrajetoClick(Sender: TObject);
begin
  MontarMapa(edtOrigem.Text,edtDestino.Text);
  wbMapa.Navigate('file://' + ExtractFilePath(Application.ExeName) + 'Mapa.html');;
end;

procedure TfrmRotas.FormActivate(Sender: TObject);
begin
  btnTrajetoClick(Sender);
end;

procedure TfrmRotas.MontarMapa(AOrigem, Adestino: string);
var slXSL:TStringList;
    Key: string;
begin
  if FileExists(ExtractFilePath(Application.ExeName)+'Mapa.html') then
    DeleteFile(ExtractFilePath(Application.ExeName)+'Mapa.html');

  key := 'ABQIAAAALi1YYAioizP-JR6n3o7OMRQiyMoscvuT0eTAWvcsKO5wYPZiExQMPxbJlvsjqSvYBXk1Ep2PSR-xQg';

 try
     slXSL := TStringList.Create;
     slXSL.Add('<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dt">');
     slXSL.Add('<html xmlns="http://www.w3.org/1999/xhtm">');
     slXSL.Add('<head>');
     //slXSL.Add('<meta http-equiv='Content-Type' content='text/html; charset=iso-8859-1' />');
     slXSL.Add('<title>Rota</title>');
     slXSL.Add('<script src="http://maps.google.com/maps?file=api&amp;v=2&amp;key="' + QuotedStr(Key) + '"type=text/javascript"></script>');
     slXSL.Add('<script src="http://maps.google.com/maps?file=api&amp;v=2" type="text/javascript"></script>');
     slXSL.Add('<script type="text/javascript">');
     slXSL.Add('        //cria variáveis globais a serem usadas');
     slXSL.Add('        var map;');
     slXSL.Add('        var directionsPanel;');
     slXSL.Add('        var directions;');
     slXSL.Add('  var origem;');
     slXSL.Add('        var destino;');
     slXSL.Add('        //cria mapa quando página carregar');
     slXSL.Add(' window.onload = function() {');
     slXSL.Add('             //define que o mapa será desenhado dentro do elemento  ''mapa''');
     slXSL.Add('     map = new GMap2(document.getElementById("map"), { size: new GSize(710,480) })');
     slXSL.Add('            //insere o controle que possibilita usuário aumentar/diminuir zoom');
     slXSL.Add('     map.addControl(new GLargeMapControl());');
     slXSL.Add('            //usando as coordenadas de latitude e longitude para São Paulo/SP');
     slXSL.Add('   map.setCenter(new GLatLng(-23.547779, -46.639366), 12);');
     slXSL.Add('   directionsPanel = document.getElementById("route");');
     slXSL.Add('   origem  = ' + QuotedStr(AOrigem)+  ';' );
     slXSL.Add('   destino = ' + QuotedStr(ADestino)+ ';' );
     slXSL.Add('   directions = new GDirections(map, directionsPanel);');
     slXSL.Add('              //efetua a busca, quando usuário clicar no botão');
     slXSL.Add('         var fromAddress = origem;');
     slXSL.Add('         var toAddress = destino;');
     slXSL.Add('         directions.load(fromAddress + " to " + toAddress, {"locale:"pt_BR"});');
     slXSL.Add('   }');
     slXSL.Add('</script>');
     slXSL.Add('<style type="text/css">');
     slXSL.Add('        * {');
     slXSL.Add('      margin:0;');
     slXSL.Add('      padding:0;');
     slXSL.Add('      border:0;');
     slXSL.Add('      font-family:Verdana, Arial, Helvetica, sans-serif;');
     slXSL.Add('      font-size:12px;');
     slXSL.Add('  }');
     slXSL.Add('body {');
     slXSL.Add('    width:780px;');
     slXSL.Add('    position:absolute;');
     slXSL.Add('    left:50%;');
     slXSL.Add('    margin-left:-390px;');
     slXSL.Add('    margin-top:20px;');
     slXSL.Add('}');
     slXSL.Add('input {');
     slXSL.Add('    border:1px solid #666666;');
     slXSL.Add('    width:300px;');
     slXSL.Add('}');
     slXSL.Add('form {');
     slXSL.Add('    margin-top:20px;');
     slXSL.Add('}');
     slXSL.Add('form fieldset {');
     slXSL.Add('    padding:10px;');
     slXSL.Add('}');
     slXSL.Add('</style>');
     slXSL.Add('</head>');
     slXSL.Add('<body>');
     slXSL.Add('<div id="map"></div>');
     slXSL.Add('<form action="#" method="POST">');
     slXSL.Add('</form>     ');
     slXSL.Add('<div id="route"></div>');
     slXSL.Add('</body>');
     slXSL.Add('</html>');
     slXSL.SaveToFile(ExtractFilePath(Application.ExeName) + 'Mapa.html');
 finally
    FreeAndNil(slXSL);
 end;

end;

end.
