unit Structural.Flyweight.FiguraFactory;

interface

uses
  System.Generics.Collections,
  Structural.Flyweight.Figura;

  type
    TFiguraFactory = class
    private
      class var FPool: TObjectDictionary<string, TFigura>;
      class constructor Create;
      class destructor Destroy;
    public
      class function GetFigura(const ATipo: string): TFigura;
      class function Count: Integer;
      class function CacheInfo: string;
  end;

implementation

uses
  System.SysUtils, Structural.Flyweight.Linha, Structural.Flyweight.Oval;

{ TFiguraFactory }

class function TFiguraFactory.CacheInfo: string;
var
  Key: string;
  Lista: string;
begin
  Lista := '';
  for Key in FPool.Keys do
  begin
    if Lista <> '' then
      Lista := Lista + ', ';
    Lista := Lista + Key;
  end;

  Result := Format('Flyweights em cache: %d (%s)', [FPool.Count, Lista]);
end;

class function TFiguraFactory.Count: Integer;
begin
  Result := FPool.Count;
end;

class constructor TFiguraFactory.Create;
begin
  FPool := TObjectDictionary<string, TFigura>.Create([doOwnsValues]);
end;

class destructor TFiguraFactory.Destroy;
begin
  FPool.Free;
end;

class function TFiguraFactory.GetFigura(const ATipo: string): TFigura;
var
  LKey: string;
begin
  LKey := ATipo.ToLower;

  if not FPool.TryGetValue(LKey, Result) then
  begin
    if LKey = 'linha' then
      Result := TLinha.Create
    else if LKey = 'oval' then
      Result := TOval.Create
    else
      raise Exception.CreateFmt('Tipo de figura desconhecido: %s', [ATipo]);

    FPool.Add(LKey, Result);
  end;

end;

end.
