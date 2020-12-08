object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 411
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 192
    Top = 232
    Width = 337
    Height = 120
    DataSource = dsUSER
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UserName'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Password'
        Width = 70
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 88
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 104
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 2
    OnClick = Button2Click
  end
  object ADOConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Z:\wave\020_Test\MD' +
      'B\010_SourceCode\MDB_TEST\Win32\Debug\DB\DB.mdb;Persist Security' +
      ' Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 80
    Top = 88
  end
  object tbUSER: TADOTable
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    TableDirect = True
    TableName = 'USER'
    Left = 216
    Top = 112
  end
  object dsUSER: TDataSource
    DataSet = tbUSER
    Left = 296
    Top = 120
  end
  object ADOQuery: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    DataSource = dsUSER
    Parameters = <>
    SQL.Strings = (
      'Select UserName from DB.USER where UserName = '#39'LSJ'#39)
    Left = 376
    Top = 88
  end
end
