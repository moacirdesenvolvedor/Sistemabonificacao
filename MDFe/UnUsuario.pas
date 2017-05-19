unit UnUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmUsuario = class(TForm)
    Panel1: TPanel;
    EdtUserCod: TEdit;
    EdtUserNome: TEdit;
    EdtUserDep: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RBUser: TRadioButton;
    RGUser: TRadioGroup;
    PanelUser: TPanel;
    SBUserNovo: TSpeedButton;
    SBUserEditar: TSpeedButton;
    SBUserSalvar: TSpeedButton;
    SBUserCancelar: TSpeedButton;
    SBUserSair: TSpeedButton;
    procedure SBUserNovoClick(Sender: TObject);
    procedure SBUserEditarClick(Sender: TObject);
    procedure SBUserSalvarClick(Sender: TObject);
    procedure SBUserSairClick(Sender: TObject);
    procedure SBUserCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUsuario: TfrmUsuario;

implementation

{$R *.dfm}

procedure TfrmUsuario.SBUserCancelarClick(Sender: TObject);
begin
EdtUserCod.Enabled :=True;
EdtUserNome.Enabled :=True;
EdtUserDep.Enabled :=True;
SBUserEditar.Enabled :=False;
SBUserSalvar.Enabled :=False;
SBUserCancelar.Enabled :=False;
SBUserNovo.Enabled :=True;
SBUserSair.Enabled :=True;
EdtUserDep.SetFocus;
end;

procedure TfrmUsuario.SBUserEditarClick(Sender: TObject);
begin
EdtUserCod.Enabled :=False;
EdtUserNome.Enabled :=False;
EdtUserDep.Enabled :=True;
SBUserEditar.Enabled :=False;
SBUserSalvar.Enabled :=True;
SBUserCancelar.Enabled :=True;
SBUserNovo.Enabled :=True;
SBUserSair.Enabled :=False;
EdtUserDep.SetFocus;
end;

procedure TfrmUsuario.SBUserNovoClick(Sender: TObject);
begin
EdtUserCod.Enabled :=True;
EdtUserNome.Enabled :=True;
EdtUserDep.Enabled :=True;
SBUserEditar.Enabled :=False;
SBUserSalvar.Enabled :=True;
SBUserCancelar.Enabled :=True;
SBUserSair.Enabled :=True;
EdtUserCod.SetFocus;
end;

procedure TfrmUsuario.SBUserSairClick(Sender: TObject);
begin
Close;
end;

procedure TfrmUsuario.SBUserSalvarClick(Sender: TObject);
begin
If EdtUserCod.text = ''  then
  begin showmessage('Cod�go n�o pode ser nulo'); abort;
  end;
    begin
    If EdtUserNome.text = ''  then
      begin showmessage('Nome n�o pode ser nulo'); abort;
      end;
        begin
        If EdtUserDep.text = ''  then
          begin showmessage('Departamento n�o pode ser nulo'); abort;
          end;
        end;
    end;
end;

end.
