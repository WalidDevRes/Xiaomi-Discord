
function mention  {
# $pipinstall = "pip install python-miio"
# Invoke-Expression -Command $pipinstall

$alumer = "miiocli yeelight --ip 192.168.1.15 --token f4ae0b3d17566cd0f178f24c7aee16ff on"
Invoke-Expression -Command $alumer

$couleur = "miiocli yeelight --ip 192.168.1.15 --token f4ae0b3d17566cd0f178f24c7aee16ff set_rgb (0, 0, 255)"
Invoke-Expression -Command $couleur

for ($i = 0; $i -lt 2; $i++) {
    $off = "miiocli yeelight --ip 192.168.1.15 --token f4ae0b3d17566cd0f178f24c7aee16ff off"
    Invoke-Expression -Command $off

    $alumer = "miiocli yeelight --ip 192.168.1.15 --token f4ae0b3d17566cd0f178f24c7aee16ff on"
    Invoke-Expression -Command $alumer

    $couleur = "miiocli yeelight --ip 192.168.1.15 --token f4ae0b3d17566cd0f178f24c7aee16ff set_rgb (0, 0, 255)"
    Invoke-Expression -Command $couleur

    $off = "miiocli yeelight --ip 192.168.1.15 --token f4ae0b3d17566cd0f178f24c7aee16ff off"
    Invoke-Expression -Command $off
}

$alumer = "miiocli yeelight --ip 192.168.1.15 --token f4ae0b3d17566cd0f178f24c7aee16ff on"
Invoke-Expression -Command $alumer

$couleurdefault = "miiocli yeelight --ip 192.168.1.15 --token f4ae0b3d17566cd0f178f24c7aee16ff set_rgb (255, 255, 255)"
Invoke-Expression -Command $couleurdefault

$lumi = "miiocli yeelight --ip 192.168.1.15 --token f4ae0b3d17566cd0f178f24c7aee16ff set_brightness 100"
Invoke-Expression -Command $lumi
}

mention
