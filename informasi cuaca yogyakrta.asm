
    
    .model small
.stack 100h

.data
    weather_info db 'Laporan Informasi Cuaca:', 0Dh, 0Ah, '$'
    location db 'Lokasi: Yogyakarta', 0Dh, 0Ah, '$'
    temperature db 'Suhu: 25C', 0Dh, 0Ah, '$'
    humidity db 'Kelembapan: 75%', 0Dh, 0Ah, '$'
    wind_speed db 'Kecepatan Angin: 15 km/h', 0Dh, 0Ah, '$'
    exit_prompt db 'Tekan sembarang tombol untuk keluar...', 0Dh, 0Ah, '$'

.code
start:
    ; Inisialisasi segmen data
    mov ax, @data
    mov ds, ax

    ; Menampilkan header cuaca
    mov ah, 09h
    lea dx, weather_info
    int 21h

    ; Menampilkan lokasi
    lea dx, location
    int 21h

    ; Menampilkan suhu
    lea dx, temperature
    int 21h

    ; Menampilkan kelembapan
    lea dx, humidity
    int 21h

    ; Menampilkan kecepatan angin
    lea dx, wind_speed
    int 21h

    ; Menampilkan prompt akhir
    lea dx, exit_prompt
    int 21h

    ; Menunggu input sebelum keluar
    mov ah, 1
    int 21h

    ; Keluar dari program
    mov ah, 4Ch
    int 21h
end start

