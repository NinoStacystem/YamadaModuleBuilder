#!/system/bin/sh
# Auto DPI Changer for Free Fire MAX
# Mengubah DPI saat Free Fire MAX berjalan dan mengembalikannya setelah ditutup

FFMAX_PACKAGE="com.dts.freefiremax"  # Paket Free Fire MAX
FF_DPI=550   # DPI saat FF MAX terbuka
NORMAL_DPI=392  # DPI normal saat FF MAX ditutup

# Loop untuk mengecek apakah Free Fire MAX sedang berjalan
while true; do
    if pidof $FFMAX_PACKAGE > /dev/null; then
        settings put system display_density_forced $FF_DPI
    else
        settings put system display_density_forced $NORMAL_DPI
    fi
    sleep 5  # Cek setiap 5 detik
done
