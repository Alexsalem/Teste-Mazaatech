object frmMenu: TfrmMenu
  Left = 322
  Top = 158
  BorderStyle = bsSingle
  Caption = 'Menu Principal'
  ClientHeight = 496
  ClientWidth = 777
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object mm1: TMainMenu
    Left = 576
    Top = 210
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Entregas2: TMenuItem
        Caption = 'Entregas'
        OnClick = Entregas2Click
      end
      object Entregas1: TMenuItem
        Caption = 'Lista Entregas'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = 'Sair'
        OnClick = Sair1Click
      end
    end
  end
end
