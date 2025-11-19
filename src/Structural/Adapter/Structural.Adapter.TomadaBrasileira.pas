unit Structural.Adapter.TomadaBrasileira;

interface

uses
  Structural.Adapter.Tomada,
  Structural.Adapter.Plug;

  type
    TTomadaBrasileira = class(TTomada)
    public
      function Conecta(APlug: TPlug): string; override;
      function GetNomeRede: string; override;

  end;

implementation

{ TTomadaBrasileira }

function TTomadaBrasileira.Conecta(APlug: TPlug): string;
begin
  Result := APlug.ObtemEletrecidade + GetNomeRede;
end;

function TTomadaBrasileira.GetNomeRede: string;
begin
  Result := 'tomada brasileira';
end;

end.
