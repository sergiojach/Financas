program Financas;

uses
  Vcl.Forms,
  unitInicial in 'unitInicial.pas' {FormInicial},
  unitReceita in 'unitReceita.pas' {FormReceita},
  unitReceitaInclusao in 'unitReceitaInclusao.pas' {FormInclusaoReceita},
  Obj_Receita in 'Obj_Receita.pas',
  ReceitaDAO in 'ReceitaDAO.pas',
  ConexoBancoDados in 'ConexoBancoDados.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormInicial, FormInicial);
  Application.CreateForm(TFormReceita, FormReceita);
  Application.CreateForm(TFormInclusaoReceita, FormInclusaoReceita);
  Application.Run;
end.
