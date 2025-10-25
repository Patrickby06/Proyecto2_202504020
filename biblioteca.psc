Algoritmo biblioteca
	Definir c_libros, c_usuarios, id_libros, id_user Como Entero	
	
	// Datos de los libros
	c_libros <- 5;
	id_libros <- 1005
	Dimensionar titulo[25]
	Dimensionar autor[25]
	Dimensionar categoria[25]
	Dimensionar año[25]
	Dimensionar ejemplares[25]
	Dimensionar codigo[25]
	Dimensionar disponibles[25]
	Dimensionar reservados[25]
	Dimensionar prestados[25]
	Dimensionar fecha_prestamo[25]
	Dimensionar fecha_devolucion[25]
	Dimensionar prestamos_activos[25]
	Dimensionar contador_prestamos[25]
	
	// NUEVOS ARREGLOS PARA SEGUIMIENTO DE PRÉSTAMOS
	Dimensionar usuario_prestamo[25]  // Guarda el ID del usuario que tiene prestado el libro
	Dimensionar libro_prestamo[25]    // Guarda el ID del libro que tiene prestado el usuario
	Dimensionar contador_prestamos_usuario[25] // Lleva la cuenta de préstamos por usuario
	
	// Inicializar arreglos
	Para i <- 1 Hasta 25 Con Paso 1 Hacer
		prestamos_activos[i] <- Falso
		contador_prestamos[i] <- 0
		usuario_prestamo[i] <- 0
		libro_prestamo[i] <- 0
		contador_prestamos_usuario[i] <- 0
	FinPara
	
	// Libro 1
	titulo[1] <- "CALCULO TRASCENDENTES TEMPRANAS"
	autor[1] <- "James Stewart"
	categoria[1] <- "Ciencias"
	año[1] <- 2018
	ejemplares[1] <- 5
	codigo[1] <- 1001
	disponibles[1] <- ejemplares[1]
	reservados[1] <- 0
	prestados[1] <- 0
	
	// Libro 2
	titulo[2] <- "FISICA UNIVERSITARIA CON FISICA MODERNA"
	autor[2] <- "Sears y Zemansky"
	categoria[2] <- "Ciencias"
	año[2] <- 2018
	ejemplares[2] <- 4
	codigo[2] <- 1002
	disponibles[2] <- ejemplares[2]
	reservados[2] <- 0
	prestados[2] <- 0
	
	// Libro 3
	titulo[3] <- "EL PRINCIPITO"
	autor[3] <- "Antoine de Saint-Exupery"
	categoria[3] <- "Fabula"
	año[3] <- 1943
	ejemplares[3] <- 3
	codigo[3] <- 1003
	disponibles[3] <- ejemplares[3]
	reservados[3] <- 0
	prestados[3] <- 0
	
	// Libro 4
	titulo[4] <- "EL DIARIO DE ANA FRANK"
	autor[4] <- "Ana Frank"
	categoria[4] <- "Autobiografia"
	año[4] <- 1947
	ejemplares[4] <- 7
	codigo[4] <- 1004
	disponibles[4] <- ejemplares[4]
	reservados[4] <- 0
	prestados[4] <- 0
	
	// Libro 5
	titulo[5] <- "DON QUIJOTE DE LA MANCHA"
	autor[5] <- "Miguel de Cervantes"
	categoria[5] <- "Novela"
	año[5] <- 1605
	ejemplares[5] <- 2
	codigo[5] <- 1005
	disponibles[5] <- ejemplares[5]
	reservados[5] <- 0
	prestados[5] <- 0
	
	// Inicializar reservados
	Para i <- 1 hasta c_libros Con Paso 1 Hacer
		Si reservados[i] > 0 Entonces
			disponibles[i] = disponibles[i] - reservados[i]
		FinSi
	FinPara
	
	// Datos de los usuarios
	c_usuarios <- 5
	id_user <- 2005
	Dimensionar nombre[25]
	Dimensionar dpi[25]
	Dimensionar telefono[25]
	Dimensionar correo[25]
	Dimensionar fregistro[25]
	Dimensionar ucodigo[25]
	Dimensionar ureservados[25]
	Dimensionar uprestados[25]
	Dimensionar multa[25]
	
	// usuario 1
	nombre[1] <- "Juliana"
	dpi[1] <- 202506142
	telefono[1] <- 12345678
	correo[1] <- "juliana@gmail.com"
	fregistro[1] <- "22/10/2025"
	ucodigo[1] <- 2001
	ureservados[1] <- 0
	uprestados[1] <- 0
	multa[1] <- 0
	
	// usuario 2
	nombre[2] <- "Esteban"
	dpi[2] <- 202513648
	telefono[2] <- 87654321
	correo[2] <- "esteban@gmail.com"
	fregistro[2] <- "12/06/2025"
	ucodigo[2] <- 2002
	ureservados[2] <- 0
	uprestados[2] <- 0
	multa[2] <- 0
	
	// usuario 3
	nombre[3] <- "Joel"
	dpi[3] <- 202304978
	telefono[3] <- 12345678
	correo[3] <- "joel@gmail.com"
	fregistro[3] <- "29/03/2025"
	ucodigo[3] <- 2003
	ureservados[3] <- 0
	uprestados[3] <- 0
	multa[3] <- 0
	
	// usuario 4
	nombre[4] <- "Emilia"
	dpi[4] <- 202136549
	telefono[4] <- 8654321
	correo[4] <- "emilia@gmail.com"
	fregistro[4] <- "18/09/2025"
	ucodigo[4] <- 2004
	ureservados[4] <- 0
	uprestados[4] <- 0
	multa[4] <- 0
	
	// usuario 5
	nombre[5] <- "Jorgito"
	dpi[5] <- 202406473
	telefono[5] <- 12345678
	correo[5] <- "jorgito@gmail.com"
	fregistro[5] <- "20/10/2025"
	ucodigo[5] <- 2005
	ureservados[5] <- 0
	uprestados[5] <- 0
	multa[5] <- 0
	
	// Menu
	Definir auxiliar Como Caracter
	Definir op Como Entero
	
	Mientras op <> 5 Hacer
		Limpiar Pantalla
		Escribir "========================================="
		Escribir "        BIBLIOTECA UNIVERSITARIA         "
		Escribir "             LUZ DEL SABER               "
		Escribir "========================================="
		Escribir "1. Gestión de libros.                    "
		Escribir "2. Gestión de usuarios.                  "
		Escribir "3. Prestamos y Devoluciones.             " 
		Escribir "4. Reportes y Estadisticas.             "
		Escribir "5. Salir.                                "
		Escribir "========================================="
		Escribir "Ingrese la opcion que desea:             "
		Repetir
			Leer auxiliar
			Limpiar Pantalla
			Escribir "========================================="
			Escribir "        BIBLIOTECA UNIVERSITARIA         "
			Escribir "             LUZ DEL SABER               " 
			Escribir "========================================="
			Escribir "1. Gestor de libros.                     "
			Escribir "2. Gestor de usuarios.                   "
			Escribir "3. Prestamos y Devoluciones.             " 
			Escribir "4. Reportes y Estadisticas.             "
			Escribir "5. Salir.                                "
			Escribir "========================================="
			Escribir "¡Error! Ingrese una opcion valida (1-5)  "
		Hasta Que auxiliar='1' O auxiliar='2' O auxiliar='3' O auxiliar='4' O auxiliar='5'
		op <- ConvertirANumero(auxiliar)
		Segun op Hacer
			1:
				Limpiar Pantalla
				libros(c_libros, titulo, autor, categoria, año, ejemplares, codigo, id_libros, disponibles, reservados, prestados)
				Escribir "Presione una tecla para regresar al Menu..."
				Esperar Tecla
			2:
				Limpiar Pantalla
				usuarios(c_usuarios, nombre, dpi, telefono, correo, fregistro, ucodigo, id_user, ureservados, uprestados)
				Escribir "Presione una tecla para regresar al Menu..."
				Esperar Tecla
			3:
				Limpiar Pantalla
				prestamos(ucodigo, prestamos_activos, fecha_prestamo, fecha_devolucion, nombre, multa, c_libros, c_usuarios, titulo, autor, categoria, año, ejemplares, codigo, id_libros, disponibles, reservados, prestados, dpi, ureservados, uprestados, multa, usuario_prestamo, libro_prestamo, contador_prestamos_usuario)
				Escribir "Presione una tecla para regresar al Menu..."
				Esperar Tecla
			4:
				Limpiar Pantalla
				reportes(ucodigo, dpi, c_libros, c_usuarios, titulo, autor, categoria, codigo, disponibles, reservados, prestados, nombre, uprestados, ureservados, multa)
				Escribir "Presione una tecla para regresar al Menu..."
				Esperar Tecla
			5:
				Limpiar Pantalla
				Escribir '¡Hasta pronto!'
				Escribir 'Cerrando el programa...'
		Fin Segun
	FinMientras
