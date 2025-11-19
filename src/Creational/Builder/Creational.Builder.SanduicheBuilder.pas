unit Creational.Builder.SanduicheBuilder;

interface

uses
  Creational.Builder.Sanduiche;

  type
    TSanduicheBuilder = class abstract
      protected
        FSanduiche: TSanduiche;
      public
        constructor Create; virtual;

        procedure AbrePao; virtual; abstract;
        procedure InsereIngredientes; virtual; abstract;
        procedure FechaPao; virtual; abstract;

        function GetSanduiche: TSanduiche;
    end;

implementation

{ TSanduicheBuilder }

constructor TSanduicheBuilder.Create;
begin
  inherited Create;
  FSanduiche := nil;
end;

function TSanduicheBuilder.GetSanduiche: TSanduiche;
begin
  Result := FSanduiche;
end;

end.
