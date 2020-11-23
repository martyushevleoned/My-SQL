object Form3: TForm3
  Left = 352
  Top = 123
  Width = 425
  Height = 400
  Caption = 'Form3'
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 48
    Width = 27
    Height = 13
    Caption = 'Table'
  end
  object Label2: TLabel
    Left = 16
    Top = 112
    Width = 15
    Height = 13
    Caption = 'Col'
  end
  object Label3: TLabel
    Left = 16
    Top = 176
    Width = 27
    Height = 13
    Caption = 'Value'
  end
  object Button1: TButton
    Left = 16
    Top = 296
    Width = 121
    Height = 49
    Caption = 'Close'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 240
    Width = 121
    Height = 49
    Caption = 'Commit'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 16
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Requests'
  end
  object Edit2: TEdit
    Left = 16
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Message'
  end
  object Edit3: TEdit
    Left = 16
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 4
    Text = '/timetable'
  end
  object DBGrid1: TDBGrid
    Left = 152
    Top = 16
    Width = 241
    Height = 329
    DataSource = DataSource1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Custom: TCheckBox
    Left = 16
    Top = 16
    Width = 97
    Height = 17
    Caption = 'Custom'
    TabOrder = 6
    OnClick = CustomClick
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=.\Dat' +
      'abase1.mdb;Mode=Share Deny None;Persist Security Info=False;Jet ' +
      'OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Da' +
      'tabase Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Lo' +
      'cking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Globa' +
      'l Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLE' +
      'DB:Create System Database=False;Jet OLEDB:Encrypt Database=False' +
      ';Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact ' +
      'Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 360
    Top = 232
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 360
    Top = 272
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 360
    Top = 312
  end
end
