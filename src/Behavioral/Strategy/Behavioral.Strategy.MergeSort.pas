unit Behavioral.Strategy.MergeSort;

interface

uses
  Behavioral.Strategy.AlgoritmoOrdenacao;

type
  TMergeSort = class(TInterfacedObject, IAlgoritmoOrdenacao)
  public
    procedure Ordenar(var AValue: TArray<Integer>);
    function Nome: string;
  end;

implementation

{ TMergeSort }

function TMergeSort.Nome: string;
begin
  Result := 'MergeSort';
end;

procedure TMergeSort.Ordenar(var AValue: TArray<Integer>);

  procedure Merge(var Arr: TArray<Integer>; L, M, R: Integer);
  var
    I, J, K, N1, N2: Integer;
    Left, Right: TArray<Integer>;
  begin
    N1 := M - L + 1;
    N2 := R - M;
    SetLength(Left, N1);
    SetLength(Right, N2);

    for I := 0 to N1 - 1 do Left[I] := Arr[L + I];
    for J := 0 to N2 - 1 do Right[J] := Arr[M + 1 + J];

    I := 0; J := 0; K := L;
    while (I < N1) and (J < N2) do
    begin
      if Left[I] <= Right[J] then begin Arr[K] := Left[I]; Inc(I); end
      else begin Arr[K] := Right[J]; Inc(J); end;
      Inc(K);
    end;

    while I < N1 do begin Arr[K] := Left[I]; Inc(I); Inc(K); end;
    while J < N2 do begin Arr[K] := Right[J]; Inc(J); Inc(K); end;

  end;

  procedure MS(var Arr: TArray<Integer>; L, R: Integer);
  var
    M: Integer;
  begin
    if L < R then
    begin
      M := (L + R) div 2;
      MS(Arr, L, M);
      MS(Arr, M + 1, R);
      Merge(Arr, L, M, R);
    end;
  end;

begin
  if Length(AValue) > 1 then
    MS(AValue, 0, High(AValue));
end;

end.
