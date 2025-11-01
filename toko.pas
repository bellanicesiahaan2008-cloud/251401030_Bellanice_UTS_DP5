program cicipunyatoko; {nama program}
uses crt; {menggunakan unit CRT untuk fungsi layar dipascal}

var {untuk tempat menyimpan data}
    hbuku,hpulpen,hpensil,hpenghapus,hpenggaris : integer; {untuk harga setiap barang}
    jbuku,jpulpen,jpensil,jpenghapus,jpenggaris : integer; {untuk jumlah setiap barang yang dipilih pengguna}
    tbuku,tpulpen,tpensil,tpenghapus,tpenggaris,totalharga : real; {untuk total harga secara keseluruhan}
    diskon,pajak,pottambah,potakhir,totalakhir : real; {untuk diskon,potongan,pajak,dan harga akhir}
    metode : string; {untuk metode pembayaran}

begin {untuk menandai awal suatu program}
clrscr; {untuk membersihkan layar}

    hbuku := 25000; {pemberian harga awal setiap buku}
    hpulpen := 5000; {pemberian harga awal setiap pulpen}
    hpensil := 3000; {pemberian harga awal setiap pensil}
    hpenghapus := 2000; {pemberian harga awal setiap penghapus}
    hpenggaris := 4000; {pemberian harga awal setiap penggaris}

    write ('Masukkan jumlah Buku = '); {pengguna diminta untuk menginput berapa jumlah buku yang ingin dibeli}
    readln (jbuku); {membaca input dari pengguna dan menyimpannya ke variabel}
    write ('Masukkan jumlah Pulpen = '); {pengguna diminta untuk menginput berapa jumlah pulpen yang ingin dibeli}
    readln (jpulpen); {membaca input dari pengguna dan menyimpannya ke variabel}
    write ('Masukkan jumlah Pensil = '); {pengguna diminta untuk menginput berapa jumlah pensil yang ingin dibeli}
    readln (jpensil); {membaca input dari pengguna dan menyimpannya ke variabel}
    write ('Masukkan jumlah Penghapus = '); {pengguna diminta untuk menginput berapa jumlah penghapus yang ingin dibeli}
    readln (jpenghapus); {membaca input dari pengguna dan menyimpannya ke variabel}
    write ('Masukkan jumlah Penggaris = '); {pengguna diminta untuk menginput berapa jumlah penggaris yang ingin dibeli}
    readln (jpenggaris); {membaca input dari pengguna dan menyimpannya ke variabel}

    tbuku := hbuku * jbuku; {menghitung total harga untuk setiap buku}
    tpulpen := hpulpen * jpulpen; {menghitung total harga untuk setiap pulpen}
    tpensil := hpensil * jpensil; {menghitung total harga untuk setiap pensil}
    tpenghapus := hpenghapus * jpenghapus; {menghitung total harga untuk setiap penghapus}
    tpenggaris := hpenggaris * jpenggaris; {menghitung total harga untuk setiap penggaris}

    totalharga := tbuku + tpulpen + tpensil + tpenghapus + tpenggaris; {menghitung total harga semua barang}

    writeln ('Total harga sebelum diskon : Rp ',totalharga:0:0); {menampilkan total harga sebelum diskon, 0:0 untuk menampikan angka tanpa desimal}

    if totalharga >= 100000 then {jika total harga lebih besar atau sama dengan 100000 maka}
        diskon := totalharga * 0.1; {mendapatkan diskon 10%}

    write ('Metode pembayaran anda (QRIS/tunai) = '); {meminta pengguna untuk menginputkan metode pembayaran yang diinginkan}
    readln (metode); {membaca input dari pengguna dan menyimpannya ke variabel}

    if metode = 'QRIS' then {jika metode pembayaran yang dipilih adalah QRIS maka}
        pottambah := 5000 {mendapatkan potongan tambahan 5000}
    else if metode = 'tunai' then {tetapi jika metode pembayaran adalah tunai maka}
        pajak := 0.05 * totalharga; {mendapatkan pajak 5% dari total harga}
    
    potakhir := diskon  + pottambah + pajak; {menghitung potongan akhir yang didapatkan}

    writeln ('Seluruh potongan dan discount :Rp ',potakhir:0:0); {berpindah baris dan menampilkan seluruh potongan dan diskon, 0:0 untuk menampilkan angka tanpa desimal}

    totalakhir := totalharga - potakhir; {menghitung total akhir setelah adanya potongan akhir}

    writeln ('Total Akhir :Rp ',totalakhir:0:0); {berpindah baris dan menampilkan total akhir yang didapatkan, 0:0 untuk menampilkan angka tanpa desimal}

end. {program berakhir}