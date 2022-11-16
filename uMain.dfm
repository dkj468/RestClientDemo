object FrmRestClientDemo: TFrmRestClientDemo
  Left = 0
  Top = 0
  Caption = 'Get Fun Activity'
  ClientHeight = 296
  ClientWidth = 544
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 544
    Height = 65
    Align = alTop
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    object LabeledEdit1: TLabeledEdit
      Left = 16
      Top = 32
      Width = 321
      Height = 21
      EditLabel.Width = 45
      EditLabel.Height = 13
      EditLabel.Caption = 'Base URL'
      TabOrder = 0
      Text = 'https://www.boredapi.com/api/activity'
    end
    object Button1: TButton
      Left = 448
      Top = 30
      Width = 75
      Height = 25
      Caption = 'Fetch Data'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 80
    Width = 544
    Height = 216
    Align = alBottom
    Caption = 'Panel2'
    ShowCaption = False
    TabOrder = 1
    object memoOutput: TMemo
      Left = 1
      Top = 1
      Width = 542
      Height = 214
      Align = alClient
      Lines.Strings = (
        '')
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = -66
      ExplicitHeight = 281
    end
  end
  object HttpClient: TRESTClient
    Params = <>
    Left = 456
    Top = 88
  end
  object HttpRequest: TRESTRequest
    Client = HttpClient
    Params = <>
    Response = HttpResponse
    Left = 464
    Top = 144
  end
  object HttpResponse: TRESTResponse
    Left = 472
    Top = 216
  end
end
