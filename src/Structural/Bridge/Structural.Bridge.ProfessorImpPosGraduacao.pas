unit Structural.Bridge.ProfessorImpPosGraduacao;

interface

uses Structural.Bridge.Implementador;

  type
    TProfessorImplPosGraduacao = class(TImplementador)
      public
        procedure OpImpl; override;
    end;

implementation

uses
  Vcl.Dialogs;

{ TProfessorImplPosGraduacao }

procedure TProfessorImplPosGraduacao.OpImpl;
begin
  ShowMessage('Implementação Prof. Pós-Graduação');
end;

end.
