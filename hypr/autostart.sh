#!/bin/bash
pactl load-module module-null-sink sink_name=ReplaySink sink_properties=device.description="ReplaySink"
pactl load-module module-loopback source=alsa_output.usb-Astro_Gaming_Astro_MixAmp_Pro-00.stereo-chat.monitor sink=ReplaySink latency_msec=30
pactl load-module module-loopback source=alsa_input.usb-Astro_Gaming_Astro_MixAmp_Pro-00.mono-chat sink=ReplaySink latency_msec=30
