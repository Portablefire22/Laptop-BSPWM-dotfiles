headphones="alsa_output.usb-Generic_USB_Audio-00.HiFi__hw_Audio__sink"
hdmi="alsa_output.pci-0000_03_00.1.hdmi-stereo-extra1"
current_sink=$(pactl get-default-sink)

if [[ $current_sink = $headphones ]]; then
    pactl set-default-sink $hdmi
else 
    pactl set-default-sink $headphones
fi

