program BilanganPrima;
uses crt;

var
    n, i, j: integer;
    prima, pertama: boolean;
    

begin
    clrscr;
    
    write('Masukkan nilai n: ');
    readln(n);
    writeln;
    writeln('Bilangan prima dari 1 hingga ', n, ' adalah:');

    pertama := true; 

    for i := 2 to n do
    begin
        prima := true;

        // cek apakah i bilangan prima
        for j := 2 to i - 1 do
        begin
            if (i mod j = 0) then
            begin
                prima := false;
                break;
            end;
        end;

        if prima then
        begin
            // kalau ini bukan bilangan prima pertama, tambahkan koma di depan
            if not pertama then
                write(', ');
            
            write(i);
            pertama := false; // setelah mencetak pertama kali, ubah status
        end;
    end;

    writeln;
    readln;
end.