object MainForm: TMainForm
  Left = 2336
  Top = 195
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Trie-'#1076#1077#1088#1077#1074#1100#1103
  ClientHeight = 556
  ClientWidth = 613
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object inputEdt: TEdit
    Left = 8
    Top = 8
    Width = 313
    Height = 21
    Hint = 'Input word'
    TabOrder = 0
    OnChange = inputEdtChange
    OnKeyPress = inputEdtKeyPress
  end
  object fillTreeBtn: TButton
    Left = 344
    Top = 8
    Width = 249
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1083#1086#1074#1086
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = fillTreeBtnClick
  end
  object findFormsBtn: TButton
    Left = 352
    Top = 336
    Width = 225
    Height = 73
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089#1083#1086#1074#1072' '#1095#1077#1090#1085#1086#1081' '#1076#1083#1080#1085#1099
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = findFormsBtnClick
  end
  object grp1: TGroupBox
    Left = 0
    Top = 40
    Width = 321
    Height = 513
    Caption = 'Trie-'#1076#1077#1088#1077#1074#1086
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object treeView: TTreeView
      Left = 0
      Top = 16
      Width = 321
      Height = 497
      Indent = 19
      TabOrder = 0
    end
  end
  object grp2: TGroupBox
    Left = 328
    Top = 40
    Width = 273
    Height = 273
    Caption = #1048#1090#1086#1075' ('#1091#1076#1072#1083#1077#1085#1085#1099#1077' '#1089#1083#1086#1074#1072')'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object resultMmo: TMemo
      Left = 0
      Top = 16
      Width = 273
      Height = 257
      Enabled = False
      TabOrder = 0
    end
  end
  object BtnClose: TButton
    Left = 384
    Top = 440
    Width = 177
    Height = 57
    Caption = #1047#1072#1082#1088#1099#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BtnCloseClick
  end
end
