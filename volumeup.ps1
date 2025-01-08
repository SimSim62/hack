# Obtenir une collection de tous les périphériques de sortie audio
$outputs = Get-AudioDevice -List * -Role output

# Boucler sur chaque périphérique et régler le volume au maximum
foreach ($output in $outputs) {
    Set-AudioDevice -PlaybackDevice $output.Name -SetVolume -Volume 100
}