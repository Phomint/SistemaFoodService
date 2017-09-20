unit UnitConsultaCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFormConulstaCliente = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Panel1: TPanel;
    Image1: TImage;
    Panel2: TPanel;
    Label1: TLabel;
    procedure Edit1Change(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Image1MouseEnter(Sender: TObject);
    procedure Image1MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConulstaCliente: TFormConulstaCliente;

implementation

{$R *.dfm}

uses UnitDataModule, UnitCliente;

procedure TFormConulstaCliente.DBGrid1DblClick(Sender: TObject);
begin
DataModule1.ADOTableCliente.Locate('id_cliente', DBGrid1.Fields[0].Value,[loCaseInsensitive, loPartialKey]);
FormCliente:=TFormCliente.Create(self);
FormCliente.Show;
FormConulstaCliente.Close;

end;

procedure TFormConulstaCliente.Edit1Change(Sender: TObject);
begin
with DataModule1.ADOQueryConsultaCliente do

begin

sql[4]:='WHERE nome_cliente LIKE "%'+edit1.Text+'%"';

open;

end;
end;

procedure TFormConulstaCliente.Image1Click(Sender: TObject);
begin
close;
end;

procedure TFormConulstaCliente.Image1MouseEnter(Sender: TObject);
begin
Image1.Proportional:=True;
end;

procedure TFormConulstaCliente.Image1MouseLeave(Sender: TObject);
begin
Image1.Proportional:=False;
end;

end.
