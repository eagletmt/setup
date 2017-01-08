package 'pulseaudio'
package 'pulseaudio-alsa'
package 'pulseaudio-bluetooth'
package 'pavucontrol'

include_cookbook 'systemd-user'
systemd_user 'pulseaudio.socket'
