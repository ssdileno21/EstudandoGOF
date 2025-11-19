unit Structural.Composite.Gerente;

interface

uses
  System.SysUtils, System.Classes, System.Generics.Collections,
  Structural.Composite.Empregado;

  type
    TGerente = class(TEmpregado)
    private
      FSubordinados: TObjectList<TEmpregado>;
    public
      constructor Create(const ANome: string; ASalario: Double); override;
      destructor Destroy; override;

      procedure Print(const AIndent: string; const ALines: TStrings); override;
      procedure Add(AEmpregado: TEmpregado); override;
      procedure Remove(AEmpregado: TEmpregado); override;
  end;

implementation

{ TGerente }

procedure TGerente.Add(AEmpregado: TEmpregado);
begin
  FSubordinados.Add(AEmpregado);
end;

constructor TGerente.Create(const ANome: string; ASalario: Double);
begin
  inherited Create(ANome, ASalario);
  FSubordinados := TObjectList<TEmpregado>.Create(True); // True = dona dos filhos
end;

destructor TGerente.Destroy;
begin
  FSubordinados.Free;
  inherited;
end;

procedure TGerente.Print(const AIndent: string; const ALines: TStrings);
var
  Emp     : TEmpregado;
  NewIndent: string;
begin
  if not Assigned(ALines) then
    Exit;

  ALines.Add(Format('%sGerente: %s, R$ %.2f', [AIndent, Nome, Salario]));

  NewIndent := AIndent + '   ';

  for Emp in FSubordinados do
    Emp.Print(NewIndent, ALines);
end;

procedure TGerente.Remove(AEmpregado: TEmpregado);
begin
  FSubordinados.Remove(AEmpregado);
end;

end.