FinAlgoritmo

// Gestor de libros
SubProceso libros(c_libros Por Referencia, titulo Por Referencia, autor Por Referencia, categoria Por Referencia, año Por Referencia, ejemplares Por Referencia, codigo Por Referencia, id_libros Por Referencia, disponibles Por Referencia, reservados Por Referencia, prestados Por Referencia)
	Definir auxiliar Como Caracter
	Definir op Como Entero
	
	Escribir "========================================="
	Escribir "            GESTOR DE LIBROS             "
	Escribir "========================================="
	Escribir "1. Registrar libro.                      "
	Escribir "2. Buscar libro.                         "
	Escribir "3. Eliminar libro.                       "
	Escribir "4. Listar libros.                        "
	Escribir "========================================="
	Escribir "Ingrese la opcion que desea:             "
	Repetir
		Leer auxiliar
		Limpiar Pantalla
		Escribir "========================================="
		Escribir "             GESTOR DE LIBROS            "
		Escribir "========================================="
		Escribir "1. Registrar libro.                      "
		Escribir "2. Buscar libro.                         "
		Escribir "3. Eliminar libro.                       "
		Escribir "4. Listar libros.                        "
		Escribir "========================================="
		Escribir "¡Error! Ingrese una opcion valida (1-4)  "
	Hasta Que auxiliar='1' O auxiliar='2' O auxiliar='3' O auxiliar='4' O auxiliar='5'
	op <- ConvertirANumero(auxiliar)
	Segun op Hacer
		1:
			Limpiar Pantalla
			b_registrar(c_libros, titulo, autor, categoria, año, ejemplares, codigo, id_libros, disponibles, reservados, prestados)
		2:
			Limpiar Pantalla
			b_buscar(c_libros, titulo, autor, categoria, año, ejemplares, codigo, id_libros, disponibles, reservados, prestados)
		3:
			Limpiar Pantalla
			b_eliminar(c_libros, titulo, autor, categoria, año, ejemplares, codigo, id_libros, disponibles, reservados, prestados)
		4:
			Limpiar Pantalla
			b_listado(c_libros, titulo, autor, categoria, año, ejemplares, codigo, id_libros, disponibles, reservados, prestados)
	Fin Segun
FinSubProceso 

SubProceso b_registrar(c_libros Por Referencia, titulo Por Referencia, autor Por Referencia, categoria Por Referencia, año Por Referencia, ejemplares Por Referencia, codigo Por Referencia, id_libros Por Referencia, disponibles Por Referencia, reservados Por Referencia, prestados Por Referencia)
    Definir titulo_n, autor_n, categoria_n Como Caracter
    Definir año_n, ejemplares_n Como Entero
    Definir existe Como Logico
    existe <- Falso
	
    Escribir "========================================="
    Escribir "                Registrar                "
    Escribir "========================================="
    Escribir "Titulo del libro: "
    Leer titulo_n
    Escribir "Autor del libro: "
    Leer autor_n
    Escribir "Categoria/género del libro: "
    Leer categoria_n
    Escribir "Año del libro: "
    Leer año_n
    Escribir "Numero de ejemplares: "
    Leer ejemplares_n
	
    Para i <- 1 Hasta c_libros Con Paso 1 Hacer
        Si titulo[i] = titulo_n Y año[i] = año_n Y autor[i] = autor_n Entonces
            existe <- Verdadero
        FinSi
    FinPara
	
    Si existe = Falso Entonces
        c_libros <- c_libros + 1
        titulo[c_libros] <- titulo_n
        autor[c_libros] <- autor_n
        categoria[c_libros] <- categoria_n
        año[c_libros] <- año_n
        ejemplares[c_libros] <- ejemplares_n
        id_libros <- id_libros + 1
        codigo[c_libros] <- id_libros
		disponibles[c_libros] <- ejemplares_n
		reservados[c_libros] <- 0
		prestados[c_libros] <- 0
        Escribir "¡Libro agregado con exito! ID: ", codigo[c_libros]
    SiNo
        Escribir "¡Error! Este libro ya ha sido agregado."
    FinSi
FinSubProceso

