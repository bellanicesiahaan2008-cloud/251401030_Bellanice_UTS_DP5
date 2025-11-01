program tebakangkarahasia; {nama program}
uses crt; {menggunakan unit CRT untuk fungsi layar dipascal}

var {untuk tempat menyimpan data}
    angkarahasia,tebakan : integer; {2 variabel yang bertipe integer untuk menyimpan angka rahasia dan tebakan dari pengguna}

begin {untuk menandai awal suatu program}
clrscr; {untuk membersihkan layar}

    angkarahasia := 3; {menetapkan/menyimpan angka rahasia adalah 3}

    write ('Masukkan Tebakkan : '); {meminta pengguna untuk memasukkan angka tebakannya}
    readln (tebakan); {membaca input dari pengguna dan menyimpannya ke variabel}

    repeat {memulai perulangan hingga until (program akan terus berjalan hingga kondisi benar)}
    if tebakan > angkarahasia then {jika angka tebakan lebih besar dari angka rahasia maka}
        writeln ('Terlalu besar!') {tampilkan 'terlalu besar'}
    else if tebakan < angkarahasia then {lalu jika angka tebakan lebih kecil dari angja rahasia maka}
        writeln ('Terlalu kecil!') {tampilkan 'terlalu kecil'}
    else {kondisi selain itu, berarti tebakan benar}
        writeln ('Selamat, kamu benar!'); {tampilkan 'Selamat, kamu benar!'}

    until tebakan = angkarahasia; {ulangi sampai tebakan benar/tebakan sama dengan angka rahasia}

end. {program berakhir}