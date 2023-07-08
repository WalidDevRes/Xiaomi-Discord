import subprocess

# Chemin vers votre fichier controleur.ps1
chemin_fichier_ps1 = r'E:\Four tout\Dev\Projet discord\mention.ps1'

# Exécution du fichier controleur.ps1
try:
    subprocess.check_call(['powershell.exe', '-ExecutionPolicy', 'Bypass', '-File', chemin_fichier_ps1])
except subprocess.CalledProcessError as e:
    print(f"Erreur d'exécution : {e}")