SubProceso b_buscar(c_libros Por Referencia, titulo Por Referencia, autor Por Referencia, categoria Por Referencia, año Por Referencia, ejemplares Por Referencia, codigo Por Referencia, id_libros Por Referencia, disponibles Por Referencia, reservados Por Referencia, prestados Por Referencia)
	Definir auxiliar, titulo_b, autor_b, categoria_b Como Caracter 
	Definir op, id_b Como Entero
	Definir encontrado Como Logico
	encontrado <- Falso
	
	Escribir "========================================="
	Escribir "                 Buscar                  "
	Escribir "========================================="
	Escribir "1. Buscar por titulo.                    "
	Escribir "2. Buscar por Autor.                     "
	Escribir "3. Buscar por categoria.                 "
	Escribir "4. Buscar por ID.                        "
	Escribir "========================================="
	Escribir "Ingrese la opcion que desea:             "
	Repetir
		Leer auxiliar
		Limpiar Pantalla
		Escribir "========================================="
		Escribir "                 Buscar                  "
		Escribir "========================================="
		Escribir "1. Buscar por titulo.                    "
		Escribir "2. Buscar por Autor.                     "
		Escribir "3. Buscar por categoria.                 "
		Escribir "4. Buscar por ID.                        "
		Escribir "========================================="
		Escribir "¡Error! Ingrese una opcion valida (1-4)  "
	Hasta Que auxiliar='1' O auxiliar='2' O auxiliar='3' O auxiliar='4' O auxiliar='5'
	op <- ConvertirANumero(auxiliar)
	Segun op Hacer
		1:
			Limpiar Pantalla
			Escribir "========================================="
			Escribir "                 Buscar                  "
			Escribir "========================================="
			Escribir "Ingrese el titulo del libro (puede ser parcial):	"
			Leer titulo_b
			Para i <- 1 Hasta c_libros Con Paso 1 Hacer
				Si SubCadena(titulo[i], 1, Longitud(titulo_b)) = titulo_b Entonces
					Escribir "¡Libro encontrado!"
					Escribir "========================================="
					Escribir "ID ",codigo[i]
					Escribir "Libro: ",titulo[i]
					Escribir "Autor: ",autor[i]
					Escribir "Género: ",categoria[i]
					Escribir "Año: ",año[i]
					Escribir "Disponibles: ",disponibles[i]
					Escribir "Reservados: ",reservados[i]
					Escribir "Prestados: ",prestados[i]
					Escribir "========================================="
					encontrado <- Verdadero
				FinSi
			FinPara
			Si encontrado = Falso Entonces
				Escribir "Libro no encontrado."
			FinSi
		2:
			Limpiar Pantalla
			Escribir "========================================="
			Escribir "                 Buscar                  "
			Escribir "========================================="
			Escribir "Ingrese el autor del libro: "
			Leer autor_b
			Para i <- 1 Hasta c_libros Con Paso 1 Hacer
				Si autor_b = autor[i] Entonces
					Escribir "¡Libro encontrado!"
					Escribir "========================================="
					Escribir "ID ",codigo[i]
					Escribir "Libro: ",titulo[i]
					Escribir "Autor: ",autor[i]
					Escribir "Género: ",categoria[i]
					Escribir "Año: ",año[i]
					Escribir "Disponibles: ",disponibles[i]
					Escribir "Reservados: ",reservados[i]
					Escribir "Prestados: ",prestados[i]
					Escribir "========================================="
					encontrado <- Verdadero
				FinSi
			FinPara
			Si encontrado = Falso Entonces
				Escribir "Libro no encontrado."
			FinSi
		3:
			Limpiar Pantalla
			Escribir "========================================="
			Escribir "                 Buscar                  "
			Escribir "========================================="
			Escribir "Ingrese la categoria/género del libro: "
			Leer categoria_b
			Para i <- 1 Hasta c_libros Con Paso 1 Hacer
				Si categoria_b = categoria[i] Entonces
					Escribir "¡Libro encontrado!"
					Escribir "========================================="
					Escribir "ID ",codigo[i]
					Escribir "Libro: ",titulo[i]
					Escribir "Autor: ",autor[i]
					Escribir "Género: ",categoria[i]
					Escribir "Año: ",año[i]
					Escribir "Disponibles: ",disponibles[i]
					Escribir "Reservados: ",reservados[i]
					Escribir "Prestados: ",prestados[i]
					Escribir "========================================="
					encontrado <- Verdadero
				FinSi
			FinPara
			Si encontrado = Falso Entonces
				Escribir "Libro no encontrado."
			FinSi
		4:
			Limpiar Pantalla
			Escribir "========================================="
			Escribir "                 Buscar                  "
			Escribir "========================================="
			Escribir "Ingrese el ID del libro: "
			Leer id_b
			Para i <- 1 Hasta c_libros Con Paso 1 Hacer
				Si id_b = codigo[i] Entonces
					Escribir "¡Libro encontrado!"
					Escribir "========================================="
					Escribir "ID ",codigo[i]
					Escribir "Libro: ",titulo[i]
					Escribir "Autor: ",autor[i]
					Escribir "Género: ",categoria[i]
					Escribir "Año: ",año[i]
					Escribir "Disponibles: ",disponibles[i]
					Escribir "Reservados: ",reservados[i]
					Escribir "Prestados: ",prestados[i]
					Escribir "========================================="
					encontrado <- Verdadero
				FinSi
			FinPara
			Si encontrado = Falso Entonces
				Escribir "Libro no encontrado."
			FinSi
	Fin Segun
FinSubProceso 

SubProceso b_eliminar(c_libros Por Referencia, titulo Por Referencia, autor Por Referencia, categoria Por Referencia, año Por Referencia, ejemplares Por Referencia, codigo Por Referencia, id_libros Por Referencia, disponibles Por Referencia, reservados Por Referencia, prestados Por Referencia)
    Definir i, posicion, id_b Como Entero
    Definir encontrado Como Logico
    encontrado <- Falso
	posicion <- 0
	i <- 1
	
	Escribir "========================================="
	Escribir "                Eliminar                 "
	Escribir "========================================="
    Escribir "Ingrese el ID del libro a eliminar:      "
    Leer id_b
	
    Mientras i <= c_libros Y encontrado = Falso Hacer
        Si codigo[i] = id_b Entonces
            posicion <- i
            encontrado <- Verdadero
        FinSi
        i <- i + 1
    FinMientras
	
	Si encontrado = Verdadero Entonces
		Si prestados[posicion] = 0 Entonces
			Si posicion < c_libros Entonces
				Para i <- posicion Hasta c_libros - 1 Hacer
					codigo[i] <- codigo[i+1]
					titulo[i] <- titulo[i+1]
					autor[i] <- autor[i+1]
					categoria[i] <- categoria[i+1]
					año[i] <- año[i+1]
					ejemplares[i] <- ejemplares[i+1]
					disponibles[i] <- disponibles[i+1]
					prestados[i]   <- prestados[i+1]
					reservados[i]  <- reservados[i+1]
				FinPara
			FinSi
			
			codigo[c_libros] <- 0
			titulo[c_libros] <- ""
			autor[c_libros] <- ""
			categoria[c_libros] <- ""
			año[c_libros] <- 0
			ejemplares[c_libros] <- 0
			disponibles[c_libros] <- 0
			prestados[c_libros] <- 0
			reservados[c_libros] <- 0
			
			c_libros <- c_libros - 1
			Escribir "Libro eliminado correctamente."
		SiNo
			Escribir "No fue posible eliminar el libro (hay ejemplares prestados)."
		FinSi
	SiNo	
		Escribir "No fue posible eliminar el libro (no se encontró el libro)."
	FinSi
FinSubProceso 

SubProceso b_listado(c_libros Por Referencia, titulo Por Referencia, autor Por Referencia, categoria Por Referencia, año Por Referencia, ejemplares Por Referencia, codigo Por Referencia, id_libros Por Referencia, disponibles Por Referencia, reservados Por Referencia, prestados Por Referencia)
	Definir i Como Entero
	i <- 0
	Escribir "========================================="
	Escribir "                 Listado                 "
	Escribir "========================================="
	Para i <- 1 Hasta c_libros Con Paso 1 Hacer
		Escribir "ID ",codigo[i]
		Escribir "Libro: ",titulo[i]
		Escribir "Autor: ",autor[i]
		Escribir "Género: ",categoria[i]
		Escribir "Año: ",año[i]
		Escribir "Disponibles: ",disponibles[i]
		Escribir "Reservados: ",reservados[i]
		Escribir "Prestados: ",prestados[i]
		Escribir "========================================="
	FinPara
FinSubProceso 

SubProceso usuarios(c_usuarios Por Referencia, nombre Por Referencia, dpi Por Referencia, telefono Por Referencia, correo Por Referencia, fregistro Por Referencia, ucodigo Por Referencia, id_user Por Referencia, ureservados Por Referencia, uprestados Por Referencia)
	Definir auxiliar Como Caracter
	Definir op Como Entero
	
	Limpiar Pantalla
	Escribir "========================================="
	Escribir "           GESTOR DE USUARIOS            "
	Escribir "========================================="
	Escribir "1. Registrar usuario.                    "
	Escribir "2. Consultar información.                "
	Escribir "3. Modificar datos.                      "
	Escribir "4. Listar usuarios.                      "
	Escribir "========================================="
	Escribir "Ingrese la opcion que desea:             "
	
	Repetir
		Leer auxiliar
		Limpiar Pantalla
		Escribir "========================================="
		Escribir "           GESTOR DE USUARIOS            "
		Escribir "========================================="
		Escribir "1. Registrar usuario.                    "
		Escribir "2. Consultar información.                "
		Escribir "3. Modificar datos.                      "
		Escribir "4. Listar usuarios.                      "
		Escribir "========================================="
		Escribir "¡Error! Ingrese una opcion valida (1-4)  "
	Hasta Que auxiliar = "1" O auxiliar = "2" O auxiliar = "3" O auxiliar = "4"
	op <- ConvertirANumero(auxiliar)
	
	Segun op Hacer
		1:
			u_registrar(c_usuarios, nombre, dpi, telefono, correo, fregistro, ucodigo, id_user, ureservados, uprestados)
		2:
			u_consultar(c_usuarios, nombre, dpi, telefono, correo, fregistro, ucodigo, id_user, ureservados, uprestados)
		3:
			u_datos(c_usuarios, nombre, dpi, telefono, correo, fregistro, ucodigo, id_user, ureservados, uprestados)
		4:
			u_listado(c_usuarios, nombre, dpi, telefono, correo, fregistro, ucodigo, id_user, ureservados, uprestados)
	FinSegun
