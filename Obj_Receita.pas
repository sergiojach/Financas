unit Obj_Receita;

interface

uses
  System.SysUtils;

type
  TReceita = class

    private
    FCodReceita: Integer;
    FDescricaoReceita: string;
    FDataInclusao : TDate;
    FDataVencimento: TDate;
    FPercentualJuros: Extended;
    FPercentualMulta: Extended;
    FValor: Extended;
    FCodGrupoFinanceiro: Integer;

    public

    property CodReceita: Integer read FCodReceita write FCodReceita;
    property DescricaoReceita: string read FDescricaoReceita write FDescricaoReceita;
    property DataInclusao: TDate read FDataInclusao write FDataInclusao;
    property DataVencimento: TDate read FDataVencimento write FDataVencimento;
    property PercentualJuros: Extended read FPercentualJuros write FPercentualJuros;
    property PercentualMulta: Extended read FPercentualMulta write FPercentualMulta;
    property Valor: Extended read FValor write FValor;
    property CodGrupoFinanceiro: Integer read FCodGrupoFinanceiro write FCodGrupoFinanceiro;

  end;

implementation

end.
