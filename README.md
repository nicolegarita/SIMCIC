# SIMCIC
Sistema Informático Médico Clínica Integral las Catalinas, permite llevar un control de las citas que se efectúan a diario, así como el manejo de la modificación o cancelación de una cita, además, lleva el control del registro, los cálculos ya sea de IMC y de dosificación para cada paciente que asiste la clínica. Para finalizar se lleva un control de los medicamentos a modo de inventario para gestionarlos de manera correcta y eficiente 

# Integrantes: 
Nicole Garita Constante & Harry Mora Solano

# Instrucciones para el funcionamiento del programa
Estas instrucciones le permitirán obtener una copia del proyecto en funcionamiento en su máquina local para fines de desarrollo y prueba.

# Prerequisitos de instalación:
A continuación se presentan los programas en el orden que deben ser instalados en su equipo para correr el código, además se incluye los enlaces de descarga:

1)Visual Studio Community 2017, https://visualstudio.microsoft.com/es/downloads/?rr=https%3A%2F%2Fwww.google.com%2F

2)SQL Server 2017 Express, https://www.microsoft.com/es-es/sql-server/sql-server-downloads

3)SQL Server Management Studio (SSMS), https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-2017

4)Navegador Google Chrome, https://www.google.com.mx/chrome/?brand=CHBD&gclid=CjwKCAjwkrrbBRB9EiwAhlN8_MH8xsHFHwLg0eMZXRm7onijJhbPE3ncceaccAox7vQZQq4he1PtxRoCDvEQAvD_BwE&gclsrc=aw.ds&dclid=CJzN4d2H5twCFVFZwQodJLkCkQ

# Instalación:
A continuación se presentan los pasos a seguir para montar el ambiente de desarrollo y el código correctamente:

1)Al momento de descargar Visual Studio se deben seguir los pasos que indique el instalador sin embargo Visual sugiere una serie de archivos a descargar dependiendo del cometido de desarrollo, se deben de seleccionar todos los archivos relacionados a C# y ASP.net y finalmente seleccionar instalar.

2)En caso de  SQL server solo se debe de seguir las instrucciones del instalador y al final conectarse por medio del SSMS, escribiendo el nombre de la máquina seguido de la sentencia SQLEXPRESS, por ejemplo MIMAQUINA\SQLEXPRESS.

3)Al finalizar la correcta instalación de los programas antes mencionados se debe de dirigir al directorio remoto en GITHUB, dirigirse a la página donde se encuentra el código del repositorio y seleccionar el botón “Clonar o descargar”, posteriormente seleccionar la opción “Abrir en Visual Studio”. Finalmente Github abrirá la aplicación, ya en la aplicación se le dará la opción de guardar su repositorio en una carpeta vacía dentro de su equipo.

4)A continuación debe de seleccionar el archivo llamado “Script BD SIMCIC.sql” ubicado en el repositorio y seleccionar la opción “abrir con SQL Server Management Studio”, luego debe de seleccionar todo el contenido del script y ejecutarlo.

5)Una vez ejecutado el script mencionado en la instrucción anterior debe de dirigirse a su repositorio en visual y buscar el archivo llamado “BD.settings” ubicado en la carpeta SIMCIC.DAL una vez en este archivo debe de seleccionar el botón con tres puntos ubicado a la derecha de la instrucción “Data Source=HARRYMORA\SQLEXPRESS;Initial Catalog=SIMCIC;Integrated Security=True;Max Pool Size=32767”, luego de esto se abrirá una ventana donde debe de seleccionar el nombre del servidor que debe ser el mismo nombre que usó para ingresar al SSMS, además debe seleccionar el nombre de la base de datos en este caso llamada “SIMCIC”, por último seleccionar el botón Test Connection y esperar por la respuesta que debe ser “Test connection success”.

# Despliegue:
A continuación se explica cómo desplegar la aplicación en el navegador:

1)Ya sea desde su repositorio local sincronizado con el remoto o una versión descargada desde el repositorio remoto, debe de ingresar a Visual Studio y hacer el “test connection” explicado en la instrucción 5 del proceso de instalación.

2)Posteriormente debe de dirigirse a la parte superior de Visual donde encontrará un botón de “Run” con un triángulo verde, debe seleccionar este botón y posteriormente seleccionar la opción de desplegarlo con Google Chrome. 

3)Si se siguieron los pasos correctamente se tuvo que haber desplegado una página de Google Chrome con el proyecto corriendo.
