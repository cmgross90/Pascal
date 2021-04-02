object Form1: TForm1
  Left = 192
  Top = 124
  Width = 696
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ListBox1: TListBox
    Left = 152
    Top = 72
    Width = 121
    Height = 97
    DragMode = dmAutomatic
    ItemHeight = 13
    Items.Strings = (
      '1'
      '2'
      '3')
    TabOrder = 0
    OnDragDrop = ListBox2DragDrop
    OnDragOver = ListBox2DragOver
  end
  object ListBox2: TListBox
    Left = 328
    Top = 72
    Width = 121
    Height = 97
    DragMode = dmAutomatic
    ItemHeight = 13
    TabOrder = 1
    OnDragDrop = ListBox2DragDrop
    OnDragOver = ListBox2DragOver
  end
end
