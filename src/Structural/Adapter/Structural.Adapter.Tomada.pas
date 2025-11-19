unit Structural.Adapter.Tomada;

interface

uses
  Structural.Adapter.Plug;

  type
    TTomada = class abstract
    public
      function Conecta(APlug: TPlug): string; virtual; abstract;
      function GetNomeRede: string; virtual; abstract;
  end;


implementation

end.
