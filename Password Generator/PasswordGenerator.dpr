program PasswordGenerator;

uses
  Vcl.Forms,
  fMain in 'fMain.pas' {Form2},
  uTheme in 'uTheme.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
