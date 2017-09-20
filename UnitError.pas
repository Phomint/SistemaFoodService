unit UnitError;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFormError = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    OK: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormError: TFormError;

implementation

{$R *.dfm}

end.
