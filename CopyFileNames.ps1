# Obtener la ruta de la carpeta desde el argumento pasado
$folderPath = $args[0]

# Obtener los nombres de los archivos en la carpeta (solo nombres, sin rutas completas)
$fileNames = Get-ChildItem -Path $folderPath -File | ForEach-Object { $_.Name }

# Unir los nombres en una sola cadena, separados por saltos de línea
$fileList = $fileNames -join "`r`n"

# Copiar la lista al portapapeles
Set-Clipboard -Value $fileList