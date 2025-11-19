unit Structural.Adapter.AdapterBrasilToEUA;

interface

uses
  Structural.Adapter.TomadaAmericana,
  Structural.Adapter.Plug,
  Structural.Adapter.PlugAmericano;

  type
    TAdapterBrasilToEUA = class(TTomadaAmericana)
  public
    function Conecta(APlug: TPlug): string; override;
  end;

implementation

{ TAdapterBrasilToEUA }

function TAdapterBrasilToEUA.Conecta(APlug: TPlug): string;
begin
  // Se for um plug americano, "adapta" para a rede brasileira
  if APlug is TPlugAmericano then
    Result := TPlugAmericano(APlug).ObtemEletrecidade + GetNomeRede
  else
    Result := inherited Conecta(APlug);
end;

end.
