unit Behavioral.Command.Soma;

interface

uses
  Behavioral.Command.Command,
  Behavioral.Command.Calculadora;

type
  TSoma = class(TCommand)
  private
    FCalc : TCalculadora;
    FValor: Integer;
  public
    constructor Create(ACalc: TCalculadora; AValor: Integer);

    procedure Execute; override;
    procedure Undo;    override;
  end;

implementation

{ TSoma }


{ TSoma }

constructor TSoma.Create(ACalc: TCalculadora; AValor: Integer);
begin
  inherited Create;
  FCalc  := ACalc;
  FValor := AValor;
end;

procedure TSoma.Execute;
begin
  FCalc.Valor := FCalc.Valor + FValor;
end;

procedure TSoma.Undo;
begin
  FCalc.Valor := FCalc.Valor - FValor;
end;

end.
