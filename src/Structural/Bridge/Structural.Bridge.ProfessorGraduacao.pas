unit Structural.Bridge.ProfessorGraduacao;

interface

uses
  Structural.Bridge.Professor;

  type
    TProfessorGraduacao = class(TProfessor)
      public
        procedure Op; override;
    end;

implementation

{ TProfessorGraduacao }

uses
  Vcl.Dialogs;

procedure TProfessorGraduacao.Op;
begin
  ShowMessage('Olá');
  FImp.OpImpl;
end;

end.
