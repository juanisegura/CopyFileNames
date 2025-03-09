# CopyFileNames

El script copia al portapapeles los nombres de los archivos dentro de una carpeta seleccionada en el explorador de archivos (funciona para Windows 10 y 11. 
Al hacer clic derecho sobre una carpeta y elegir "Copiar nombres de archivos" en el menú contextual, se ejecuta un script de PowerShell (CopyFileNames.ps1) que lista los nombres de los archivos (sin rutas completas) y los une con saltos de línea. 
Este proceso se ejecuta de forma oculta ya que se utiliza un script VBScript (RunHidden.vbs) que llama a PowerShell sin mostrar una ventana de consola. 
El resultado queda en el portapapeles.

FORMA DE INSTALACION

1. Genera una carpeta en C:\ y llamala Scripts
2. Guardar ambos archivos en dicha ruta
3. Presionar Win+R, escribir regedit e ingresar al registro del sistema
4. Dirigirse a HKEY_CLASSES_ROOT\Directory\shell
5. Crea una clave llamada "Copiar nombres de archivos", y dentro una subclave "command"
6. Editar el valor predeterminado de command y establecer el siguiete: wscript.exe "C:\Scripts\RunHidden.vbs" "%V"
7. Si quieren agregar un icono a la funcion, dentro de clave "Copiar nombres de archivos" crear una Key llamada Icon
8. Dentro de Icon poner el siguiente valor: shell32.dll,4
