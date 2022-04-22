Proceso puntosRumy
	
	Escribir "Juego Rumy";
	Escribir " ";
	Escribir "El juego se basa en 10 rondas desde 2 cartas hasta 10 en donde";
	Escribir "Cada jugador intentará acumular la menor cantidad de puntos posibles";
	Escribir " ";

	Definir fila, columna Como Entero;
	Definir matriz Como Entero;
	Dimension matriz[10, 2];
	Definir puntuacion Como Entero;
	Definir i Como Entero;
	Definir j Como Entero;
	Definir juego Como Entero;
	Definir sumaColumna1 Como Entero;
	Definir sumaColumna2 Como Entero;
	Definir contador Como Entero;
	
	contador<-1;
	//Matriz para rellenar los datos
	Para fila<-0 Hasta 9 Con Paso 1 Hacer
		juego<-1;
		Escribir "Ronda: ", contador;
		contador<-contador+1;
		para columna<-0 Hasta 1 con paso 1 Hacer
			Escribir "Escriba la puntuacion del jugador ", juego;
			Leer puntuacion;
			matriz[fila,columna]<-puntuacion;
			juego<-juego+1;
			Limpiar Pantalla;
		FinPara
	FinPara

	//Matriz con datos para mostrar
	Para i<-0 hasta 9 con paso 1 Hacer
		para j<-0 hasta 1 con paso 1 Hacer
			Escribir matriz[i,j], " " Sin Saltar;
		FinPara
		Escribir " ";
	FinPara
	sumaColumna1<-0;
	sumaColumna2<-0;
	//Matriz para sumar la primera columna
	Para i<-0 hasta 9 con paso 1 Hacer
		para j<-0 hasta 0 con paso 1 Hacer
			sumaColumna1<-sumaColumna1+matriz[i,j];
		FinPara
	FinPara
	Escribir "El puntaje del jugador 1 fue: ", sumaColumna1;
	//Matriz para sumar la segunda columna
	Para i<-0 hasta 9 con paso 1 Hacer
		para j<-1 hasta 1 con paso 1 Hacer
			sumaColumna2<-sumaColumna2+matriz[i,j];
		FinPara
	FinPara
	Escribir "El puntaje del jugador 2 fue: ", sumaColumna2;
	
	//Condicional que me determina el ganador segun las reglas
	//El que tiene menor cantidad de puntos acumulados gana el juego
	
	Si sumaColumna1 < sumaColumna2 Entonces
		Escribir "Jugador 1 gana";
	sino
		Si sumaColumna1 = sumaColumna2 Entonces
			Escribir "Empate";
		SiNo
			Si sumaColumna1 > sumaColumna2 Entonces
				Escribir "Jugador 2 gana";
			FinSi
		FinSi
	FinSi
FinProceso
