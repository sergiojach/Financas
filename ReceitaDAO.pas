unit ReceitaDAO;

interface

uses
  FireDAC.DApt, FireDAC.Comp.DataSet,FireDAC.Comp.Client, ConexoBancoDados, Obj_Receita;

type
  TReceitaDAO = class

  private

  public
    procedure SalvarReceita(ObjetoReceita : TReceita);
    function CarregaCodigo: Integer;

  end;

implementation


{ TReceitaDAO }

procedure TReceitaDAO.SalvarReceita(ObjetoReceita: TReceita);
var
  Query : TFDQuery;
begin

  Query := TConexaoBancoDados.CriarQuery();

  Query.SQL.Text := 'INSERT INTO Receita VALUES ('  + sLineBreak +
                    ' :CodReceita,               '  + sLineBreak +
                    ' :DescricaoReceita,         '  + sLineBreak +
                    ' :DataInclusao,             '  + sLineBreak +
                    ' :DataVencimento,           '  + sLineBreak +
                    ' :PercentualJuros,          '  + sLineBreak +
                    ' :PercentualMulta,         '  + sLineBreak +
                    ' :Valor,                    '  + sLineBreak +
                    ' :CodGrupoFinaceiro        )' ;
  Query.ParamByName('CodReceita').AsInteger := ObjetoReceita.CodReceita;
  Query.ParamByName('DescricaoReceita').AsString := ObjetoReceita.DescricaoReceita;
  Query.ParamByName('DataInclusao').AsDate := ObjetoReceita.DataInclusao;
  Query.ParamByName('DataVencimento').AsDate := ObjetoReceita.DataVencimento;
  Query.ParamByName('PercentualJuros').AsExtended := ObjetoReceita.PercentualJuros;
  Query.ParamByName('PercentualMulta').AsExtended := ObjetoReceita.PercentualMulta;
  Query.ParamByName('Valor').AsExtended := ObjetoReceita.Valor;
  Query.ParamByName('CodGrupoFinaceiro').AsInteger := ObjetoReceita.CodGrupoFinanceiro;

  Query.ExecSQL();

end;

function TReceitaDAO.CarregaCodigo(): Integer;
var
  Query : TFDQuery;
begin

  Query := TConexaoBancoDados.CriarQuery();
  Query.SQL.Text := 'SELECT (MAX(CodReceita) + 1) As CodigoAtualizado FROM Receita';
  Query.Open();

  Query.FieldByName('CodigoAtualizado').AsInteger;

  Result := Query.FieldByName('CodigoAtualizado').AsInteger;

end;

end.
