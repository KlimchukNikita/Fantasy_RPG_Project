program Sketch4;

var
    l: integer;
    arr1,arr2: array[1..99] of integer;
    arr3: array[1..99+99] of integer;
    i,j,k: byte;
    FF: file of integer;

begin

    writeln('Count of elements...');
    readln(l);

    writeln('Massiv 1...');
    for i := 1 to l do
        begin
          write('a[',i,']:=');
          readln(arr1[i]);
        end;

    assign(FF, 'massiv1.dat');
      rewrite(FF);
      for i := 1 to l do
        begin
          write(FF,arr1[i]);
        end;
      close(FF);

    assign(FF, 'massiv1.dat');
      reset(FF);
      for i := 1 to l do
        begin
          read(FF,arr1[i]);
        end;
      close(FF);

    writeln('Massiv 2...');
    for j := 1 to l do
        begin
          write('a[',j,']:=');
          readln(arr2[j]);
        end;

    assign(FF, 'massiv2.dat');
      rewrite(FF);
      for j := 1 to l do
        begin
          write(FF,arr2[j]);
        end;
      close(FF);

    assign(FF, 'massiv2.dat');
      reset(FF);
      for j := 1 to l do
        begin
          read(FF,arr2[j]);
        end;
      close(FF);

    i := 1; j := 1; k := 1;
    while (i <= l) and (j <= l) do begin
        if arr1[i] < arr2[j] then begin
            arr3[k] := arr1[i];
            i := i + 1
        end
        else begin
            arr3[k] := arr2[j];
            j := j + 1
        end;
        k := k + 1;
    end;

    while i <= l do begin
        arr3[k] := arr1[i];
        i := i + 1;
        k := k + 1
    end;

    while j <= l do begin
        arr3[k] := arr2[j];
        j := i + 1;
        k := k + 1
    end;

    writeln;
    for k := 1 to l+l do
        write(arr3[k]);

    assign(FF, 'massiv3.dat');
    rewrite(FF);
      for k := 1 to l+l do
        begin
          write(FF,arr3[k]);
        end;
      close(FF);

    readln();

end.

