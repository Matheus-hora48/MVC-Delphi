object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -25
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 35
  object Button1: TButton
    Left = 0
    Top = 0
    Width = 145
    Height = 442
    Align = alLeft
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 145
    Top = 0
    Width = 483
    Height = 442
    Align = alClient
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
    ExplicitLeft = 392
    ExplicitTop = 168
    ExplicitWidth = 185
    ExplicitHeight = 89
  end
end
