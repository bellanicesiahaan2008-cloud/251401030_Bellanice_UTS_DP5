program bintangidamanku; {nama program}
uses crt; {menggunakan unit CRT untuk fungsi layar dipascal}

var {untuk tempat menyimpan data}
    x,y : integer; {untuk x dan y sebagai bilangan bulat}

begin {untuk menandai awal suatu program}
clrscr; {untuk membersihkan layar}

    for y := 1 to 3 do {perulangan luar (3 baris)}
        begin
            for x := 1 to y do {perulangan dalam mencetak bintang sesuai nilai y}
                begin
                    write ('*'); {mencetak bintang tanpa pindah baris}
                end;
        writeln; {pindah ke baris yang baru}
        end;
    for x := 1 to 8 do {mencetak 8 bintang di baris yang pertama}
        write ('*'); {mencetak bintang tanpa pindah baris}
        writeln; {pindah ke baris yang baru}
    for x := 1 to 7 do {mencetak 7 bintang di baris yang kedua}
        write ('*'); {mencetak bintang tanpa pindah baris}
        writeln; {pindah ke baris yang baru}
    for x := 1 to 6 do {mencetak 6 bintang di baris yang ketiga}
        write ('*'); {mencetak bintang tanpa pindah baris}
        writeln; {pindah ke baris yang baru}
    for x := 1 to 7 do {mencetak 7 bintang di baris yang keempat}
        write ('*'); {mencetak bintang tanpa pindah baris}
        writeln; {pindah ke baris yang baru}
    for x := 1 to 8 do {mencetak 8 bintang di baris yang kelima}
        write ('*'); {mencetak bintang tanpa pindah baris}

end. {program berakhir}