unit UnitConsultaProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFormConsultaProd = class(TForm)
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
  FormConsultaProd: TFormConsultaProd;

implementation

{$R *.dfm}

uses UnitDataModule, UnitProduto;

procedure TFormConsultaProd.DBGrid1DblClick(Sender: TObject);
begin
DataModule1.ADOTableProduto.Locate('id_produto', DBGrid1.Fields[0].Value, [loCaseInsensitive,loPartialKey]);
FormProduto:=TFormProduto.Create(self);
FormProduto.Show;
FormConsultaProd.Close;
end;

procedure TFormConsultaProd.Edit1Change(Sender: TObject);
begin
with DataModule1.ADOQueryConsultaProduto  do

begin

sql[4]:= 'WHERE nome_produto LIKE "%'+edit1.Text+'%"';

open;

end;
end;

procedure TFormConsultaProd.Image1Click(Sender: TObject);
begin
close;
end;

procedure TFormConsultaProd.Image1MouseEnter(Sender: TObject);
begin
Image1.Proportional:=True;
end;

procedure TFormConsultaProd.Image1MouseLeave(Sender: TObject);
begin
Image1.Proportional:=False;
end;

end.
