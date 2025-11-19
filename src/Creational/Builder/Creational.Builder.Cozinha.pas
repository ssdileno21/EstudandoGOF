unit Creational.Builder.Cozinha;

interface

uses
  Creational.Builder.SanduicheBuilder;

  type
    TCozinha = class
      public
        procedure FazSanduiche(ABuilder: TSanduicheBuilder);
    end;


implementation

{ TCozinha }

procedure TCozinha.FazSanduiche(ABuilder: TSanduicheBuilder);
begin
  ABuilder.AbrePao;
  ABuilder.InsereIngredientes;
  ABuilder.FechaPao;
end;

end.
