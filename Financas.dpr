program Financas;

uses
  Vcl.Forms,
  UnitFormInicial in 'UnitFormInicial.pas' {FormInicial},
  ConexaoBancoDados in 'ConexaoBancoDados.pas',
  UnitLancamentoReceita in 'View\UnitLancamentoReceita.pas' {FormLancamentoReceita},
  UnitInclusao in 'View\UnitInclusao.pas' {Inclusao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormInicial, FormInicial);
  Application.Run;
end.
