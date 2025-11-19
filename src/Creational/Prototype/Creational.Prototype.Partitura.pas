unit Creational.Prototype.Partitura;

interface

uses
  System.Generics.Collections,
  Creational.Prototype.NotaMusical;

  type
    TPartitura = class
      private
        class var FNotaMap: TObjectDictionary<string, TNotaMusical>;
        class procedure EnsureInitialized; static;
      public
        class procedure CarregaNotas; static;
        class function GetNota(const ANome: string): TNotaMusical; static;
    end;

implementation

{ TPartitura }

uses Creational.Prototype.NotaDo, Creational.Prototype.NotaFa, 
Creational.Prototype.NotaLa, Creational.Prototype.NotaMi,
Creational.Prototype.NotaRe, Creational.Prototype.NotaSi, 
Creational.Prototype.NotaSol, System.SysUtils;

class procedure TPartitura.CarregaNotas;
begin
  EnsureInitialized;
  FNotaMap.Clear;

  FNotaMap.Add('Do', TNotaDo.Create);
  FNotaMap.Add('Re', TNotaRe.Create);
  FNotaMap.Add('Mi', TNotaMi.Create);
  FNotaMap.Add('Fa', TNotaFa.Create);
  FNotaMap.Add('Sol', TNotaSol.Create);
  FNotaMap.Add('La', TNotaLa.Create);
  FNotaMap.Add('Si', TNotaSi.Create);

end;

class procedure TPartitura.EnsureInitialized;
begin
  if FNotaMap = nil then
    FNotaMap := TObjectDictionary<string, TNotaMusical>.Create([doOwnsValues]);
end;

class function TPartitura.GetNota(const ANome: string): TNotaMusical;
var
  LNota: TNotaMusical;
begin
  EnsureInitialized;

  if not FNotaMap.TryGetValue(ANome, LNota) then
    Exit(nil);

  Result := LNota.Clone;
end;

  initialization
    TPartitura.CarregaNotas;

  finalization
   FreeAndNil(TPartitura.FNotaMap);

end.
