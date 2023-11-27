unit UnitInclusao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Grids, Vcl.StdCtrls, Vcl.Buttons, UnitFrameLancamentoFinanceiro;

type
  TInclusao = class(TForm)
    pnlSuperior: TPanel;
    spbSalvar: TSpeedButton;
    pnlCentro: TPanel;
    edtCodReceita: TEdit;
    edtDescricao: TEdit;
    edtCodGrupoReceita: TEdit;
    edtDescricaoGrupoReceita: TEdit;
    edtMulta: TEdit;
    edtJuros: TEdit;
    edtDataVencimento: TEdit;
    edtValor: TEdit;
    spbIncluir: TSpeedButton;
    edtQuantidadeParcela: TEdit;
    lblCodigo: TLabel;
    lblDescricao: TLabel;
    lblCodGrupo: TLabel;
    Label1: TLabel;
    pnlRodape: TPanel;
    pnlGrid: TPanel;
    lblJuros: TLabel;
    lblMulta: TLabel;
    lblDataVencimento: TLabel;
    lblParcelas: TLabel;
    lblValor: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FGradeInclusao: TFrameGradeInclusao;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TInclusao.FormCreate(Sender: TObject);
begin
  FGradeInclusao := TFrameGradeInclusao.Create(Self);
  FGradeInclusao.Parent := pnlGrid;
  FGradeInclusao.Align := alClient;
  FGradeInclusao.MontaCabecalho();
  FGradeInclusao.Show;
end;

end.