FinSubProceso

SubProceso u_registrar(c_usuarios Por Referencia, nombre Por Referencia, dpi Por Referencia, telefono Por Referencia, correo Por Referencia, fregistro Por Referencia, ucodigo Por Referencia, id_user Por Referencia, ureservados Por Referencia, uprestados Por Referencia)
	Definir nombre_n, correo_n, fregistro_n Como Caracter
	Definir dpi_n, telefono_n Como Entero
	Definir existe Como Logico
	existe <- Falso
	
	Limpiar Pantalla
	Escribir "========================================="
	Escribir "                Registrar                "
	Escribir "========================================="
	Escribir "Nombre: "
	Leer nombre_n
	Escribir "DPI/Carné: "
	Leer dpi_n
	Escribir "Telefono: "
	Leer telefono_n
	Escribir "Correo: "
	Leer correo_n
	Escribir "Fecha de registro: "
	Leer fregistro_n
	
	Para i <- 1 Hasta c_usuarios Con Paso 1 Hacer
        Si dpi[i] = dpi_n Entonces
            existe <- Verdadero
        FinSi
    FinPara
	
	Si existe = Falso Entonces
        c_usuarios <- c_usuarios + 1
		nombre[c_usuarios] <- nombre_n
		dpi[c_usuarios] <- dpi_n
		telefono[c_usuarios] <- telefono_n
		correo[c_usuarios] <- correo_n
		fregistro[c_usuarios] <- fregistro_n
		id_user <- id_user + 1
		ucodigo[c_usuarios] <- id_user
		Escribir "¡Usuario guardado con éxito! ID: ",ucodigo[c_usuarios]
    SiNo
        Escribir "¡Error! Este usuario ya ha sido registrado."
    FinSi
FinSubProceso

SubProceso u_consultar(c_usuarios Por Referencia, nombre Por Referencia, dpi Por Referencia, telefono Por Referencia, correo Por Referencia, fregistro Por Referencia, ucodigo Por Referencia, id_user Por Referencia, ureservados Por Referencia, uprestados Por Referencia)
	Definir encontrado Como Logico
	Definir id_b Como entero
	encontrado <- Falso
	
	Limpiar Pantalla
	Escribir "========================================="
	Escribir "          Consultar informacion          "
	Escribir "========================================="
	Escribir "Ingrese el ID del usuario: "
	Leer id_b
	
	Para i <- 1 Hasta c_usuarios Con Paso 1 Hacer
		Si id_b = ucodigo[i] Entonces
			Escribir "¡Usuario encontrado!"
			Escribir "========================================="
			Escribir "Nombre: ",nombre[i]
			Escribir "DPI/Carné: ",dpi[i]
			Escribir "Telefono: ",telefono[i]
			Escribir "Correo: ",correo[i]
			Escribir "Fecha de registro: ",fregistro[i]
			Escribir "========================================="
			encontrado <- Verdadero
		FinSi
	FinPara
	Si encontrado = Falso Entonces
		Escribir "Usuario no encontrado."
		Escribir "========================================="
	FinSi
FinSubProceso

SubProceso u_datos(c_usuarios Por Referencia, nombre Por Referencia, dpi Por Referencia, telefono Por Referencia, correo Por Referencia, fregistro Por Referencia, ucodigo Por Referencia, id_user Por Referencia, ureservados Por Referencia, uprestados Por Referencia)
	Definir nombre_n, correo_n Como Caracter
	Definir  i, op, id_b, dpi_n, telefono_n Como Entero
	Definir encontrado Como Logico
	
	Limpiar Pantalla
	Escribir "========================================="
	Escribir "             Modificar datos             "
	Escribir "========================================="
	Escribir "Ingrese el ID del usuario que desea modificar: "
	Leer id_b
	
	Para i <- 1 Hasta c_usuarios Con Paso 1 Hacer
		Si id_b = ucodigo[i] Entonces
			encontrado <- Verdadero
			Escribir "¡Usuario encontrado!"
			Escribir "========================================="
			Escribir "             Datos actuales              " 
			Escribir "========================================="
			Escribir "Nombre: ",nombre[i]
			Escribir "DPI/Carné: ",dpi[i]
			Escribir "Telefono: ",telefono[i]
			Escribir "Correo: ",correo[i]
			Escribir "========================================="
			Escribir "¿Que desea modificar de este usuario?"
			Escribir "1. Nombre."
			Escribir "2. DPI/carné."
			Escribir "3. Telefono."
			Escribir "4. Correo."
			Escribir "Seleccione la opcion que desea:"
			Leer op
			
			Segun op Hacer
				1:
					Escribir "Nuevo nombre: "
					Leer nombre_n
					nombre[i] <- nombre_n
					Escribir "Operacion exitosa!"
				2:
					Escribir "Nuevo DPI/carné: "
					Leer dpi_n
					dpi[i] <- dpi_n
					Escribir "Operacion exitosa!"
				3:
					Escribir "Nuevo telefono: "
					Leer telefono_n
					telefono[i] <- telefono_n
					Escribir "Operacion exitosa!"
				4:
					Escribir "Nuevo correo: "
					Leer correo_n
					correo[i] <- correo_n
					Escribir "Operacion exitosa!"
				De Otro Modo:
					Escribir "¡Error! Ingrese una opcion valida (1-4)"
			Fin Segun
		FinSi
	FinPara
	Si encontrado = Falso Entonces
		Escribir "Usuario no encontrado."
		Escribir "========================================="
	FinSi
FinSubProceso

SubProceso u_listado(c_usuarios Por Referencia, nombre Por Referencia, dpi Por Referencia, telefono Por Referencia, correo Por Referencia, fregistro Por Referencia, ucodigo Por Referencia, id_user Por Referencia, ureservados Por Referencia, uprestados Por Referencia)
	Definir i Como Entero
	
	Limpiar Pantalla
	Escribir "========================================="
	Escribir "                 Listado                 "
	Escribir "========================================="
	Para i <- 1 Hasta c_usuarios Con Paso 1 Hacer
		Escribir "ID ",ucodigo[i]
		Escribir "Nombre: ",nombre[i]
		Escribir "DPI/Carné: ",dpi[i]
		Escribir "Telefono: ",telefono[i]
		Escribir "Correo: ",correo[i]
		Escribir "Fecha de registro: ",fregistro[i]
		Escribir "========================================="
	FinPara
FinSubProceso

