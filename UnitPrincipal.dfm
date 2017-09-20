object FormPrincipal: TFormPrincipal
  Left = 49
  Top = 0
  ActiveControl = DBCtrlGrid1
  BorderStyle = bsNone
  Caption = 'FormPrincipal'
  ClientHeight = 772
  ClientWidth = 1097
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWhite
  Font.Height = -17
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 23
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1097
    Height = 65
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BiDiMode = bdRightToLeftNoAlign
    Caption = '  Sistema Food Service '
    Color = 44287
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -33
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBiDiMode = False
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object Image1: TImage
      AlignWithMargins = True
      Left = 1018
      Top = 3
      Width = 76
      Height = 59
      Cursor = crHandPoint
      Hint = 'Sair'
      Margins.Left = 0
      Align = alRight
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
      OnClick = Image1Click
      OnMouseEnter = Image1MouseEnter
      OnMouseLeave = Image1MouseLeave
      ExplicitHeight = 76
    end
    object Image3: TImage
      AlignWithMargins = True
      Left = 942
      Top = 3
      Width = 76
      Height = 59
      Cursor = crHandPoint
      Hint = 'Sair'
      Margins.Right = 0
      Align = alRight
      ParentShowHint = False
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D494844520000004C0000
        004C0806000000C797512B000000017352474200AECE1CE90000000467414D41
        0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000000
        C34944415478DAEDD0C109C0300C04C1B8FFA213FF93CF82C004660A10BA5D17
        C93AFDC0DF081609160916091609160916091609160916091609160916091609
        1609160916091609160916091609160916091609160916091609160916091609
        160916091609160916091609168D06BBB7D3833E476E63B7261F132C122C122C
        122C128C17C122C122C122C122C122C122C122C122C122C122C122C122C122C1
        22C122C122C122C122C122C122C122C122C122C122C122C122C122C122C122C1
        22C1A207DE2D184DB0E3DF230000000049454E44AE426082}
      ShowHint = True
      OnClick = Image3Click
      OnMouseEnter = Image3MouseEnter
      OnMouseLeave = Image3MouseLeave
      ExplicitLeft = 944
      ExplicitTop = 0
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 744
    Width = 1097
    Height = 28
    Anchors = [akBottom]
    Panels = <
      item
        Width = 650
      end
      item
        Width = 50
      end>
    ParentColor = True
    ParentFont = True
    UseSystemFont = False
  end
  object Panel2: TPanel
    Left = 250
    Top = 65
    Width = 847
    Height = 679
    Margins.Left = 200
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel2'
    TabOrder = 2
    object DBCtrlGrid1: TDBCtrlGrid
      Left = 0
      Top = 0
      Width = 847
      Height = 679
      Align = alClient
      ColCount = 5
      Color = clWhite
      DataSource = DataSourceMesa
      PanelHeight = 226
      PanelWidth = 166
      ParentColor = False
      TabOrder = 0
      OnPaintPanel = DBCtrlGrid1PaintPanel
      object DBText1: TDBText
        Left = 6
        Top = 3
        Width = 27
        Height = 33
        Color = clWhite
        DataField = 'id_mesa'
        DataSource = DataSourceMesa
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Image10: TImage
        AlignWithMargins = True
        Left = 3
        Top = 50
        Width = 160
        Height = 172
        Cursor = crHandPoint
        Margins.Top = 50
        Margins.Bottom = 4
        Align = alClient
        Center = True
        Proportional = True
        OnClick = Image10Click
        ExplicitLeft = 70
        ExplicitHeight = 170
      end
      object Label1: TLabel
        Left = 6
        Top = 192
        Width = 58
        Height = 25
        Caption = 'Label1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object Panel3: TPanel
    AlignWithMargins = True
    Left = 0
    Top = 65
    Width = 250
    Height = 679
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alLeft
    BevelOuter = bvNone
    Color = 5987163
    FullRepaint = False
    ParentBackground = False
    TabOrder = 3
    object Label3: TLabel
      Left = 0
      Top = 0
      Width = 250
      Height = 37
      Align = alTop
      Alignment = taCenter
      Caption = 'Menu'
      Font.Charset = ANSI_CHARSET
      Font.Color = 44287
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 68
    end
    object Label6: TLabel
      Left = 0
      Top = 556
      Width = 250
      Height = 30
      Align = alBottom
      Alignment = taCenter
      Caption = 'Rel'#243'gio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 70
    end
    object AbaCadastro: TPanel
      Left = 0
      Top = 37
      Width = 250
      Height = 70
      Cursor = crHandPoint
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' Cadastros'
      Color = 5987163
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      OnClick = AbaCadastroClick
      OnMouseEnter = AbaCadastroMouseEner
      OnMouseLeave = AbaCadastroMouseLeave
    end
    object AbaConsultar: TPanel
      Left = 0
      Top = 107
      Width = 250
      Height = 70
      Cursor = crHandPoint
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' Consultas'
      Color = 5987163
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      OnClick = AbaConsultarClick
      OnMouseEnter = AbaConsultarMouseEnter
      OnMouseLeave = AbaConsultarMouseLeave
    end
    object AbaRelatorios: TPanel
      Left = 0
      Top = 177
      Width = 250
      Height = 70
      Cursor = crHandPoint
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' Rel'#225'torios'
      Color = 5987163
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      OnClick = AbaRelatoriosClick
      OnMouseEnter = AbaRelatoriosMouseEnter
      OnMouseLeave = AbaRelatoriosMouseLeave
    end
    object AbaBackup: TPanel
      Left = 0
      Top = 247
      Width = 250
      Height = 70
      Cursor = crHandPoint
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' Backup'
      Color = 5987163
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
      OnClick = AbaBackupClick
      OnMouseEnter = AbaBackupMouseEnter
      OnMouseLeave = AbaBackupMouseLeave
    end
    object Panel4: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 589
      Width = 244
      Height = 87
      Align = alBottom
      BevelOuter = bvLowered
      BorderStyle = bsSingle
      Color = 3487029
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -48
      Font.Name = 'Segoe UI Emoji'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 4
    end
  end
  object BitBtn5: TBitBtn
    Left = 560
    Top = 384
    Width = 1
    Height = 17
    Caption = 'BitBtn5'
    TabOrder = 4
  end
  object AbaPosCadastro: TPanel
    Left = 305
    Top = 108
    Width = 249
    Height = 42
    Align = alCustom
    BevelOuter = bvNone
    Color = 5987163
    ParentBackground = False
    TabOrder = 5
    Visible = False
    object Label2: TLabel
      Left = 0
      Top = 0
      Width = 249
      Height = 37
      Align = alTop
      Alignment = taCenter
      Caption = 'Cadastros'
      Font.Charset = ANSI_CHARSET
      Font.Color = 44287
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 117
    end
    object AbaProduto: TPanel
      Left = 0
      Top = 164
      Width = 249
      Height = 70
      Cursor = crHandPoint
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  Produto'
      Color = 5987163
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      OnClick = AbaProdutoClick
      OnMouseEnter = AbaProdutoMouseEnter
      OnMouseLeave = AbaProdutoMouseLeave
    end
    object AbaVoltar: TPanel
      Left = 0
      Top = 37
      Width = 249
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      Color = 5987163
      ParentBackground = False
      TabOrder = 1
      object Image2: TImage
        Left = 0
        Top = 0
        Width = 105
        Height = 57
        Cursor = crHandPoint
        Align = alLeft
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D494844520000004C0000
          004C0806000000C797512B000000017352474200AECE1CE90000000467414D41
          0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000001
          354944415478DAEDDAB10DC230104051DC304356C82C14ECC9160C9125D25307
          2E1235FA28B1CFD6FF7514F95E95D82E174395D60BE82DC16082C10483090613
          0C26184C30986030C16082C104830906130C26184C30986030C16082C1048309
          06130C2618AC19D8B22CD7799E1FA594FBAF67B76D7BAEEB7A9BA6E9D56ABDDF
          9A80F58A155507EB192BAA0AD63B56540D6C04ACA80AD82858D1E960236145A7
          828D86159D06362256740AD8A858D1E16004ABDA909F0E7BD7910BCB88B50F99
          112C2BD63E6436B0CC58FB9082C121B3814599D152824559D1D2824519D15283
          457EB8FED1A868FE7CC3DCDE81B98108738B1AE62108CC63369807B930AF0AC0
          BC8C02130C26184C30986030C16082C104830906130C26184C30986030C16082
          C104830906130C26184C30986030C16082C10483BD018AA7105CD8FE37120000
          000049454E44AE426082}
        OnClick = Image2Click
        OnMouseEnter = Image2MouseEnter
        OnMouseLeave = Image2MouseLeave
        ExplicitLeft = 72
        ExplicitTop = -32
        ExplicitHeight = 105
      end
    end
    object AbaUsuario: TPanel
      Left = 0
      Top = 234
      Width = 249
      Height = 70
      Cursor = crHandPoint
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  Usu'#225'rio'
      Color = 5987163
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      OnClick = AbaUsuarioClick
      OnMouseEnter = AbaUsuarioMouseEnter
      OnMouseLeave = AbaUsuarioMouseLeave
    end
    object AbaCategoria: TPanel
      Left = 0
      Top = 444
      Width = 249
      Height = 70
      Cursor = crHandPoint
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  Categoria'
      Color = 5987163
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
      OnClick = AbaCategoriaClick
      OnMouseEnter = AbaCategoriaMouseEnter
      OnMouseLeave = AbaCategoriaMouseLeave
    end
    object AbaFornecedor: TPanel
      Left = 0
      Top = 304
      Width = 249
      Height = 70
      Cursor = crHandPoint
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  Fornecedor'
      Color = 5987163
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 4
      OnClick = AbaFornecedorClick
      OnMouseEnter = AbaFornecedorMouseEnter
      OnMouseLeave = AbaFornecedorMouseLeave
    end
    object AbaCidade: TPanel
      Left = 0
      Top = 374
      Width = 249
      Height = 70
      Cursor = crHandPoint
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  Cidade'
      Color = 5987163
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 5
      OnClick = AbaCidadeClick
      OnMouseEnter = AbaCidadeMouseEnter
      OnMouseLeave = AbaCidadeMouseLeave
    end
    object AbaCliente: TPanel
      Left = 0
      Top = 94
      Width = 249
      Height = 70
      Cursor = crHandPoint
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  Cliente'
      Color = 5987163
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 6
      OnClick = AbaClienteClick
      OnMouseEnter = AbaClienteMouseEnter
      OnMouseLeave = AbaClienteMouseLeave
    end
  end
  object AbaPosConsulta: TPanel
    Left = 544
    Top = 56
    Width = 250
    Height = 46
    Align = alCustom
    BevelOuter = bvNone
    Color = 5987163
    ParentBackground = False
    TabOrder = 6
    Visible = False
    object Label4: TLabel
      Left = 0
      Top = 0
      Width = 250
      Height = 37
      Align = alTop
      Alignment = taCenter
      Caption = 'Consultas'
      Font.Charset = ANSI_CHARSET
      Font.Color = 44287
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 115
    end
    object AbaConProduto: TPanel
      Left = 0
      Top = 164
      Width = 250
      Height = 70
      Cursor = crHandPoint
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  Produto'
      Color = 5987163
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      OnClick = AbaConProdutoClick
      OnMouseEnter = AbaConProdutoMouseEnter
      OnMouseLeave = AbaConProdutoMouseLeave
    end
    object Panel6: TPanel
      Left = 0
      Top = 37
      Width = 250
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      Color = 5987163
      ParentBackground = False
      TabOrder = 1
      object Image4: TImage
        Left = 0
        Top = 0
        Width = 105
        Height = 57
        Cursor = crHandPoint
        Align = alLeft
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D494844520000004C0000
          004C0806000000C797512B000000017352474200AECE1CE90000000467414D41
          0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000001
          354944415478DAEDDAB10DC230104051DC304356C82C14ECC9160C9125D25307
          2E1235FA28B1CFD6FF7514F95E95D82E174395D60BE82DC16082C10483090613
          0C26184C30986030C16082C104830906130C26184C30986030C16082C1048309
          06130C2618AC19D8B22CD7799E1FA594FBAF67B76D7BAEEB7A9BA6E9D56ABDDF
          9A80F58A155507EB192BAA0AD63B56540D6C04ACA80AD82858D1E960236145A7
          828D86159D06362256740AD8A858D1E16004ABDA909F0E7BD7910BCB88B50F99
          112C2BD63E6436B0CC58FB9082C121B3814599D152824559D1D2824519D15283
          457EB8FED1A868FE7CC3DCDE81B98108738B1AE62108CC63369807B930AF0AC0
          BC8C02130C26184C30986030C16082C104830906130C26184C30986030C16082
          C104830906130C26184C30986030C16082C10483BD018AA7105CD8FE37120000
          000049454E44AE426082}
        OnClick = Image4Click
        OnMouseEnter = Image4MouseEnter
        OnMouseLeave = Image4MouseLeave
        ExplicitLeft = 72
        ExplicitTop = -32
        ExplicitHeight = 105
      end
    end
    object AbaConUsuario: TPanel
      Left = 0
      Top = 234
      Width = 250
      Height = 70
      Cursor = crHandPoint
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  Usu'#225'rio'
      Color = 5987163
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      OnClick = AbaConUsuarioClick
      OnMouseEnter = AbaConUsuarioMouseEnter
      OnMouseLeave = AbaConUsuarioMouseLeave
    end
    object AbaConFornecedor: TPanel
      Left = 0
      Top = 304
      Width = 250
      Height = 70
      Cursor = crHandPoint
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  Fornecedor'
      Color = 5987163
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
      OnClick = AbaConFornecedorClick
      OnMouseEnter = AbaConFornecedorMouseEnter
      OnMouseLeave = AbaConFornecedorMouseLeave
    end
    object AbaConCidade: TPanel
      Left = 0
      Top = 374
      Width = 250
      Height = 70
      Cursor = crHandPoint
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  Cidade'
      Color = 5987163
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 4
      OnClick = AbaConCidadeClick
      OnMouseEnter = AbaConCidadeMouseEnter
      OnMouseLeave = AbaConCidadeMouseLeave
    end
    object AbaConCliente: TPanel
      Left = 0
      Top = 94
      Width = 250
      Height = 70
      Cursor = crHandPoint
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  Cliente'
      Color = 5987163
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 5
      OnClick = AbaConClienteClick
      OnMouseEnter = AbaConClienteMouseEnter
      OnMouseLeave = AbaConClienteMouseLeave
    end
    object AbaConLogs: TPanel
      Left = 0
      Top = 444
      Width = 250
      Height = 70
      Cursor = crHandPoint
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  Logs'
      Color = 5987163
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 6
      OnClick = AbaConLogsClick
      OnMouseEnter = AbaConLogsMouseEnter
      OnMouseLeave = AbaConLogsMouseLeave
    end
  end
  object AbaPosRelatorio: TPanel
    Left = 745
    Top = 80
    Width = 249
    Height = 41
    Align = alCustom
    BevelOuter = bvNone
    Color = 5987163
    ParentBackground = False
    TabOrder = 7
    Visible = False
    object Label5: TLabel
      Left = 0
      Top = 0
      Width = 249
      Height = 37
      Align = alTop
      Alignment = taCenter
      Caption = 'Rel'#225'torios'
      Font.Charset = ANSI_CHARSET
      Font.Color = 44287
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 119
    end
    object AbaRelProduto: TPanel
      Left = 0
      Top = 164
      Width = 249
      Height = 70
      Cursor = crHandPoint
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  Produto'
      Color = 5987163
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      OnClick = AbaRelProdutoClick
      OnMouseEnter = AbaRelProdutoMouseEnter
      OnMouseLeave = AbaRelProdutoMouseLeave
    end
    object Panel7: TPanel
      Left = 0
      Top = 37
      Width = 249
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      Color = 5987163
      ParentBackground = False
      TabOrder = 1
      object Image5: TImage
        Left = 0
        Top = 0
        Width = 105
        Height = 57
        Cursor = crHandPoint
        Align = alLeft
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D494844520000004C0000
          004C0806000000C797512B000000017352474200AECE1CE90000000467414D41
          0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000001
          354944415478DAEDDAB10DC230104051DC304356C82C14ECC9160C9125D25307
          2E1235FA28B1CFD6FF7514F95E95D82E174395D60BE82DC16082C10483090613
          0C26184C30986030C16082C104830906130C26184C30986030C16082C1048309
          06130C2618AC19D8B22CD7799E1FA594FBAF67B76D7BAEEB7A9BA6E9D56ABDDF
          9A80F58A155507EB192BAA0AD63B56540D6C04ACA80AD82858D1E960236145A7
          828D86159D06362256740AD8A858D1E16004ABDA909F0E7BD7910BCB88B50F99
          112C2BD63E6436B0CC58FB9082C121B3814599D152824559D1D2824519D15283
          457EB8FED1A868FE7CC3DCDE81B98108738B1AE62108CC63369807B930AF0AC0
          BC8C02130C26184C30986030C16082C104830906130C26184C30986030C16082
          C104830906130C26184C30986030C16082C10483BD018AA7105CD8FE37120000
          000049454E44AE426082}
        OnClick = Image5Click
        OnMouseEnter = Image5MouseEnter
        OnMouseLeave = Image5MouseLeave
        ExplicitLeft = 72
        ExplicitTop = -32
        ExplicitHeight = 105
      end
    end
    object AbaRelCategoria: TPanel
      Left = 0
      Top = 444
      Width = 249
      Height = 70
      Cursor = crHandPoint
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  Categoria'
      Color = 5987163
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      OnClick = AbaRelCategoriaClick
      OnMouseEnter = AbaRelCategoriaMouseEnter
      OnMouseLeave = AbaRelCategoriaMouseLeave
    end
    object AbaRelFornecedor: TPanel
      Left = 0
      Top = 234
      Width = 249
      Height = 70
      Cursor = crHandPoint
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  Fornecedor'
      Color = 5987163
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
      OnClick = AbaRelFornecedorClick
      OnMouseEnter = AbaRelFornecedorMouseEnter
      OnMouseLeave = AbaRelFornecedorMouseLeave
    end
    object AbaRelCidade: TPanel
      Left = 0
      Top = 304
      Width = 249
      Height = 70
      Cursor = crHandPoint
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  Cidade'
      Color = 5987163
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 4
      OnClick = AbaRelCidadeClick
      OnMouseEnter = AbaRelCidadeMouseEnter
      OnMouseLeave = AbaRelCidadeMouseLeave
    end
    object AbaRelCliente: TPanel
      Left = 0
      Top = 94
      Width = 249
      Height = 70
      Cursor = crHandPoint
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  Cliente'
      Color = 5987163
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 5
      OnClick = AbaRelClienteClick
      OnMouseEnter = AbaRelClienteMouseEnter
      OnMouseLeave = AbaRelClienteMouseLeave
    end
    object AbaRelLogs: TPanel
      Left = 0
      Top = 374
      Width = 249
      Height = 70
      Cursor = crHandPoint
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  Logs'
      Color = 5987163
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 6
      OnClick = AbaRelLogsClick
      OnMouseEnter = AbaRelLogsMouseEnter
      OnMouseLeave = AbaRelLogsMouseLeave
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 880
    Top = 384
  end
  object ADOQueryMesas: TADOQuery
    Active = True
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * FROM tbl_mesa'
      'Where id_mesa>0'
      '')
    Left = 624
    Top = 96
    object ADOQueryMesasid_mesa: TAutoIncField
      FieldName = 'id_mesa'
      ReadOnly = True
    end
    object ADOQueryMesasocupada: TStringField
      FieldName = 'ocupada'
      Size = 5
    end
    object ADOQueryMesaslocal: TStringField
      FieldName = 'local'
      Size = 45
    end
  end
  object DataSourceMesa: TDataSource
    DataSet = ADOQueryMesas
    Left = 664
    Top = 392
  end
  object ADOQueryInsereMesa: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    Left = 624
    Top = 160
  end
  object Timer2: TTimer
    Interval = 4000
    OnTimer = Timer2Timer
    Left = 616
    Top = 240
  end
end
