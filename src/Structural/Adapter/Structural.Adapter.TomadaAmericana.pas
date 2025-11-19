unit Structural.Adapter.TomadaAmericana;

interface

uses
  Structural.Adapter.Tomada,
  Structural.Adapter.Plug;

  type
    TTomadaAmericana = class(TTomada)
      public
        function Conecta(APlug: TPlug): string; override;
        function GetNomeRede: string; override;
    end;

implementation

{ TTomadaAmericana }

function TTomadaAmericana.Conecta(APlug: TPlug): string;
begin
  Result := APlug.ObtemEletrecidade + GetNomeRede;
end;

function TTomadaAmericana.GetNomeRede: string;
begin
  Result := 'tomada americana';
end;

end.