SubProceso prestamos(ucodigo Por Referencia, prestamos_activos Por Referencia, fecha_prestamo Por Referencia, fecha_devolucion Por Referencia, nombre Por Referencia, multa Por Referencia, c_libros Por Referencia, c_usuarios Por Referencia, titulo Por Referencia, autor Por Referencia, categoria Por Referencia, año Por Referencia, ejemplares Por Referencia, codigo Por Referencia, id_libros Por Referencia, disponibles Por Referencia, reservados Por Referencia, prestados Por Referencia, dpi Por Referencia, ureservados Por Referencia, uprestados Por Referencia, multa Por Referencia, usuario_prestamo Por Referencia, libro_prestamo Por Referencia, contador_prestamos_usuario Por Referencia)
	Definir auxiliar Como Caracter
	Definir op Como Entero
	
	Limpiar Pantalla
	Escribir "========================================="
	Escribir "        PRESTAMOS Y DEVOLUCIONES         "
	Escribir "========================================="
	Escribir "1. Prestar libro.                       "
	Escribir "2. Devolver libro.                      "
	Escribir "3. Gestionar multas.                     "
	Escribir "4. Gestionar prestamos activos.          "
	Escribir "5. Listado de prestamos.                 "
	Escribir "========================================="
	Escribir "Ingrese la opcion que desea:             "
	
	Repetir
		Leer auxiliar
		Limpiar Pantalla
		Escribir "========================================="
		Escribir "        PRESTAMOS Y DEVOLUCIONES         "
		Escribir "========================================="
		Escribir "1. Prestar libro.                       "
		Escribir "2. Devolver libro.                      "
		Escribir "3. Gestionar multas.                     "
		Escribir "4. Gestionar prestamos activos.          "
		Escribir "5. Listado de prestamos.                 "
		Escribir "========================================="
		Escribir "¡Error! Ingrese una opcion valida (1-5)  "
	Hasta Que auxiliar = "1" O auxiliar = "2" O auxiliar = "3" O auxiliar = "4" O auxiliar = "5"
	op <- ConvertirANumero(auxiliar)
	
	Segun op Hacer
		1:
			prestar(ucodigo, prestamos_activos, fecha_prestamo, fecha_devolucion, nombre, multa, c_libros, c_usuarios, titulo, autor, categoria, año, ejemplares, codigo, id_libros, disponibles, reservados, prestados, dpi, ureservados, uprestados, multa, usuario_prestamo, libro_prestamo, contador_prestamos_usuario)
		2:
			devolver(ucodigo, prestamos_activos, fecha_prestamo, fecha_devolucion, nombre, c_libros, c_usuarios, titulo, autor, categoria, año, ejemplares, codigo, id_libros, disponibles, reservados, prestados, dpi, ureservados, uprestados, multa, usuario_prestamo, libro_prestamo, contador_prestamos_usuario)
		3:
			multas(ucodigo, nombre, multa, c_libros, c_usuarios, titulo, autor, categoria, año, ejemplares, codigo, id_libros, disponibles, reservados, prestados, dpi, ureservados, uprestados, multa)
		4:
			activos(ucodigo, nombre, prestamos_activos, fecha_prestamo, fecha_devolucion, c_libros, c_usuarios, titulo, autor, categoria, año, ejemplares, codigo, id_libros, disponibles, reservados, prestados, dpi, ureservados, uprestados, multa, usuario_prestamo, libro_prestamo)
		5: 
			listado_prestamos(nombre, c_libros, c_usuarios, titulo, autor, categoria, año, ejemplares, codigo, id_libros, disponibles, reservados, prestados, dpi, ureservados, uprestados, multa)
	FinSegun
FinSubProceso

SubProceso prestar(ucodigo Por Referencia, prestamos_activos Por Referencia, fecha_prestamo Por Referencia, fecha_devolucion Por Referencia, nombre Por Referencia, multa Por Referencia, c_libros Por Referencia, c_usuarios Por Referencia, titulo Por Referencia, autor Por Referencia, categoria Por Referencia, año Por Referencia, ejemplares Por Referencia, codigo Por Referencia, id_libros Por Referencia, disponibles Por Referencia, reservados Por Referencia, prestados Por Referencia, dpi Por Referencia, ureservados Por Referencia, uprestados Por Referencia, multa Por Referencia, usuario_prestamo Por Referencia, libro_prestamo Por Referencia, contador_prestamos_usuario Por Referencia)
	Definir id_b1, id_b2, pos_libro, pos_usuario, dia_p, mes_p, año_p, dia_dev, mes_dev, año_dev, k Como Entero
	Definir encontrado1, disponible, encontrado2, permitir, multita, espacio_encontrado Como Logico
	encontrado1 <- Falso
	disponible <- Falso
	encontrado2 <- Falso
	permitir <- Falso
	multita <- Falso
	espacio_encontrado <- Falso
	pos_libro <- 0
	pos_usuario <- 0
	
	Limpiar Pantalla
	Escribir "========================================="
	Escribir "              Prestar libro              "
	Escribir "========================================="
	Escribir "Ingrese el ID del libro: "
	Leer id_b1
	
	Para i <- 1 Hasta c_libros Con Paso 1 Hacer
		Si id_b1 = codigo[i] Entonces
			encontrado1 <- Verdadero
			pos_libro <- i
			Si disponibles[i] > 0 Entonces
				disponible <- Verdadero
			FinSi
		FinSi
	FinPara
	
	Si encontrado1 = Verdadero Y disponible = Verdadero Entonces
		Escribir "Ingrese el ID del usuario: "
		Leer id_b2
		
		Para j <- 1 Hasta c_usuarios Con Paso 1 Hacer
			Si id_b2 = ucodigo[j] Entonces
				encontrado2 <- Verdadero
				pos_usuario <- j
				Si uprestados[j] < 3 Entonces
					permitir <- Verdadero
					Si multa[j] <= 0 Entonces
						multita <- Falso
					FinSi
				FinSi
			FinSi
		FinPara
		
		Si encontrado2 = Verdadero Y permitir = Verdadero Y multita = Falso Entonces
			Escribir "========================================="
			Escribir "            Fecha de préstamo            "
			Escribir "========================================="
			Escribir "Ingrese el día (1-31): "
			Repetir
				Leer dia_p
				Escribir "Asegurese de escoger un numero entre (1-31): "
			Hasta Que dia_p >= 1 Y dia_p <= 31
			Escribir "========================================="
			Escribir "Ingrese el mes (1-12): "
			Repetir
				Leer mes_p
				Escribir "Asegurese de escoger un numero entre (1-12): "
			Hasta Que mes_p >= 1 Y mes_p <= 12
			Escribir "========================================="
			Escribir "Ingrese el año: (2025+)"
			Repetir
				Leer año_p
				Escribir "Asegurese de que el año sea el actual: "
			Hasta Que año_p = 2025
			
			dia_dev <- dia_p + 7
			mes_dev <- mes_p
			año_dev <- año_p
			
			Si (mes_p = 1 O mes_p = 3 O mes_p = 5 O mes_p = 7 O mes_p = 8 O mes_p = 10 O mes_p = 12) Y dia_dev > 31 Entonces
				dia_dev <- dia_dev - 31
				mes_dev <- mes_dev + 1
			SiNo Si (mes_p = 4 O mes_p = 6 O mes_p = 9 O mes_p = 11) Y dia_dev > 30 Entonces
					dia_dev <- dia_dev - 30
					mes_dev <- mes_dev + 1
				SiNo Si mes_p = 2 Entonces
						Si dia_dev > 28 Entonces
							dia_dev <- dia_dev - 28
							mes_dev <- mes_dev + 1
						FinSi
					FinSi
				FinSi
			FinSi
			
			Si mes_dev > 12 Entonces
				mes_dev <- mes_dev - 12
				año_dev <- año_dev + 1
			FinSi
			
			disponibles[pos_libro] <- disponibles[pos_libro] - 1
			prestados[pos_libro] <- prestados[pos_libro] + 1
			uprestados[pos_usuario] <- uprestados[pos_usuario] + 1
			
			fecha_prestamo[pos_libro] <- ConvertirATexto(dia_p) + "/" + ConvertirATexto(mes_p) + "/" + ConvertirATexto(año_p)
			fecha_devolucion[pos_libro] <- ConvertirATexto(dia_dev) + "/" + ConvertirATexto(mes_dev) + "/" + ConvertirATexto(año_dev)
			prestamos_activos[pos_libro] <- Verdadero
			
			// RELACIÓN USUARIO-LIBRO
			k <- 1
			espacio_encontrado <- Falso
			Mientras k <= 25 Y espacio_encontrado = Falso Hacer
				Si usuario_prestamo[k] = 0 Entonces  // Encontrar espacio vacío
					usuario_prestamo[k] <- id_b2       // ID del usuario
					libro_prestamo[k] <- id_b1         // ID del libro
					contador_prestamos_usuario[pos_usuario] <- contador_prestamos_usuario[pos_usuario] + 1
					espacio_encontrado <- Verdadero
				FinSi
				k <- k + 1
			FinMientras
			
			Limpiar Pantalla
			Escribir "========================================="
			Escribir "     ¡PRÉSTAMO REALIZADO CON ÉXITO!      "
			Escribir "========================================="
			Escribir "Libro: ", titulo[pos_libro]
			Escribir "Usuario: ", nombre[pos_usuario]
			Escribir "Fecha de préstamo: ", fecha_prestamo[pos_libro]
			Escribir "Fecha de devolución: ", fecha_devolucion[pos_libro]
			Escribir "========================================="
			
		SiNo
			Si encontrado2 = Falso Entonces
				Escribir "No se encontró al usuario, por favor regístrese primero en el sistema."
			SiNo Si permitir = Falso Entonces
					Escribir "Operación rechazada. Usted ya alcanzó el máximo de libros prestados (3)."
				SiNo Si multita = Verdadero Entonces
						Escribir "El sistema ha detectado que tiene multas pendientes, por favor pague las multas antes de prestar otro libro."
					FinSi
				FinSi
			FinSi
		FinSi
	SiNo
		Si encontrado1 = Falso Entonces
			Escribir "No se encontró el libro."
		SiNo
			Escribir "El libro no se encuentra disponible actualmente."
		FinSi
	FinSi
