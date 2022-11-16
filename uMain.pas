unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmRestClientDemo = class(TForm)
    Panel1: TPanel;
    LabeledEdit1: TLabeledEdit;
    Button1: TButton;
    HttpClient: TRESTClient;
    HttpRequest: TRESTRequest;
    HttpResponse: TRESTResponse;
    memoOutput: TMemo;
    Panel2: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRestClientDemo: TFrmRestClientDemo;

implementation

{$R *.dfm}

procedure TFrmRestClientDemo.Button1Click(Sender: TObject);
begin
  try
    HttpRequest.Execute;
    memoOutput.Lines.Text := HttpResponse.Content;
  except
    on E: Exception do begin
      memoOutput.Lines.Text := e.Message;
    end;
  end;
end;

procedure TFrmRestClientDemo.FormCreate(Sender: TObject);
begin
  HttpClient.BaseURL := Trim (LabeledEdit1.Text);

end;

end.
