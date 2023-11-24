object FormInicial: TFormInicial
  Left = 0
  Top = 0
  Caption = 'FormInicial'
  ClientHeight = 653
  ClientWidth = 983
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  TextHeight = 15
  object pnlPrincipalSuperior: TPanel
    Left = 0
    Top = 0
    Width = 983
    Height = 129
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 977
    object SpeedButton1: TSpeedButton
      Left = 16
      Top = 16
      Width = 127
      Height = 97
      Caption = 'Incluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -22
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton1Click
    end
  end
end