FinSubProceso

SubProceso devolver(ucodigo Por Referencia, prestamos_activos Por Referencia, fecha_prestamo Por Referencia, fecha_devolucion Por Referencia, nombre Por Referencia, c_libros Por Referencia, c_usuarios Por Referencia, titulo Por Referencia, autor Por Referencia, categoria Por Referencia, año Por Referencia, ejemplares Por Referencia, codigo Por Referencia, id_libros Por Referencia, disponibles Por Referencia, reservados Por Referencia, prestados Por Referencia, dpi Por Referencia, ureservados Por Referencia, uprestados Por Referencia, multa Por Referencia, usuario_prestamo Por Referencia, libro_prestamo Por Referencia, contador_prestamos_usuario Por Referencia)
	Definir id_b1, id_b2, pos_libro, pos_usuario, dia_dev, mes_dev, año_dev, dia_actual, mes_actual, año_actual, dias_retraso, k, dia_p, mes_p, año_p Como Entero
	Definir encontrado1, encontrado2, prestamo_activo, relacion_encontrada Como Logico
	encontrado1 <- Falso
	encontrado2 <- Falso
	prestamo_activo <- Falso
	relacion_encontrada <- Falso
	pos_libro <- 0
	pos_usuario <- 0
	dias_retraso <- 0
	
	Limpiar Pantalla
	Escribir "========================================="
	Escribir "             Devolver libro              "
	Escribir "========================================="
	Escribir "Ingrese el ID del libro a devolver: "
	Leer id_b1
	Escribir "Ingrese el ID del usuario: "
	Leer id_b2
	
	Para i <- 1 hasta c_libros Con Paso 1 Hacer
		Si id_b1 = codigo[i] Entonces
			encontrado1 <- Verdadero
			pos_libro <- i
			Si prestados[i] > 0 Entonces
				prestamo_activo <- Verdadero
				Si fecha_prestamo[i] <> "" Entonces
					dia_p <- ConvertirANumero(SubCadena(fecha_prestamo[i], 1, 2))
					mes_p <- ConvertirANumero(SubCadena(fecha_prestamo[i], 4, 5))
					año_p <- ConvertirANumero(SubCadena(fecha_prestamo[i], 7, 10))
				FinSi
			FinSi
		FinSi
	FinPara
	
	Para j <- 1 Hasta c_usuarios Con Paso 1 Hacer
		Si id_b2 = ucodigo[j] Entonces
			encontrado2 <- Verdadero
			pos_usuario <- j
		FinSi
	FinPara
	
	Si encontrado1 = Verdadero Y encontrado2 = Verdadero Y prestamo_activo = Verdadero Entonces
		Escribir "========================================="
		Escribir "              Fecha actual               "
		Escribir "========================================="
		Escribir "Ingrese el día actual (1-31): "
		Leer dia_actual
		Escribir "Ingrese el mes actual (1-12): "
		Leer mes_actual
		Escribir "Ingrese el año actual: "
		Leer año_actual
		
		dias_retraso <- calcular_multas(dia_p, mes_p, año_p, dia_actual, mes_actual, año_actual)
		
		Si dias_retraso > 0 Entonces
			multa[pos_usuario] <- multa[pos_usuario] + dias_retraso
			Escribir "Se detectaron ", dias_retraso, " días de retraso."
			Escribir "Multa generada: Q.", dias_retraso, ".00"
		SiNo
			Escribir "Devolución a tiempo. No se genera multa."
		FinSi
		
		disponibles[pos_libro] <- disponibles[pos_libro] + 1
		prestados[pos_libro] <- prestados[pos_libro] - 1
		uprestados[pos_usuario] <- uprestados[pos_usuario] - 1
		
		fecha_prestamo[pos_libro] <- ""
		fecha_devolucion[pos_libro] <- ""
		prestamos_activos[pos_libro] <- Falso
		
		// ELIMINAR RELACIÓN USUARIO-LIBRO
		k <- 1
		relacion_encontrada <- Falso
		Mientras k <= 25 Y relacion_encontrada = Falso Hacer
			Si usuario_prestamo[k] = id_b2 Y libro_prestamo[k] = id_b1 Entonces
				usuario_prestamo[k] <- 0
				libro_prestamo[k] <- 0
				contador_prestamos_usuario[pos_usuario] <- contador_prestamos_usuario[pos_usuario] - 1
				relacion_encontrada <- Verdadero
			FinSi
			k <- k + 1
		FinMientras
		
		Escribir "========================================="
		Escribir "     ¡DEVOLUCIÓN REALIZADA CON ÉXITO!    "
		Escribir "========================================="
		Escribir "Libro: ", titulo[pos_libro]
		Escribir "Usuario: ", nombre[pos_usuario]
		Escribir "Fecha de devolución: ", ConvertirATexto(dia_actual) + "/" + ConvertirATexto(mes_actual) + "/" + ConvertirATexto(año_actual)
		Escribir "========================================="
	SiNo
		Escribir "Error: No se encontró un préstamo activo para este libro y usuario."
	FinSi
FinSubProceso

