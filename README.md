# keyboard slimbook
This is a simple fork aimed to assure this works on my slimbook essential.
This is tested only on Manjaro and Archlinux.

## Necessary dependencies before launchin install_rgb.sh
- standard compile stuff(base-devel package on Manjaro and Arch)
- linux-headers

## Solving Common Errors
- Don't forgeto to install the dependencies
- check if /lib/module/$(uname -r)/extramodul exists if not "sudo mkdir /lib/module/$(uname -r)/extramodules/"
- same as above for other missing directories(clearly not the best practice but it works)
- if the script does not find the hostname check it is ehiter in the form of "ESS15-AMD5" or "ESSENTIAL15AMD5" or something of the likes

## Note
After Changing or updating the kernel this script has to be run again to make the keyboard leds work properly 

## Selecting Default color and brightness
Just change to last line of "install_rgb.sh" with your favourite coulor.
The default is
"sudo tee /etc/modprobe.d/clevo-xsm-wmi.conf <<< 'options clevo-xsm-wmi kb_color=white,white,white, kb_brightness=10'"
If you want to start the leds red with brightness 5 :
"sudo tee /etc/modprobe.d/clevo-xsm-wmi.conf <<< 'options clevo-xsm-wmi kb_color=red,red,red, kb_brightness=5'"

The avaible coulors for the Slimbook Essential are
blue,red,magenta,green,cyan,yellow,white.
as retrived by reading "/sys/class/leds/clevo_xsm::airplane/device"

### Note
Pressing the button to change coulor after white lits the leds purple and then they switch off befor going back to blue. Still purple can't be set as default since the file above reads "Killed" which is the same for the switched off mode.
Also the button which toggles on/off is not reported by this.
