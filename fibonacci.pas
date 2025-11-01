program deretfibonacci; {nama program}
uses crt; {menggunakan unit CRT untuk fungsi layar dipascal}

var {untuk tempat menyimpan data}
    n,i : integer; {untuk jumlah suku (n) dan variabel perulangan (i)}
    a,b,c,total : longint; {untuk menghitung fibonacci dan totalnya}

begin {untuk menandai awal suatu program}
clrscr; {untuk membersihkan layar}

    write ('Masukkan nilai N : '); {meminta pengguna untuk menginput jumlah suku dari fibonacci}
    readln (n); {membaca input dan menyimpannya ke variabel n}

    a := 0; {suku pertama deret fibonacci}
    b := 1; {suku kedua deret fibonacci}
    total := 0; {total penjumlahan}

    write ('Sequence = '); {menampilkan teks sebelum deret muncul}
    for i := 1 to n do {perulangan dari i sampai n}
    begin
        write (a,' '); {menampilkan suku pertama (a) di output dan memberikan spasi}
        total := total + a; {menambahkan nilai a ke total}
        c := a + b; {menghitung suku berikutnya dengan 2 penjumlahan sebelumnya}
        a := b; {geser a menjadi b}
        b := c; {geser b menjadi c atau menjadi suku baru}
    end;
    writeln; {pindah ke baris baru}
    writeln ('Total : ',total); {menampilkan total keseluruhan dari deret fibonacci}
    readln; {menahan tampilan layar agar tidak langsung tertutup}
end. {program berakhir}