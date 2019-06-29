object Form1: TForm1
  Left = 0
  Top = 0
  BorderWidth = 5
  Caption = 'Form1'
  ClientHeight = 586
  ClientWidth = 846
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 846
    Height = 561
    Align = alClient
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 0
    Top = 561
    Width = 846
    Height = 25
    Align = alBottom
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
end
