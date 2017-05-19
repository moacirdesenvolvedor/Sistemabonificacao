unit RelBoniVend;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Mask;

type
  TRelBonifVend = class(TForm)
    Panel1: TPanel;
    Button2: TButton;
    dpeInicio: TDateTimePicker;
    dpeFinal: TDateTimePicker;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    Label2: TLabel;
    MERelVend: TMaskEdit;
    EditVendedor: TEdit;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelBonifVend: TRelBonifVend;

implementation

{$R *.dfm}

uses UnPrincipal;


procedure TRelBonifVend.Button2Click(Sender: TObject);
begin
if dpeFinal.Date < dpeInicio.Date then
  begin
    ShowMessage('>> Data inicial maior que a data final, proceda a corre��o! <<');
    dpeInicio.Date := dpeFinal.Date;
  end
  else
  begin
    ForPrincipal.QueryRel.Close;
    ForPrincipal.QueryRel.SQL.Clear;
    ForPrincipal.QueryRel.SQL.Text := 'SELECT * FROM GD_BONIFICACAOITEN WHERE DATAVENDA BETWEEN :dataINI and :dataFIM AND CODVEN1 =:Vend';
    ForPrincipal.QueryRel.Parameters.ParamByName('dataIni').Value := StrToDate(DateToStr(dpeInicio.Date));
    ForPrincipal.QueryRel.Parameters.ParamByName('dataFim').Value := StrToDate(DateToStr(dpeFinal.Date));
   // ForPrincipal.QueryRel.Parameters.ParamByName('Vend').Value := MERelVend.Text;
    ForPrincipal.QueryRel.Parameters.ParamByName('Vend').Value :=EditVendedor.Text;
    ForPrincipal.QueryRel.ExecSQL;
    ForPrincipal.QueryRel.Open;
  end;
  begin
     ForPrincipal.Fastgerador.Clear;
     ForPrincipal.Fastgerador.LoadFromFile('TESTE2.fr3');
     ForPrincipal.Fastgerador.ShowReport;
end;
end;

end.


