unit UnitConsultaCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFormConsultaCidades = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Panel1: TPanel;
    Image1: TImage;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    procedure Edit1Change(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image1MouseEnter(Sender: TObject);
    procedure Image1MouseLeave(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultaCidades: TFormConsultaCidades;

implementation

{$R *.dfm}

uses UnitDataModule;

procedure TFormConsultaCidades.BitBtn1Click(Sender: TObject);
begin
DataModule1.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'/relatorios/relatoriocidade.fr3');
DataModule1.frxReport1.ShowReport(True);
end;

procedure TFormConsultaCidades.Edit1Change(Sender: TObject);
begin
with DataModule1.ADOQueryConsultaCidades do

begin

sql[2]:='WHERE nome_cidade LIKE "%'+edit1.Text+'%"';

open;

end;

end;

procedure TFormConsultaCidades.Image1Click(Sender: TObject);
begin
close;
end;

procedure TFormConsultaCidades.Image1MouseEnter(Sender: TObject);
begin
Image1.Proportional:=True;
end;

procedure TFormConsultaCidades.Image1MouseLeave(Sender: TObject);
begin
Image1.Proportional:=False;
end;

end.
