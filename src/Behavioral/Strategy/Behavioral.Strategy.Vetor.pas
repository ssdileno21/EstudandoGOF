unit Behavioral.Strategy.Vetor;

interface

uses
  System.SysUtils, System.Math, System.Diagnostics,
  Behavioral.Strategy.AlgoritmoOrdenacao;

type
  TVetor = class
  private
    FValores: TArray<Integer>;
  public
    procedure PreencherAleatorio(AQtd, AMin, AMax: Integer);
    function  ComoString: string;
    function  Clone: TArray<Integer>;
    procedure Ordenar(const AEstrategia: IAlgoritmoOrdenacao; out ATempoMS: Int64);
    property  Valores: TArray<Integer> read FValores write FValores;
  end;

implementation

{ TVetor }

function TVetor.Clone: TArray<Integer>;
var
  I: Integer;
begin
  SetLength(Result, Length(FValores));
  for I := 0 to High(FValores) do
    Result[I] := FValores[I];
end;

function TVetor.ComoString: string;
var
  I: Integer;
begin
  Result := '';
  for I := 0 to High(FValores) do
  begin
    if I > 0 then Result := Result + ', ';
    Result := Result + IntToStr(FValores[I]);
  end;
end;

procedure TVetor.Ordenar(const AEstrategia: IAlgoritmoOrdenacao;
  out ATempoMS: Int64);
var
  A: TArray<Integer>;
  SW: TStopwatch;
begin
  A := Clone;
  SW := TStopwatch.StartNew;
  AEstrategia.Ordenar(A);
  ATempoMS := SW.ElapsedMilliseconds;
  FValores := A;
end;

procedure TVetor.PreencherAleatorio(AQtd, AMin, AMax: Integer);
var
  I: Integer;
begin
  SetLength(FValores, AQtd);
  Randomize;
  for I := 0 to AQtd - 1 do
    FValores[I] := RandomRange(AMin, AMax + 1);
end;

end.
