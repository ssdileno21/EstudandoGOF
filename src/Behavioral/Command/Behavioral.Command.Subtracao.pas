unit Behavioral.Command.Subtracao;

interface

uses
  Behavioral.Command.Command,
  Behavioral.Command.Calculadora;

type
  TSubtracao = class(TCommand)
  private
    FCalc : TCalculadora;
    FValor: Integer;
  public
    constructor Create(ACalc: TCalculadora; AValor: Integer);
    procedure Execute; override;
    procedure Undo;    override;
  end;

implementation

{ TSubtracao }

constructor TSubtracao.Create(ACalc: TCalculadora; AValor: Integer);
begin
  inherited Create;
  FCalc  := ACalc;
  FValor := AValor;
end;

procedure TSubtracao.Execute;
begin
  FCalc.Valor := FCalc.Valor - FValor;
end;

procedure TSubtracao.Undo;
begin
  FCalc.Valor := FCalc.Valor + FValor;
end;

end.
