unit unitReceita;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons,unitReceitaInclusao,
  Vcl.Grids,ReceitaDAO,FireDAC.Comp.Client;

type
  TFormReceita = class(TForm)
    pnSuperior: TPanel;
    spBotaoIncluir: TSpeedButton;
    pnSuperiorPesquisa: TPanel;
    pnCentral: TPanel;
    sgReceitas: TStringGrid;
    SpeedButton1: TSpeedButton;
    procedure spBotaoIncluirClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sgReceitasDblClick(Sender: TObject);
  private
    { Private declarations }
    ReceitaDAO :  TReceitaDAO;
    FFormInclusaoReceita : TFormInclusaoReceita;

    procedure PopularGrid(sgReceitas: TStringGrid);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

var
  FormReceita: TFormReceita;

implementation

{$R *.dfm}

{ TFormReceita }

constructor TFormReceita.Create(AOwner: TComponent);
begin
  inherited;
  FFormInclusaoReceita := TFormInclusaoReceita.Create(Self);
  ReceitaDAO := TReceitaDAO.Create();
end;

destructor TFormReceita.Destroy;
begin
  FFormInclusaoReceita.Free;
  ReceitaDAO.Free;
  inherited;
end;

procedure TFormReceita.FormCreate(Sender: TObject);
begin
  sgReceitas.ColWidths[0] := 90;
  sgReceitas.ColWidths[1] := 250;
  sgReceitas.ColWidths[2] := 130;
  sgReceitas.ColWidths[3] := 130;
  sgReceitas.ColWidths[4] := 80;
  sgReceitas.ColWidths[5] := 80;
  sgReceitas.ColWidths[6] := 100;

  sgReceitas.Cells[0, 0] := 'CÓDIGO';
  sgReceitas.Cells[1, 0] := 'DESCRIÇÃO';
  sgReceitas.Cells[2, 0] := 'DATA INCLUSÃO';
  sgReceitas.Cells[3, 0] := 'DATA VENCIMENTO';
  sgReceitas.Cells[4, 0] := '% JUROS';
  sgReceitas.Cells[5, 0] := '% MULTA';
  sgReceitas.Cells[6, 0] := '% VALOR';

end;

procedure TFormReceita.sgReceitasDblClick(Sender: TObject);
begin

  if (sgReceitas.Row > 0) and (sgReceitas.Row < sgReceitas.RowCount) then
  begin
    FFormInclusaoReceita.edtCodReceita.Text := sgReceitas.Cells[0,sgReceitas.Row];
    FFormInclusaoReceita.edtDescricaoReceita.Text := sgReceitas.Cells[1,sgReceitas.Row];
  end;

  FFormInclusaoReceita.ShowModal;

end;

procedure TFormReceita.spBotaoIncluirClick(Sender: TObject);
begin
  FFormInclusaoReceita.ShowModal;
end;

procedure TFormReceita.SpeedButton1Click(Sender: TObject);
begin
  PopularGrid(sgReceitas);
end;

procedure TFormReceita.PopularGrid(sgReceitas: TStringGrid);
var
  Query : TFDQuery;
  Row, Col: Integer;
begin

  Query := ReceitaDAO.ConsultarReceita();
  sgReceitas.RowCount := Query.RecordCount + 1;

  //for Col := 0 to Query.FieldCount - 1 do
   // sgReceitas.Cells[Col, 0] := Query.Fields[Col].FieldName;

  Row := 1;

  while not Query.Eof do
  begin
    for Col := 0 to Query.FieldCount - 1 do
      sgReceitas.Cells[Col, Row] := Query.Fields[Col].AsString;
      Inc(Row);
      Query.Next;
  end;

end;

end.
