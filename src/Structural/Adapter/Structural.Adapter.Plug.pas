unit Structural.Adapter.Plug;

interface

  type
    TPlug = class abstract
      public
        function ObtemEletrecidade: string; virtual; abstract;

    end;

implementation

end.
