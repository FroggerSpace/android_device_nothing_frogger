#!/vendor/bin/sh

pbid=$(getprop ro.boot.pbid)
sku=$(getprop ro.boot.hardware.sku)

if [ -f /sys/bus/i2c/devices/1-0008/hw_version ]; then
    hwid=$(cat /sys/bus/i2c/devices/1-0008/hw_version)

    case "$hwid" in
        "ST21")
            case "$pbid" in
                "Base")
                    setprop vendor.nfc.config_file_name "libnfc-hal-st21-BASE.conf"
                    ;;
            esac

            setprop vendor.nfc_model "ST21"
            ;;
        "ST54")
            if [ "$sku" = "JPN" ]; then
                setprop vendor.nfc.config_file_name "libnfc-hal-st54j-JPN.conf"
            fi

            setprop vendor.nfc_model "ST54"
            ;;
    esac
fi
