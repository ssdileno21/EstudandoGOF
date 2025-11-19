unit Behavioral.Strategy.BubbleSort;

interface

uses
  Behavioral.Strategy.AlgoritmoOrdenacao;

type
  TBubbleSort = class(TInterfacedObject, IAlgoritmoOrdenacao)
  public
    procedure Ordenar(var AValue: TArray<Integer>);
    function Nome: string;
  end;

implementation

{ TBubbleSort }

function TBubbleSort.Nome: string;
begin
  Result := 'BubbleSort';
end;

procedure TBubbleSort.Ordenar(var AValue: TArray<Integer>);
var
  I, J, T: Integer;
begin
  if Length(AValue) <= 1 then Exit;
  for I := High(AValue) downto 1 do
    for J := 0 to I - 1 do
      if AValue[J] > AValue[J + 1] then
      begin
        T := AValue[J];
        AValue[J] := AValue[J + 1];
        AValue[J + 1] := T;
      end;
end;

end.
