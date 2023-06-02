unit unitReceitaInclusao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, System.DateUtils,
  Vcl.StdCtrls, Obj_Receita,ReceitaDAO, Vcl.ComCtrls;

type
  TFormInclusaoReceita = class(TForm)
    pnSuperior: TPanel;
    spBotaoIncluir: TSpeedButton;
    pnCentral: TPanel;
    edtCodReceita: TEdit;
    edtDescricaoReceita: TEdit;
    edtCodGrupoFinanceiro: TEdit;
    edtPercentualJuro: TEdit;
    edtPercentualMulta: TEdit;
    edtValor: TEdit;
    lbCodReceita: TLabel;
    lbDescricaoReceita: TLabel;
    lbDataVencimento: TLabel;
    lbCodGrupoFinanceiro: TLabel;
    lbPercentualJuro: TLabel;
    lbPercentualMulta: TLabel;
    lbValor: TLabel;
    DtDataVencimento: TDateTimePicker;
    procedure spBotaoIncluirClick(Sender: TObject);
  private
    { Private declarations }
    ObjetoReceita: TReceita;
    ReceitaDAO :  TReceitaDAO;
    procedure AbasteceObjeto;
    procedure LimparCampos;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy;
  end;

var
  FormInclusaoReceita: TFormInclusaoReceita;

implementation

{$R *.dfm}

constructor TFormInclusaoReceita.Create(AOwner: TComponent);
begin
  inherited;

  ObjetoReceita := TReceita.Create();
  ReceitaDAO := TReceitaDAO.Create();
end;

destructor TFormInclusaoReceita.Destroy;
begin
  ObjetoReceita.Free;
  ReceitaDAO.Free;
end;

procedure TFormInclusaoReceita.spBotaoIncluirClick(Sender: TObject);
var
  Codigo: Integer;
begin
  Codigo := ReceitaDAO.CarregaCodigo();

  ShowMessage(IntToStr(Codigo));
  AbasteceObjeto();
  ReceitaDAO.SalvarReceita(ObjetoReceita);
  LimparCampos;

end;

procedure TFormInclusaoReceita.AbasteceObjeto();
begin

  ObjetoReceita.CodReceita := ReceitaDAO.CarregaCodigo();
  ObjetoReceita.DescricaoReceita := edtDescricaoReceita.Text;
  ObjetoReceita.DataInclusao := Date();
  ObjetoReceita.DataVencimento := DtDataVencimento.Date;
  ObjetoReceita.PercentualJuros := StrToFloat(edtPercentualJuro.Text);
  ObjetoReceita.PercentualMulta := StrToFloat(edtPercentualMulta.Text);
  ObjetoReceita.Valor := StrToFloat(edtValor.Text);
  ObjetoReceita.CodGrupoFinanceiro := StrToInt(edtCodGrupoFinanceiro.Text);
end;


procedure TFormInclusaoReceita.LimparCampos;
begin

  edtDescricaoReceita.Text := '';
  edtCodGrupoFinanceiro.Text := '';
  edtPercentualJuro.Text := '';
  edtPercentualMulta.Text := '';
  edtValor.Text := '';
  DtDataVencimento.Date := Now;

end;


end.
