object FormError: TFormError
  Left = 0
  Top = 0
  AlphaBlend = True
  AlphaBlendValue = 230
  BorderStyle = bsNone
  Caption = 'FormError'
  ClientHeight = 532
  ClientWidth = 799
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  DesignSize = (
    799
    532)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 142
    Top = 151
    Width = 571
    Height = 258
    Anchors = []
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 15
      Width = 24
      Height = 62
      Caption = ':('
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
      Width = 61
      Height = 32
      Caption = 'Erro : '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Memo1: TMemo
      Left = 19
      Top = 120
      Width = 526
      Height = 72
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      Lines.Strings = (
        '')
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object OK: TPanel
      Left = 376
      Top = 198
      Width = 185
      Height = 41
      Caption = 'OK'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
end
