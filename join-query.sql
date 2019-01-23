SELECT nama, kota, pimpinan
FROM member
    INNER JOIN cabang
    ON member.cabang_id = cabang.id;

SELECT kota AS cabang,
    COUNT(member.cabang_id) AS jumlah_member
FROM cabang
    LEFT JOIN member
    ON member.cabang_id = cabang.id
GROUP BY cabang;

SELECT divisi.nama AS divisi,
    COUNT(karyawan.divisi_id) AS jumlah_karyawan
FROM divisi
    LEFT JOIN karyawan
    ON karyawan.divisi_id = divisi.id
GROUP BY divisi.nama;

/*
- Buat table `divisi`: id, nama
- PRIMARY KEY = id, FOREIGN KEY = divisi_id
- Hubungkan table `divisi` dengan `karyawan`
- Query Jumlah karyawan per divisi

CHANGE field_name:
ALTER TABLE member CHANGE `cabang_id` `cbg_id` INT;
*/