SubProceso multas(ucodigo Por Referencia, nombre Por Referencia, multa Por Referencia, c_libros Por Referencia, c_usuarios Por Referencia, titulo Por Referencia, autor Por Referencia, categoria Por Referencia, año Por Referencia, ejemplares Por Referencia, codigo Por Referencia, id_libros Por Referencia, disponibles Por Referencia, reservados Por Referencia, prestados Por Referencia, dpi Por Referencia, ureservados Por Referencia, uprestados Por Referencia, multa Por Referencia)
	Definir op, id_b, pos_usuario, pago, i Como Entero
	Definir encontrado Como Logico
	encontrado <- Falso
	pos_usuario <- 0
	
	Limpiar Pantalla
	Escribir "========================================="
	Escribir "            GESTIONAR MULTAS             "
	Escribir "========================================="
	Escribir "1. Consultar multas pendientes."
	Escribir "2. Pagar multa."
	Escribir "3. Reporte de multas activas."
	Escribir "========================================="
	Escribir "Seleccione opción: "
	Leer op
	
	Segun op Hacer
		1:
			Limpiar Pantalla
			Escribir "========================================="
			Escribir "       Consultar multas pendientes       "
			Escribir "========================================="
			Escribir "Ingrese ID del usuario: "
			Leer id_b
			Para i <- 1 Hasta c_usuarios Con Paso 1 Hacer
				Si id_b = ucodigo[i] Entonces
					encontrado <- Verdadero
					pos_usuario <- i
					Escribir "Usuario: ",nombre[i]
					Escribir "Multa pendiente: Q.", multa[i],".00"
				FinSi
			FinPara
			Si encontrado = Falso Entonces
				Escribir "Usuario no encontrado."
			FinSi
			
		2:
			Limpiar Pantalla
			Escribir "========================================="
			Escribir "              Pagar multas               "
			Escribir "========================================="
			Escribir "Ingrese ID del usuario: "
			Leer id_b
			
			Para i <- 1 Hasta c_usuarios Con Paso 1 Hacer
				Si id_b = ucodigo[i] Entonces
					encontrado <- Verdadero
					pos_usuario <- i
					Escribir "Multa pendiente: Q.", multa[i],".00"
				FinSi
			FinPara
			
			Escribir "Ingrese monto a pagar: "
			Leer pago
			
			Para i <- 1 Hasta c_usuarios Con Paso 1 Hacer
				Si id_b = ucodigo[i] Entonces
					encontrado <- Verdadero
					Si pago <= multa[i] Entonces
						multa[i] <- multa[i] - pago
						Escribir "Pago realizado. Nueva multa pendiente: Q.", multa[i],".00"
					SiNo
						Escribir "Error: el pago excede la multa pendiente."
					FinSi
				FinSi
			FinPara
			Si encontrado = Falso Entonces
				Escribir "Usuario no encontrado."
			FinSi
			
		3:
			Limpiar Pantalla
			Escribir "========================================="
			Escribir "        Reporte de multas activas        "
			Escribir "========================================="
			Para i <- 1 Hasta c_usuarios Con Paso 1 Hacer
				Si multa[i] > 0 Entonces
					Escribir "ID: ",ucodigo[i]
					Escribir "Usuario: ", nombre[i]
					Escribir "DPI: ", dpi[i]
					Escribir "Multa: Q", multa[i]
					Escribir "==========================================="
				FinSi
			FinPara
	FinSegun
FinSubProceso

SubProceso activos(ucodigo Por Referencia, nombre Por Referencia, prestamos_activos Por Referencia, fecha_prestamo Por Referencia, fecha_devolucion Por Referencia, c_libros Por Referencia, c_usuarios Por Referencia, titulo Por Referencia, autor Por Referencia, categoria Por Referencia, año Por Referencia, ejemplares Por Referencia, codigo Por Referencia, id_libros Por Referencia, disponibles Por Referencia, reservados Por Referencia, prestados Por Referencia, dpi Por Referencia, ureservados Por Referencia, uprestados Por Referencia, multa Por Referencia, usuario_prestamo Por Referencia, libro_prestamo Por Referencia)
	Definir id_b, i, k, j Como Entero
	Definir encontrado, libro_encontrado Como Logico
	encontrado <- Falso
	
	Limpiar Pantalla
	Escribir "========================================="
	Escribir "       Consultar prestamos activos       "
	Escribir "========================================="
	Escribir "Ingrese ID del usuario: "
	Leer id_b
	
	Para i <- 1 Hasta c_usuarios Con Paso 1 Hacer
		Si id_b = ucodigo[i] Entonces
			encontrado <- Verdadero
			Escribir "Usuario: ", nombre[i]
			Escribir "DPI/carné: ", dpi[i]
			Escribir "Préstamos activos: ", uprestados[i]
			Escribir "==========================================="
			
			Si uprestados[i] > 0 Entonces
				Escribir "Libros prestados actualmente:"
				k <- 1
				Mientras k <= 25 Hacer
					Si usuario_prestamo[k] = id_b Entonces
						j <- 1
						libro_encontrado <- Falso
						Mientras j <= c_libros Y libro_encontrado = Falso Hacer
							Si codigo[j] = libro_prestamo[k] Entonces
								Escribir "- ", titulo[j]
								Escribir "  ",codigo[j]
								Escribir "  Fecha préstamo: ", fecha_prestamo[j]
								Escribir "  Fecha devolución: ", fecha_devolucion[j]
								Escribir ""
								libro_encontrado <- Verdadero
							FinSi
							j <- j + 1
						FinMientras
					FinSi
					k <- k + 1
				FinMientras
			FinSi
		FinSi
	FinPara
	
	Si encontrado = Falso Entonces
		Escribir "Usuario no encontrado."
	FinSi
FinSubProceso

SubProceso listado_prestamos(nombre Por Referencia, c_libros Por Referencia, c_usuarios Por Referencia, titulo Por Referencia, autor Por Referencia, categoria Por Referencia, año Por Referencia, ejemplares Por Referencia, codigo Por Referencia, id_libros Por Referencia, disponibles Por Referencia, reservados Por Referencia, prestados Por Referencia, dpi Por Referencia, ureservados Por Referencia, uprestados Por Referencia, multa Por Referencia)
	Limpiar Pantalla
	Escribir "==========================================="
	Escribir "                 Listado                   "
	Escribir "             Libros prestados              "
	Escribir "==========================================="
	
	Para i <- 1 Hasta c_libros Con Paso 1 Hacer
		Si prestados[i] > 0 Entonces
			Escribir "Libro: ", titulo[i]
			Escribir "Código: ", codigo[i]
			Escribir "Ejemplares prestados: ", prestados[i]
			Escribir "==========================================="
		FinSi
	FinPara
	
	Escribir "                 Listado"
	Escribir "             Libros usuarios"
	Escribir "==========================================="
	Para i <- 1 Hasta c_usuarios Con Paso 1 Hacer
		Si uprestados[i] > 0 Entonces
			Escribir "Usuario: ", nombre[i]
			Escribir "DPI: ", dpi[i]
			Escribir "Préstamos activos: ", uprestados[i]
			Escribir "==========================================="
		FinSi
	FinPara
FinSubProceso

