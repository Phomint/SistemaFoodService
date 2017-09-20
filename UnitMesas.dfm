object FormMesas: TFormMesas
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 455
  ClientWidth = 529
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -17
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 23
  object Label1: TLabel
    Left = 128
    Top = 124
    Width = 55
    Height = 23
    Caption = 'C'#243'digo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 128
    Top = 190
    Width = 69
    Height = 23
    Caption = 'Ocupada'
  end
  object Label3: TLabel
    Left = 128
    Top = 242
    Width = 39
    Height = 23
    Caption = 'Local'
    FocusControl = DBEdit3
  end
  object DBEdit1: TDBEdit
    Left = 128
    Top = 153
    Width = 69
    Height = 31
    DataField = 'id_mesa'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 0
  end
  object DBEdit3: TDBEdit
    Left = 128
    Top = 271
    Width = 200
    Height = 31
    DataField = 'local'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBCheckBox1: TDBCheckBox
    Left = 128
    Top = 219
    Width = 69
    Height = 17
    Caption = 'Ativo'
    DataField = 'ocupada'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DataSource1: TDataSource
    DataSet = DataModule1.ADOTableMesa
    Left = 408
    Top = 192
  end
end
