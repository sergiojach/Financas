object Inclusao: TInclusao
  Left = 0
  Top = 0
  Caption = 'Inclusao'
  ClientHeight = 562
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnCreate = FormCreate
  TextHeight = 15
  object pnlSuperior: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 97
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 904
    object spbSalvar: TSpeedButton
      Left = 16
      Top = 18
      Width = 137
      Height = 73
      Caption = 'Salvar'
    end
  end
  object pnlCentro: TPanel
    Left = 0
    Top = 97
    Width = 800
    Height = 465
    Align = alClient
    TabOrder = 1
    ExplicitTop = 95
    object spbIncluir: TSpeedButton
      Left = 711
      Top = 192
      Width = 81
      Height = 22
      Caption = 'Incluir'
    end
    object lblCodigo: TLabel
      Left = 8
      Top = 27
      Width = 39
      Height = 15
      Caption = 'Codigo'
    end
    object lblDescricao: TLabel
      Left = 104
      Top = 27
      Width = 51
      Height = 15
      Caption = 'Descricao'
    end
    object lblCodGrupo: TLabel
      Left = 480
      Top = 27
      Width = 33
      Height = 15
      Caption = 'Grupo'
    end
    object Label1: TLabel
      Left = 559
      Top = 27
      Width = 87
      Height = 15
      Caption = 'Descricao Grupo'
    end
    object lblJuros: TLabel
      Left = 8
      Top = 90
      Width = 40
      Height = 15
      Caption = '% Juros'
    end
    object lblMulta: TLabel
      Left = 136
      Top = 90
      Width = 60
      Height = 15
      Caption = 'Valor Multa'
    end
    object lblDataVencimento: TLabel
      Left = 312
      Top = 90
      Width = 90
      Height = 15
      Caption = 'Data Vencimento'
    end
    object lblParcelas: TLabel
      Left = 480
      Top = 90
      Width = 51
      Height = 15
      Caption = 'Parcela(s)'
    end
    object lblValor: TLabel
      Left = 623
      Top = 90
      Width = 26
      Height = 15
      Caption = 'Valor'
    end
    object edtCodReceita: TEdit
      Left = 8
      Top = 48
      Width = 73
      Height = 23
      CanUndoSelText = True
      TabOrder = 0
      Text = '1'
    end
    object edtDescricao: TEdit
      Left = 104
      Top = 48
      Width = 345
      Height = 23
      TabOrder = 1
      Text = 'Compra Geladeira'
    end
    object edtCodGrupoReceita: TEdit
      Left = 480
      Top = 48
      Width = 73
      Height = 23
      TabOrder = 2
      Text = '10'
    end
    object edtDescricaoGrupoReceita: TEdit
      Left = 559
      Top = 48
      Width = 233
      Height = 23
      TabOrder = 3
      Text = 'Casa'
    end
    object pnlRodape: TPanel
      Left = 1
      Top = 416
      Width = 798
      Height = 48
      Align = alBottom
      TabOrder = 4
    end
    object pnlGrid: TPanel
      Left = 1
      Top = 220
      Width = 798
      Height = 196
      Align = alBottom
      TabOrder = 5
    end
  end
  object edtMulta: TEdit
    Left = 136
    Top = 208
    Width = 129
    Height = 23
    TabOrder = 2
    Text = 'Edit1'
  end
  object edtJuros: TEdit
    Left = 8
    Top = 208
    Width = 97
    Height = 23
    TabOrder = 3
    Text = '10'
  end
  object edtDataVencimento: TEdit
    Left = 312
    Top = 208
    Width = 137
    Height = 23
    TabOrder = 4
    Text = '10/10/2023'
  end
  object edtValor: TEdit
    Left = 623
    Top = 208
    Width = 169
    Height = 23
    TabOrder = 5
    Text = 'Valor R$'
  end
  object edtQuantidadeParcela: TEdit
    Left = 480
    Top = 208
    Width = 73
    Height = 23
    TabOrder = 6
    Text = '1'
  end
end
