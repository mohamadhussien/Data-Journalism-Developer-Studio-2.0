//
// Definición del Menu de Aplicaciones para WindowMaker (en ESPAÑOL)
//
// La sintaxis es:
//
// <Título> <Comando> <Parámetros> , donde :
//
//
// <Título> cadena de texto usada como el título.Tiene que estar entre ""
//
// <Comando> un comando de los siguientes : 
//	MENU - comienza la definición del (sub)menu.
//	END  - termina la definición del (sub)menu.
//	EXEC <programa> - ejecuta un programa externo
//	EXIT - sale del entorno gráfico
//	RESTART [<entorno gráfico>] - reinicializa WindowMaker o arranca otro entorno
//	REFRESH - refresca el escritorio
//	ARRANGE_ICONS - ordena los iconos del escritorio
//	SHUTDOWN - cierra todas las aplicaciones (y cierra la sesión de las X)
//	WORKSPACE_MENU - Añade un submenú para las operaciones del area de trabajo
//	SHOW_ALL - muestra todas las ventanas en el área de trabajo
//	HIDE_OTHERS - oculta toda las ventanas del area de trabajo,
//		excepto la que tiene el foco (o la ultima que haya recibido el foco)
//
// <Parametros> es el programa a ejecutar.
// 
// ** Opciones para a linea de comando EXEC :
// %s - se sustituye por la corriente seleción. Si la selección no es posible ,
//      el comando es cancelado
// %w - se sustituye con la corrente ID de la ventana selecionada . Si no hay 
//      ventanas selecionadas , no se devuolve nada. 
//
// Se puede anular carácteres especiales (como % e ") con el caracter \ :
// ejemplo: xterm -T "\"Terminal X\""
//
// A cada estamento de MENU se debe de corresponder un estamento END al final
// Observa los ejemplos:

#include <wmmacros>

"Menu Principal" MENU

	"Informacion ..." MENU
		"Copyright..." SHEXEC xmessage -center -font variable -title \
	'WindowMaker 'WM_VERSION -file ~/GNUstep/Library/WindowMaker/Copyright
	"Informacion ..." END

	"Terminal X" EXEC xterm

	"Configurar Area de Trabajo ..." MENU
		"Fondo ..." MENU
			"Ninguno" EXEC CLEARROOT
			"Negro" WS_BACK '(solid, black)'
			"Azul"  WS_BACK '(solid, "#505075")'
			"Violeta"  WS_BACK '(solid, "#554466")'
			"Amarillo"  WS_BACK '(solid, wheat4)'
			"Gris oscuro"  WS_BACK '(solid, "#333340")'
			"Granate"  WS_BACK '(solid, "#400020")'
		"Fondo ..." END
#if (DEPTH>8)
// Debes de reinicializar para que los cambios se efectúen
#include <gradients.menu>
#endif
		"Cerrar otras" HIDE_OTHERS
		"Mostrar todas" SHOW_ALL
		"Alinear iconos" ARRANGE_ICONS
		"Refrescar" REFRESH
		"Salvapantallas" EXEC xlock -allowroot -usefirst
		"Grabar Area de trabajo" SAVE_SESSION
	"Configurar Area de Trabajo ..." END
        "Areas de Trabajo ..." WORKSPACE_MENU
        "WPrefs" EXEC /usr/lib/GNUstep/Applications/WPrefs.app/WPrefs
        "WindowMaker" OPEN_MENU /etc/X11/WindowMaker/SuSE_wmapps
        "SuSE" OPEN_MENU "| xdg_menu --format WindowMaker --charset UTF-8"
	"Salir ..."	MENU
		"Reinicializar" RESTART
		"Salir"  EXIT
	"Salir ..." END
"Menu Principal" END
