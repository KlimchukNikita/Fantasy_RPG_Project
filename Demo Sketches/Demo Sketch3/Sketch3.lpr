program Sketch3;

uses crt;

var i: integer;

begin

  for i:=1 to 10000 do
  begin
    sound(220);
    delay(500);
    nosound;
    delay(500);
  end;

end.

