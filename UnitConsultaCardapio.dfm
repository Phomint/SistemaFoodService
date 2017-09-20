object FormConsultaCardapio: TFormConsultaCardapio
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 404
  ClientWidth = 752
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -17
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 23
  object DBGrid1: TDBGrid
    Left = 24
    Top = 136
    Width = 657
    Height = 209
    BorderStyle = bsNone
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -17
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_cardapio'
        Title.Caption = 'C'#243'digo'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome_cardapio'
        Title.Caption = 'Item Card'#225'pio'
        Width = 204
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cate_cardapio'
        Title.Caption = 'Categoria'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ativo'
        Title.Caption = 'Ativo'
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 24
    Top = 85
    Width = 401
    Height = 31
    TabOrder = 1
    TextHint = 'Digite aqui para Pesquisar'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 752
    Height = 57
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = '  Consulta de Produto'
    Color = 44287
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -33
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    object Image1: TImage
      Left = 676
      Top = 0
      Width = 76
      Height = 76
      Cursor = crHandPoint
      Hint = 'Fechar'
      Align = alRight
      AutoSize = True
      Center = True
      ParentShowHint = False
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D494844520000004C0000
        004C0806000000C797512B000000017352474200AECE1CE90000000467414D41
        0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000001
        9B4944415478DAEDDA4D4EC2401C40710B5D791C4FE0295C1BEFA097D07802E3
        19DC782DE3BE4DEB0C49374D505E992FE27B9B42520AFF5F02A1D3765786EA6A
        7F804B4B30986030C16082C104830906130C26184C30986030C16082C1048309
        06130C26184C30986030C16082C18A818DE3F810365F7DDF7FA43CEE300CB7BB
        DDEE66BFDFBF9698A30858C40A43BDC587D334DDA5428B5801EAB3EBBAEBF0F4
        296C9F73CF921D6CC10AC31CDE6B9EE72105DA0A6B293B5A56B035D6D2B96847
        B096B2A265030B58F701EB7D8DB5B415ED0FAC43E1B88F619F978B023B65308A
        96E398CD80A51EB005ACEC60A9066D05AB08D8B903B784550C6CEBE0AD611505
        A30061FBDD1A5671308216776D0D2B56E5E4FB14B4DFAA8515ABB65AB115AD26
        56ACEAF20E45AB8D15ABBE1E762A5A0B5831C1607E2561FEE8C3FC5B01F38F2B
        CC53A356C13CF9CE8C95E2B51709E6026261ACD6D0BC08D20A9897D9B6A17921
        97E6AD021BF266940D79BBD33F4D30986030C16082C104830906130C26184C30
        986030C16082C104830906130C26184C30986030C16082C10483FD0091D23C6B
        7A9A21910000000049454E44AE426082}
      ShowHint = True
      ExplicitLeft = 869
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 390
    Width = 752
    Height = 14
    Align = alBottom
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Color = 44287
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -33
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
  end
  object DataSource1: TDataSource
    Left = 448
    Top = 352
  end
end
