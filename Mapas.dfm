object frmRotas: TfrmRotas
  Left = 0
  Top = 0
  Caption = 'Mapa - Rotas'
  ClientHeight = 414
  ClientWidth = 676
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 676
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 447
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 34
      Height = 13
      Caption = 'Origem'
    end
    object Label2: TLabel
      Left = 295
      Top = 16
      Width = 36
      Height = 13
      Caption = 'Destino'
    end
    object edtOrigem: TEdit
      Left = 56
      Top = 16
      Width = 233
      Height = 21
      TabOrder = 0
      Text = 'edtOrigem'
    end
    object edtDestino: TEdit
      Left = 337
      Top = 13
      Width = 233
      Height = 21
      TabOrder = 1
      Text = 'edtDestino'
    end
    object btnTrajeto: TButton
      Left = 576
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Tra'#231'ar Rota'
      TabOrder = 2
      OnClick = btnTrajetoClick
    end
  end
  object wbMapa: TWebBrowser
    Left = 0
    Top = 57
    Width = 676
    Height = 357
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 288
    ExplicitTop = 96
    ExplicitWidth = 300
    ExplicitHeight = 150
    ControlData = {
      4C000000DE450000E62400000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
end
