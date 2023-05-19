unit organizer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.FileCtrl,
  System.IOUtils, System.StrUtils;

type
  TfrmMain = class(TForm)
    btnSelectFolder: TSpeedButton;
    btnOrganize: TSpeedButton;
    Selected_Folder: TGroupBox;
    listBoxFolder: TListBox;
    Label1: TLabel;
    edtApps: TEdit;
    Label2: TLabel;
    edtDocs: TEdit;
    Label3: TLabel;
    edtImgs: TEdit;
    edtVids: TEdit;
    Label5: TLabel;
    edtAudios: TEdit;
    Label6: TLabel;
    edtZip: TEdit;
    Label7: TLabel;
    edtsps: TEdit;
    Label8: TLabel;
    edtXML: TEdit;
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

    fileext.FApplicationDir := ifthen(Length(edtApps.Text) > 0, edtApps.Text,
      'Executables');
      fileext.FDocumentDir := ifthen(Length(edtDocs.Text) > 0, edtDocs.Text,
      'Documents');
      fileext.FImageDir := ifthen(Length(edtImgs.Text) > 0, edtImgs.Text,
      'Images');
      fileext.FVideoDir := ifthen(Length(edtVids.Text) > 0, edtVids.Text,
      'Videos');
      fileext.FAudioDir := ifthen(Length(edtAudios.Text) > 0, edtAudios.Text,
      'Audios');
      fileext.FZippedDir := ifthen(Length(edtZip.Text) > 0, edtZip.Text,
      'Zipped');
      fileext.FSpreadSheetDir := ifthen(Length(edtsps.Text) > 0, edtsps.Text,
      'Spreadsheets');
      fileext.FXMLDir := ifthen(Length(edtXML.Text) > 0, edtXML.Text,
      'XMLs');

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
