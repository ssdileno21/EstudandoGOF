unit Behavioral.Command.Calculadora;

interface

type
  TCalculadora = class
  private
    FValor: Integer;
  public
    constructor Create;

    procedure Reset;

    property Valor: Integer read FValor write FValor;
  end;

implementation

{ TCalculadora }

uses
  System.SysUtils;

{ TCalculadora }

constructor TCalculadora.Create;
begin
  inherited;
  FValor := 0;
end;

procedure TCalculadora.Reset;
begin
  FValor := 0;
end;

end.
