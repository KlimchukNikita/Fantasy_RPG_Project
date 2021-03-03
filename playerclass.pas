unit playerclass;

{$mode objfpc}{$H+}

{$codepage utf8}

interface

procedure player_class ();

implementation

uses

  crt,
  herolore1,
  herolore2,
  herolore3;

procedure player_class ();

var

  a: integer;
  FF: file of integer;

begin

  textcolor(14);

  writeln('************************************************************************************************************************');
  writeln('*                                                                       _____------__________------_____________       *');
  writeln('*    __________------__________------_____------------------------------                                        `\     *');
  writeln('*   /:--__                                                                                                       |     *');
  writeln('*  ||< > |                                                           _____------__________------_________________/     *');
  writeln('*  | \__/___------__________------_____------------------------------                                         |        *');
  writeln('*  |                                                                                                          |        *');
  writeln('*  |   Стой, путник! Слезай с коня да садись к костру. Нынче живым нужно держаться вместе. Расскажи нам о      |       *');
  writeln('*   |  себе. Быть может ты и есть тот самый герой, о котором рассказывают древние легенды и предания! Кто ты?  |       *');
  writeln('*   |                                                                                                         |        *');
  writeln('*  |       [Чтобы выбрать класс героя введите номер выбранного вами варианта]           _.-;-._               |        *');
  writeln('*  |                                                                                   ;_.JL___;               |       *');
  writeln('*  |       1. Боевой маг                                                               F"-/\_-7L               |       *');
  writeln('*   |                                                                                  | a/ e | \               |      *');
  writeln('*   |      2. Скрытный лучник                                                         ,L,c;,.=,/;,              |      *');
  writeln('*    |                                                                             _,-;;S:;:S;;:, ,--._          |     *');
  writeln('*    |     3. Мастер меча                                                         ;. \;;s:::s;;: .,   /\        |      *');
  writeln('*   |                                           |>>>                             /  \  ;::::;;  /    /  \       |      *');
  writeln('*   |                                           |                               / ,  k ;S,;;,S.,    j __,l       |     *');
  writeln('*    |                                      _  _|_  _                        ,---/| /  /S   /S ,.   |,   ;       |     *');
  writeln('*    |                                     |;|_|;|_|;|                      ,Ljjj |/|., s ., s   \  L    |      |      *');
  writeln('*   |       /`\                            \\.    .  /                      LL,_ ]( \    /    ,.  ,.||   ;      |      *');
  writeln('*   |                   \,/                 \\:  .  /                       ||\ > /  ;-.,_.-.___\.-,(|=="(       |     *');
  writeln('*   |                                        ||:   |                        JJ," /   |_  [   ]     _]|   /       |     *');
  writeln('*    |                                       ||:.  |                         LL\/   ,, ,--,-,-----,  \  (         |    *');
  writeln('*    |                         /`\           ||:  .|                         ||     ;      |          |  >       |     *');
  writeln('*     |     \,/                              ||:   |       \,/               JJ     |      |\         |,/       |      *');
  writeln('*     |                                      ||: , |            /`\           LL    |      ||       , |         |      *');
  writeln('*    |                 /`\                   ||:   |                          ||    |      ||       . |          |     *');
  writeln('*    |                                       ||: . |                          JJ    /_     ||       ;_|          |     *');
  writeln('*     |       __                            _||_   |                           LL   L "===,|i=======,_|         |      *');
  writeln('*     |  --`~    ,--~~__            __ ----~    ~`---,              ___        ||    i----, ,-------,;          |      *');
  writeln('*    |                  ~---__ ,--~,                  ~~----_____-~,   ,       JJ    ,;-----.------,-,         |       *');
  writeln('*   |                                                                           LL     L_.__J,,---;,           |       *');
  writeln('*    |     ---     --   ---        ----     ---     ----      ----              ||      |   ,|    (             |      *');
  writeln('*    |                   __                                       ___           JJ     .,=  (|  ,_|             |      *');
  writeln('*   |           ____--`~    ,--~~__            __ ----~   _____-~,   `~----~~    LL   /    .,L_    \           |       *');
  writeln('*   |      -~--~                   ~---__ ,--~,                                  ||   ,---,    ,.___>          |       *');
  writeln('*    |                                                                    _____------__________------__________|_      *');
  writeln('*   |  __________------__________------_____------------------------------                                       `\    *');
  writeln('*   |/`--_                                                                                                         |   *');
  writeln('*   ||[ ]||                                                                  _____------__________------__________/    *');
  writeln('*    \===/__________------__________------_____------------------------------                                          *');
  writeln('*                                                                                                                      *');
  writeln('************************************************************************************************************************');

  readln(a);

  clrscr();

  if a = 1 then
  begin

    assign(FF, 'playerclass1.dat');
      rewrite(FF);
        write(FF,a);
      close(FF);

    hero_lore_1();

  end

  else
  if a = 2 then
  begin

    assign(FF, 'playerclass1.dat');
      rewrite(FF);
        write(FF,a);
      close(FF);

    hero_lore_2();

  end

  else
  if a = 3 then
  begin

    assign(FF, 'playerclass1.dat');
      rewrite(FF);
        write(FF,a);
      close(FF);

    hero_lore_3();

  end;

end;

end.

