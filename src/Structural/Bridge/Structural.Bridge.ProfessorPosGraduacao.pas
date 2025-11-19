unit Structural.Bridge.ProfessorPosGraduacao;

interface

uses
  Structural.Bridge.Professor;

  type
    TProfessorPosGraduacao = class(TProfessor)
      public
        procedure Op; override;
    end;

implementation

{ TProfessorPosGraduacao }

procedure TProfessorPosGraduacao.Op;
begin
  FImp.OpImpl;
end;

end.
