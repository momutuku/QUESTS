﻿program organizertool;

uses
  Vcl.Forms,
  organizer in 'organizer.pas' {frmMain},
  uFileExtensions in 'uFileExtensions.pas',
  uStringinArray in 'uStringinArray.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
