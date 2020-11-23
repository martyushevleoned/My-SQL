object Form2: TForm2
  Left = 769
  Top = 123
  Width = 289
  Height = 648
  Caption = 'Form2'
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
    Left = 120
    Top = 16
    Width = 16
    Height = 13
    Caption = 'Bot'
  end
  object Label2: TLabel
    Left = 104
    Top = 192
    Width = 45
    Height = 13
    Caption = 'Requests'
  end
  object Label3: TLabel
    Left = 104
    Top = 368
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object Button1: TButton
    Left = 16
    Top = 544
    Width = 241
    Height = 49
    Caption = 'Close'
    TabOrder = 0
    OnClick = Button1Click
  end
  object BotGrid: TDBGrid
    Left = 16
    Top = 32
    Width = 241
    Height = 120
    DataSource = TBot
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Commands'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Description'
        Width = 100
        Visible = True
      end>
  end
  object RequestGrid: TDBGrid
    Left = 16
    Top = 208
    Width = 241
    Height = 120
    DataSource = TRequests
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Message'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UserID'
        Width = 100
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 152
    Width = 240
    Height = 25
    DataSource = TBot
    TabOrder = 3
  end
  object DBNavigator3: TDBNavigator
    Left = 16
    Top = 504
    Width = 240
    Height = 25
    DataSource = TUsername
    TabOrder = 4
  end
  object UsernameGrid: TDBGrid
    Left = 16
    Top = 384
    Width = 241
    Height = 120
    DataSource = TUsername
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Nickname'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UserID'
        Width = 100
        Visible = True
      end>
  end
  object DBNavigator2: TDBNavigator
    Left = 16
    Top = 328
    Width = 240
    Height = 25
    DataSource = TRequests
    TabOrder = 6
  end
  object ADOConnection1: TADOConnection
    Connected = True
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
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 240
    Top = 544
  end
  object DBot: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Bot'
    Left = 240
    Top = 64
  end
  object DRequests: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Requests'
    Left = 240
    Top = 240
  end
  object TBot: TDataSource
    DataSet = DBot
    Left = 240
    Top = 32
  end
  object TRequests: TDataSource
    DataSet = DRequests
    Left = 240
    Top = 208
  end
  object TUsername: TDataSource
    DataSet = DName
    Left = 240
    Top = 384
  end
  object DName: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Username'
    Left = 240
    Top = 416
  end
end
