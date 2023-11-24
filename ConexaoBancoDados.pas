unit ConexaoBancoDados;

interface

uses
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.PG,
  FireDAC.Phys.PGDef,
  FireDAC.VCLUI.Wait,
  Data.DB,
  FireDAC.Comp.Client;

  type
    TConexaoBancoDados = class

    private
      class var FConection: TFDConnection;
    public
      class function Conectar(Const Usuario, Senha, Servidor, BancoDados: string; Const Porta: Integer): Boolean;
      class function CriarQuery: TFDQuery;
    end;
implementation

{ TConexaoBancoDados }

uses
  System.SysUtils;

class function TConexaoBancoDados.Conectar(const Usuario, Senha, Servidor, BancoDados: string; const Porta: Integer): Boolean;
begin
  if Assigned(FConection) then
    Exit(True);

  FConection := TFDConnection.Create(nil);

  FConection.DriverName := 'PG';
  FConection.Params.Database := BancoDados;
  FConection.Params.UserName := Usuario;
  FConection.Params.Password := Senha;
  FConection.Params.Add('Server=' + Servidor);
  FConection.Params.Add('Port=' + IntToStr(Porta));

  FConection.Connected := True;

  Result := FConection.Connected;

end;

class function TConexaoBancoDados.CriarQuery: TFDQuery;
begin
  Result := TFDQuery.Create(FConection);
  Result.Connection := FConection;
end;

end.
