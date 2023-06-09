object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Organise'
  ClientHeight = 504
  ClientWidth = 522
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 15
  object btnSelectFolder: TSpeedButton
    Left = 8
    Top = 8
    Width = 89
    Height = 22
    Caption = 'Select Folder'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnSelectFolderClick
  end
  object btnOrganize: TSpeedButton
    Left = 8
    Top = 456
    Width = 89
    Height = 22
    Caption = 'Organize'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnOrganizeClick
  end
  object Label1: TLabel
    Left = 209
    Top = 47
    Width = 66
    Height = 15
    Caption = 'Applications'
  end
  object Label2: TLabel
    Left = 209
    Top = 77
    Width = 61
    Height = 15
    Caption = 'Documents'
  end
  object Label3: TLabel
    Left = 209
    Top = 108
    Width = 38
    Height = 15
    Caption = 'Images'
  end
  object TLabel
    Left = 209
    Top = 138
    Width = 35
    Height = 15
    Caption = 'Videos'
  end
  object Label5: TLabel
    Left = 209
    Top = 169
    Width = 32
    Height = 15
    Caption = 'Audio'
  end
  object Label6: TLabel
    Left = 209
    Top = 199
    Width = 37
    Height = 15
    Caption = 'Zipped'
  end
  object Label7: TLabel
    Left = 209
    Top = 230
    Width = 69
    Height = 15
    Caption = 'Spreadsheets'
  end
  object Label8: TLabel
    Left = 209
    Top = 261
    Width = 29
    Height = 15
    Caption = 'XMLs'
  end
  object Selected_Folder: TGroupBox
    Left = 9
    Top = 36
    Width = 104
    Height = 245
    Caption = 'Selected Folder'
    TabOrder = 0
    object listBoxFolder: TListBox
      Left = 2
      Top = 17
      Width = 100
      Height = 226
      Align = alClient
      ItemHeight = 15
      TabOrder = 0
      ExplicitWidth = 39
      ExplicitHeight = 48
    end
  end
  object edtApps: TEdit
    Left = 305
    Top = 43
    Width = 145
    Height = 23
    BorderStyle = bsNone
    TabOrder = 1
  end
  object edtDocs: TEdit
    Left = 305
    Top = 73
    Width = 145
    Height = 23
    BorderStyle = bsNone
    TabOrder = 2
  end
  object edtImgs: TEdit
    Left = 305
    Top = 104
    Width = 145
    Height = 23
    BorderStyle = bsNone
    TabOrder = 3
  end
  object edtVids: TEdit
    Left = 305
    Top = 135
    Width = 145
    Height = 23
    BorderStyle = bsNone
    TabOrder = 4
  end
  object edtAudios: TEdit
    Left = 305
    Top = 165
    Width = 145
    Height = 23
    BorderStyle = bsNone
    TabOrder = 5
  end
  object edtZip: TEdit
    Left = 305
    Top = 196
    Width = 145
    Height = 23
    BorderStyle = bsNone
    TabOrder = 6
  end
  object edtsps: TEdit
    Left = 305
    Top = 227
    Width = 145
    Height = 23
    BorderStyle = bsNone
    TabOrder = 7
  end
  object edtXML: TEdit
    Left = 305
    Top = 258
    Width = 145
    Height = 23
    BorderStyle = bsNone
    TabOrder = 8
  end
end
