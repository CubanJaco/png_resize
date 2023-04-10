Este es un script de **bash** creado para redimensionar una imágen en formato PNG a sus respectivas proporciones necesarias para trabajar con *Android Studio*

Forma de usar:

    sh ./png_resize.sh task.png xxxhdpi

`task.png` debe ser el path de la imágen que se desea redimensionar.

> Nota:
> Se recomienda que no existan espacios en el path o el nombre de la imágen.

`xxxhdpi` es la resolución de partida de la imágen (ldpi, mdip, hdpi, xhdpi, xxhdpi, xxxhdpi).

> Nota:
> La imágen solo se reducirá en tamaño para evitar pixelado, por lo que es recomendable comenzar con una imágen en resolución `xxxhdpi`. Si la imágen que se dispone no se encuentra en la máxima resolución, entonces se mantendrá el tamaño para las resoluciones superiores.

La salida del script deberá ser de 6 carpetas con los siguientes nombres (de menor resolución a mayor resolución):

•	drawable-ldpi

•	drawable-mdip

•	drawable-hdpi

•	drawable-xhdpi

•	drawable-xxhdpi

•	drawable-xxxhdpi

Cada carpeta contendrá un archivo **PNG** correspondiente a la imágen en la resolución indicada.

Para redimensionar las imágenes se tiene en cuenta las siguientes proporciones.

| Resolución| Proporción|
|-----------|-----------|
| LDPI      | 0.75      |
| MDPI      | 1.00      |
| HDPI      | 1.50      |
| XHDPI     | 2.00      |
| XXHDPI    | 3.00      |
| XXXHDPI   | 4.00      |

> Nota:
> Como referencia se toma la proporción MDPI como base para calcular las restantes tamaños de imágenes.

# Dependencias

### Linux
Para el funcionamiento del script es necesario tener instalado el paquete `imagemagick-6.q16` en **linux**.

> Nota:
> El script ha sido probado tanto en Linux como en Windows mediante la opción de **WSL**

### macOS

Es necesario el paquete `imagemagick` para hacer uso de la manipulación de imágenes.
    brew install imagemagick
