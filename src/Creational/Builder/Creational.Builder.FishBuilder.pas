unit Creational.Builder.FishBuilder;

interface

uses
  Creational.Builder.SanduicheBuilder,
  Creational.Builder.Sanduiche,
  Creational.Builder.Fishburguer;

  type
    TFishBuilder = class(TSanduicheBuilder)
      public
        constructor Create; override;

        procedure AbrePao; override;
        procedure InsereIngredientes; override;
        procedure FechaPao; override;
    end;

implementation

{ TFishBuilder }

procedure TFishBuilder.AbrePao;
begin
  FSanduiche.Pao := 'Pão de brioche';
  FSanduiche.Tamanho := 'Normal';
  FSanduiche.Molho := 'Molho Tártaro';
  FSanduiche.Preco := 25.50;
  FSanduiche.Fechado := False;

  if FSanduiche is TFishburguer then
  begin
    TFishburguer(FSanduiche).TipoPeixe := 'Tilápia';
    TFishburguer(FSanduiche).Empanado := True;
    TFishburguer(FSanduiche).MolhoEspecial := 'Limão e ervas';
  end;

end;

constructor TFishBuilder.Create;
begin
  inherited Create;
  FSanduiche := TFishburguer.Create;
end;

procedure TFishBuilder.FechaPao;
begin
  FSanduiche.Fechado := True;
end;

procedure TFishBuilder.InsereIngredientes;
begin
  FSanduiche.Recheio := 'Filé de peixe empanado crocante, alface americana';
end;

end.