SubProceso reportes(ucodigo Por Referencia, dpi Por Referencia, c_libros Por Referencia, c_usuarios Por Referencia, titulo Por Referencia, autor Por Referencia, categoria Por Referencia, codigo Por Referencia, disponibles Por Referencia, reservados Por Referencia, prestados Por Referencia, nombre Por Referencia, uprestados Por Referencia, ureservados Por Referencia, multa Por Referencia)
	Definir op, i, j, max_prestamos, pos_mas_prestado, total_libros, total_multas, usuarios_con_multa Como Entero
	Dimensionar categorias_unicas[25], contador_categoria[25]
	Definir encontrado, hay_prestamos, hay_reservas Como Logico
	
	Limpiar Pantalla
	Escribir "========================================="
	Escribir "          REPORTES Y ESTADISTICAS        "
	Escribir "========================================="
	Escribir "1. Libros más prestados."
	Escribir "2. Usuarios con préstamos activos."
	Escribir "3. Libros con reservas pendientes."
	Escribir "4. Total de libros por categoría."
	Escribir "5. Reporte de multas activas."
	Escribir "========================================="
	Escribir "Seleccione opción: "
	Leer op
	
	Segun op Hacer
		1:
			Limpiar Pantalla
			Escribir "========================================="
			Escribir "          Libros más prestados           "
			Escribir "========================================="
			
			max_prestamos <- 0
			pos_mas_prestado <- 0
			
			Para i <- 1 Hasta c_libros Hacer
				Si prestados[i] > max_prestamos Entonces
					max_prestamos <- prestados[i]
					pos_mas_prestado <- i
				FinSi
			FinPara
			
			Si max_prestamos > 0 Entonces
				Escribir "Libro más prestado:"
				Escribir "Título: ", titulo[pos_mas_prestado]
				Escribir "Autor: ", autor[pos_mas_prestado]
				Escribir "Veces prestado: ", prestados[pos_mas_prestado]
				Escribir ""
			FinSi
			
			Escribir "Todos los libros prestados:"
			Para i <- 1 Hasta c_libros Hacer
				Si prestados[i] > 0 Entonces
					Escribir "- ", titulo[i], " - Prestados: ", prestados[i]
				FinSi
			FinPara
			
		2:
			Limpiar Pantalla
			Escribir "========================================="
			Escribir "      Usuarios con prestamos activos     "
			Escribir "========================================="
			
			hay_prestamos <- Falso
			
			Para i <- 1 Hasta c_usuarios Hacer
				Si uprestados[i] > 0 Entonces
					hay_prestamos <- Verdadero
					Escribir "ID: ",ucodigo[i]
					Escribir "Usuario: ", nombre[i]
					Escribir "DPI/carné: ", dpi[i]
					Escribir "Préstamos activos: ", uprestados[i]
					Escribir "==========================================="
				FinSi
			FinPara
			
			Si hay_prestamos = Falso Entonces
				Escribir "No hay usuarios con préstamos activos en este momento."
			FinSi
			
		3:
			Limpiar Pantalla
			Escribir "========================================="
			Escribir "       Libros con reserva pendientes     "
			Escribir "========================================="
			
			hay_reservas <- Falso
			
			Para i <- 1 Hasta c_libros Hacer
				Si reservados[i] > 0 Entonces
					hay_reservas <- Verdadero
					Escribir "Libro: ", titulo[i]
					Escribir "Autor: ", autor[i]
					Escribir "Reservas pendientes: ", reservados[i]
					Escribir "Ejemplares disponibles: ", disponibles[i]
					Escribir "========================================="
				FinSi
			FinPara
			
			Si hay_reservas = Falso Entonces
				Escribir "No hay libros con reservas pendientes en este momento."
			FinSi
			
		4:
			Limpiar Pantalla
			Escribir "========================================="
			Escribir "      Total de libros por categoria      "
			Escribir "========================================="
			
			Para i <- 1 Hasta c_libros Hacer
				encontrado <- Falso
				Para j <- 1 Hasta c_libros Hacer
					Si categorias_unicas[j] = categoria[i] Entonces
						encontrado <- Verdadero
						contador_categoria[j] <- contador_categoria[j] + 1
					FinSi
				FinPara
				
				Si encontrado = Falso Entonces
					total_libros <- total_libros + 1
					categorias_unicas[total_libros] <- categoria[i]
					contador_categoria[total_libros] <- 1
				FinSi
			FinPara
			
			Para i <- 1 Hasta total_libros Hacer
				Escribir "Categoría: ", categorias_unicas[i]
				Escribir "Cantidad de libros: ", contador_categoria[i]
				Escribir "==========================================="
			FinPara
			
		5:
			Limpiar Pantalla
			Escribir "========================================="
			Escribir "        Reporte de multas activas        "
			Escribir "========================================="
			
			total_multas <- 0
			usuarios_con_multa <- 0
			
			Para i <- 1 Hasta c_usuarios Hacer
				Si multa[i] > 0 Entonces
					usuarios_con_multa <- usuarios_con_multa + 1
					total_multas <- total_multas + multa[i]
					Escribir "Usuario: ", nombre[i]
					Escribir "DPI: ", dpi[i]
					Escribir "Multa pendiente: Q", multa[i]
					Escribir "==========================================="
				FinSi
			FinPara
			
			Escribir "RESUMEN:"
			Escribir "Usuarios con multa: ", usuarios_con_multa
			Escribir "Total acumulado de multas pendientes: Q.", total_multas ,".00"
			
		De Otro Modo:
			Escribir "Opción no válida"
	Fin Segun
FinSubProceso

SubProceso dias_retraso <- calcular_multas(dia_prestamo, mes_prestamo, año_prestamo, dia_devolucion_real, mes_devolucion_real, año_devolucion_real)
    // calcular fecha de devolución original (7 días después del préstamo)
    dia_dev_original <- dia_prestamo + 7
    mes_dev_original <- mes_prestamo
    año_dev_original <- año_prestamo
    
    // ajustar fecha si se pasa del mes
    Si (mes_prestamo = 1 O mes_prestamo = 3 O mes_prestamo = 5 O mes_prestamo = 7 O mes_prestamo = 8 O mes_prestamo = 10 O mes_prestamo = 12) Y dia_dev_original > 31 Entonces
        dia_dev_original <- dia_dev_original - 31
        mes_dev_original <- mes_dev_original + 1
    SiNo Si (mes_prestamo = 4 O mes_prestamo = 6 O mes_prestamo = 9 O mes_prestamo = 11) Y dia_dev_original > 30 Entonces
            dia_dev_original <- dia_dev_original - 30
            mes_dev_original <- mes_dev_original + 1
        SiNo Si mes_prestamo = 2 Entonces
                Si dia_dev_original > 28 Entonces
                    dia_dev_original <- dia_dev_original - 28
                    mes_dev_original <- mes_dev_original + 1
                FinSi
            FinSi
        FinSi
    FinSi
    
    Si mes_dev_original > 12 Entonces
        mes_dev_original <- mes_dev_original - 12
        año_dev_original <- año_dev_original + 1
    FinSi
    
    dias_retraso <- 0
    
    // si es el mismo año y mes
    Si año_devolucion_real = año_dev_original Y mes_devolucion_real = mes_dev_original Entonces
        Si dia_devolucion_real > dia_dev_original Entonces
            dias_retraso <- dia_devolucion_real - dia_dev_original
        FinSi
    SiNo
        // si es diferente mes pero mismo año
        Si año_devolucion_real = año_dev_original Entonces
            // calcular días restantes del mes original + días del mes actual
            Si mes_prestamo = 1 O mes_prestamo = 3 O mes_prestamo = 5 O mes_prestamo = 7 O mes_prestamo = 8 O mes_prestamo = 10 O mes_prestamo = 12 Entonces
                dias_mes_original <- 31
            SiNo Si mes_prestamo = 4 O mes_prestamo = 6 O mes_prestamo = 9 O mes_prestamo = 11 Entonces
                    dias_mes_original <- 30
                SiNo
                    dias_mes_original <- 28
                FinSi
            FinSi
            
            dias_restantes_mes_original <- dias_mes_original - dia_dev_original
            dias_retraso <- dias_restantes_mes_original + dia_devolucion_real
        SiNo
            // si es diferente año (por si acaso)
            dias_retraso <- 30  // multa fija para casos complejos
        FinSi
    FinSi
    
    // asegurar que no sea negativo
    Si dias_retraso < 0 Entonces
        dias_retraso <- 0
    FinSi
FinSubProceso
