unit UnitConsultaFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFormConsultaFornecedor = class(TForm)
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    DataSource1: TDataSource;
    Panel1: TPanel;
    Image1: TImage;
    Panel2: TPanel;
    Label1: TLabel;
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image1MouseEnter(Sender: TObject);
    procedure Image1MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultaFornecedor: TFormConsultaFornecedor;

implementation

{$R *.dfm}

uses UnitDataModule, UnitFornecedor;

procedure TFormConsultaFornecedor.DBGrid1DblClick(Sender: TObject);
begin
DataModule1.ADOTableFornecedor.Locate('id_fornecedor', DBGrid1.Fields[0].Value, [loCaseInsensitive,loPartialKey]);
FormFornecedor:=TFormFornecedor.Create(self);
FormFornecedor.Show;
FormConsultaFornecedor.Close;
end;

procedure TFormConsultaFornecedor.Edit1Change(Sender: TObject);
begin
With DataModule1.ADOQueryConsultaFornecedor do
begin

SQL[4]:='WHERE razaosocial like "%'+edit1.Text+'%"';

open;

end;

end;

procedure TFormConsultaFornecedor.Image1Click(Sender: TObject);
begin
close;
end;

procedure TFormConsultaFornecedor.Image1MouseEnter(Sender: TObject);
begin
Image1.Proportional:=True;
end;

procedure TFormConsultaFornecedor.Image1MouseLeave(Sender: TObject);
begin
Image1.Proportional:=False;
end;

end.
