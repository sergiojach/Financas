program Financas;

uses
  Vcl.Forms,
  UnitFormInicial in 'UnitFormInicial.pas' {FormInicial},
  ConexaoBancoDados in 'ConexaoBancoDados.pas',
  UnitLancamentoReceita in 'View\UnitLancamentoReceita.pas' {FormLancamentoReceita},
  UnitInclusao in 'View\UnitInclusao.pas' {Inclusao},
  UnitFrameLancamentoFinanceiro in 'View\UnitFrameLancamentoFinanceiro.pas' {FrameGradeInclusao: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormInicial, FormInicial);
  Application.Run;
end.
