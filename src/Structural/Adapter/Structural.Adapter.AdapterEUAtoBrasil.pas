unit Structural.Adapter.AdapterEUAtoBrasil;

interface

uses
  Structural.Adapter.TomadaBrasileira,
  Structural.Adapter.Plug,
  Structural.Adapter.PlugAmericano;

  type
    // Adapter: permite ligar um plug americano em uma tomada "vista" como brasileira
    TAdapterEuaToBrasil = class(TTomadaBrasileira)
      public
        function Conecta(APlug: TPlug): string; override;
    end;

implementation

{ TAdapterEuaToBrasil }

function TAdapterEuaToBrasil.Conecta(APlug: TPlug): string;
begin
  // Se for um plug americano, "adapta" para a rede brasileira
  if APlug is TPlugAmericano then
    Result := TPlugAmericano(APlug).ObtemEletrecidade + GetNomeRede
  else
    Result := inherited Conecta(APlug);
end;

end.
