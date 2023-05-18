unit uTheme;

interface

uses System.UITypes;

type
  TTheme = class(TObject)
  private

  protected
  public
    FMainTheme: Boolean;

    TextColor: TColor;
    WindowColor: TColor;
    function changeTheme: Boolean;
  end;

implementation

{ TTheme }

function TTheme.changeTheme: Boolean;
begin
  FMainTheme := not FMainTheme;
  (* Were giong with the assumption that true is light mode 2 is dark mode *)
  case FMainTheme of
    false:
      begin
        TextColor := TColors.Black;
        WindowColor := TColors.White;
      end;
    true:
      begin
        TextColor := TColors.White;
        WindowColor := TColors.Black;
      end;
  end;

end;

end.
