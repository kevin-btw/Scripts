#!/bin/bash

echo "Seleccione el dispositivo para clonar los repositorios:"
echo "1. Moto G60/40 (hanoip)"
echo "2. Moto G82 (rhodep)"
read -p "Ingrese el número de la opción deseada: " choice

case $choice in
    1)
        git clone https://github.com/kevin-btw/android_device_motorola_hanoip device/motorola/hanoip
        git clone https://github.com/kevin-btw/vendor_motorola_hanoip vendor/motorola/hanoip
        git clone https://github.com/kevin-btw/android_kernel_motorola_sm7150 kernel/motorola/sm7150
        git clone https://github.com/kevin-btw/Notis
        ;;
    2)
        git clone https://github.com/Rhodep-Development/android_device_motorola_sm6375-common device/motorola/sm6375-common
        git clone https://github.com/Rhodep-Development/android_device_motorola_rhodep device/motorola/rhodep
        git clone https://github.com/Rhodep-Development/proprietary_vendor_motorola_rhodep vendor/motorola/rhodep
        git clone https://github.com/Rhodep-Development/proprietary_vendor_motorola_sm6375-common vendor/motorola/sm6375-common
        git clone https://github.com/Rhodep-Development/kernel_motorola_msm-5.4 kernel/motorola/msm-5.4
        git clone https://github.com/kevin-btw/Notis
        ;;
    *)
        echo "Opción inválida. Por favor ingrese un número válido."
        ;;
esac




# Dependencies
git clone https://github.com/kevin-btw/android_hardware_motorola hardware/motorola
git clone https://github.com/LineageOS/android_system_qcom system/qcom
