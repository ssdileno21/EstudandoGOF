unit Structural.Composite.Programador;

interface

uses
  System.SysUtils, System.Classes,
  Structural.Composite.Empregado;

  type
    TProgramador = class(TEmpregado)
    public
      procedure Print(const AIndent: string; const ALines: TStrings); override;
      procedure Add(AEmpregado: TEmpregado); override;
      procedure Remove(AEmpregado: TEmpregado); override;
  end;

implementation

{ TProgramador }

procedure TProgramador.Add(AEmpregado: TEmpregado);
begin
  raise Exception.Create('Não é possível adicionar subordinado ao programador.');
end;

procedure TProgramador.Print(const AIndent: string; const ALines: TStrings);
begin
  if Assigned(ALines) then
    ALines.Add(Format('%sProgramador: %s, R$ %.2f', [AIndent, Nome, Salario]));
end;

procedure TProgramador.Remove(AEmpregado: TEmpregado);
begin
  raise Exception.Create('Não é possível remover subordinado do programador.');
end;

end.
