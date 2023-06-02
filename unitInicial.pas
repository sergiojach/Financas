unit unitInicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.StdCtrls, unitReceita, ConexoBancoDados;

type
  TFormInicial = class(TForm)
    pnSuperior: TPanel;
    spBotaoDespesa: TSpeedButton;
    pnCentral: TPanel;
    spBotaoReceita: TSpeedButton;
    procedure spBotaoReceitaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FFormReceita: TFormReceita;
  public
    { Public declarations }

    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

var
  FormInicial: TFormInicial;

implementation

{$R *.dfm}

{ TFormInicial }

constructor TFormInicial.Create(AOwner: TComponent);
begin
  inherited;
  FFormReceita := TFormReceita.Create(Self);
end;

destructor TFormInicial.Destroy;
begin
  FFormReceita.Free;
  inherited;
end;

procedure TFormInicial.FormCreate(Sender: TObject);
begin
  TConexaoBancoDados.Conectar('postgres','123456','localhost','Financas',5432);
end;

procedure TFormInicial.spBotaoReceitaClick(Sender: TObject);
begin
  FFormReceita.ShowModal;
end;

end.
