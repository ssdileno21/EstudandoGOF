unit Structural.Adapter.PlugBrasileiro;

interface

uses
  Structural.Adapter.Plug;

  type
    TPlugBrasileiro = class(TPlug)
      public
        function ObtemEletrecidade: string; override;
    end;

implementation

{ TPlugBrasileiro }

function TPlugBrasileiro.ObtemEletrecidade: string;
begin
  Result := 'Plug brasileiro conectado à ';
end;

end.
