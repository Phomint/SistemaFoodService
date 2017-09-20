object FormAviso: TFormAviso
  Left = 0
  Top = 0
  AlphaBlend = True
  AlphaBlendValue = 230
  BorderStyle = bsNone
  Caption = 'FormAviso'
  ClientHeight = 553
  ClientWidth = 956
  Color = 7303023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  DesignSize = (
    956
    553)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 158
    Top = 159
    Width = 571
    Height = 258
    Anchors = []
    BevelOuter = bvNone
    Color = 7303023
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 15
      Width = 24
      Height = 62
      Caption = ':)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -47
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 83
      Width = 401
      Height = 32
      Caption = 'Procedimento efetuado com sucesso '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Memo1: TMemo
      Left = 24
      Top = 121
      Width = 526
      Height = 72
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = 7303023
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      Lines.Strings = (
        '')
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object OK: TPanel
      Left = 424
      Top = 208
      Width = 137
      Height = 41
      BevelOuter = bvLowered
      BiDiMode = bdRightToLeft
      BorderStyle = bsSingle
      Caption = 'OK'
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      OnClick = OKClick
      OnMouseEnter = OKMouseEnter
      OnMouseLeave = OKMouseLeave
    end
  end
end
