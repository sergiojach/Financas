unit UnitFormInicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFormInicial = class(TForm)
    pnlPrincipalSuperior: TPanel;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  var
    FormInicial: TFormInicial;

implementation

{$R *.dfm}

uses
  UnitLancamentoReceita;

procedure TFormInicial.SpeedButton1Click(Sender: TObject);
begin
  var TelaLancamentoReceita := TFormLancamentoReceita.Create(Self);
  try
    TelaLancamentoReceita.ShowModal;
  finally
    TelaLancamentoReceita.Free();
  end;
end;

end.
