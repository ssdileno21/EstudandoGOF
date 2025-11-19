unit Structural.Adapter.PlugAmericano;

interface

uses
  Structural.Adapter.Plug;

  type
    TPlugAmericano = class(TPlug)
      public
        function ObtemEletrecidade: string; override;
    end;

implementation

{ TPlugAmericano }

function TPlugAmericano.ObtemEletrecidade: string;
begin
  Result := 'Plug americano conectado à ';
end;

end.
