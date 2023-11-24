unit UnitLancamentoReceita;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls;

type
  TFormLancamentoReceita = class(TForm)
    pnlSuperior: TPanel;
    spbIncluir: TSpeedButton;
    pnlFiltro: TPanel;
    pnlGrade: TPanel;
    pnlRodape: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    procedure spbIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  UnitInclusao;

procedure TFormLancamentoReceita.spbIncluirClick(Sender: TObject);
begin
  var FInclusao := TInclusao.Create(Self);
  try
    FInclusao.ShowModal();
  finally
    FInclusao.Free();
  end;
end;

end.
