object FormLancamentoReceita: TFormLancamentoReceita
  Left = 0
  Top = 0
  Caption = 'FormLancamentoReceita'
  ClientHeight = 626
  ClientWidth = 1039
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDefault
  TextHeight = 15
  object pnlSuperior: TPanel
    Left = 0
    Top = 0
    Width = 1039
    Height = 113
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1033
    object spbIncluir: TSpeedButton
      Left = 24
      Top = 16
      Width = 105
      Height = 81
      Caption = '&Incluir'
      OnClick = spbIncluirClick
    end
  end
  object pnlFiltro: TPanel
    Left = 0
    Top = 113
    Width = 1039
    Height = 88
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 1033
    object Edit1: TEdit
      Left = 120
      Top = 24
      Width = 177
      Height = 23
      TabOrder = 0
      Text = 'Edit1'
    end
  end
  object pnlGrade: TPanel
    Left = 0
    Top = 201
    Width = 1039
    Height = 359
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 1033
    ExplicitHeight = 350
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 560
    Width = 1039
    Height = 66
    Align = alBottom
    TabOrder = 3
    ExplicitTop = 551
    ExplicitWidth = 1033
    object Label1: TLabel
      Left = 408
      Top = 16
      Width = 30
      Height = 15
      Caption = 'Totais'
    end
  end
end
