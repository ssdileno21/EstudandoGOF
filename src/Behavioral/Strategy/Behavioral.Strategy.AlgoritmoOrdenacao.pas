unit Behavioral.Strategy.AlgoritmoOrdenacao;

interface

  type
    IAlgoritmoOrdenacao = interface
      ['{41C0C3C5-8244-487B-AE6D-C2492F0D92DB}']
      procedure Ordenar(var A: TArray<Integer>);
      function Nome: string;
  end;

implementation

end.
