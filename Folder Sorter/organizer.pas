﻿unit organizer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.FileCtrl,
  System.IOUtils;

type
  TfrmMain = class(TForm)
    btnSelectFolder: TSpeedButton;
    btnOrganize: TSpeedButton;
    Selected_Folder: TGroupBox;
    listBoxFolder: TListBox;
    Button1: TButton;
    procedure btnSelectFolderClick(Sender: TObject);
    procedure btnOrganizeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    InputFileName, OutputFileName, SelectedFolderPath: string;
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses
  uFileExtensions,
  uStringinArray;

procedure TfrmMain.btnOrganizeClick(Sender: TObject);
var
  fileext: TFileExtension;
  li: integer;
begin
  for li := 0 to listBoxFolder.Count - 1 do
  begin
    fileext := TFileExtension.Create(SelectedFolderPath);
    if fileext.move2destination(listBoxFolder.Items[li],
      fileext.extractExtension(listBoxFolder.Items[li])) then
    begin
      // showMessage(li.ToString);
    end;
  end;
end;

procedure TfrmMain.btnSelectFolderClick(Sender: TObject);
var
  SubItems: TArray<string>;
  SubItem: string;
begin
  if SelectDirectory('Select a folder', '', SelectedFolderPath) then
  begin
    SubItems := TDirectory.GetFileSystemEntries(SelectedFolderPath);
    listBoxFolder.Items.BeginUpdate;
    try
      listBoxFolder.Items.Clear;
      for SubItem in SubItems do
      begin
        listBoxFolder.Items.Add(SubItem);
      end;
    finally
      listBoxFolder.Items.EndUpdate;
    end;
  end;
end;

end.
