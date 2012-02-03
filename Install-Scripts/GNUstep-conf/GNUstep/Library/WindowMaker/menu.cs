// Text bellow is in czech, encoding ISO8829-2.
//
// Definice hlavního menu pro WindowMaker
//
// Syntaxe:
//
// <Titulek> <Příkaz> <Parametry>
//
// <Titulek> je jakýkoli řetěz znaků. Pokud obsahuje mezery musí být
// 	uzavřen do uvozovek (")
//
// <Příkaz> může být jeden z následujících: 
//	MENU - definice nové (sub)menu
//	END  - konec definice nového menu
//	EXEC <program> - provede se program
//	EXIT - ukončí se WindowMaker
//	RESTART [<window manager>] - restart WM nebo jiného správce oken
//	REFRESH - obnoví okna na pracovní ploše
//	ARRANGE_ICONS - srovná ikony
//	SHUTDOWN - ukončí všechny klienty i X server
//	WORKSPACE_MENU - přidá menu pro práci s pracovními plochami
//	SHOW_ALL - obnoví všechna skrytá okna
//	HIDE_OTHERS - skryje všechna okna (mimo zaměřeného, nebo toho, které
//                    bylo naposledy zaměřeno)
//
// <Parameters> je program, který bude proveden.
// 
// Každý příkaz MENU musí mít odpovídající END. 
// následující text je česky, kódován ISO8859-2.
#include <wmmacros>

"Hlavní menu" MENU
	"Info" MENU
		"Info Panel..." INFO_PANEL
		"Legal" LEGAL_PANEL	
	"Info" END
	"XTerm" EXEC xterm -sb
	"Pracovní plochy" WORKSPACE_MENU
	"Pracovní plocha" MENU
                "Skrýt ostatní" HIDE_OTHERS
                "Ukázat vše" SHOW_ALL
                "Srovnat ikony" ARRANGE_ICONS
                "Obnovit obrazovku" REFRESH
                "Zamknout" EXEC xlock -allowroot -usefirst
                "Uložit sezení" SAVE_SESSION
                "Smazat sezení" CLEAR_SESSION
        "Pracovní plocha" END
        "Vzhled" MENU
	        "Témata" OPEN_MENU -noext THEMES_DIR $HOME/GNUstep/Library/WindowMaker/Themes WITH setstyle
                "Styly" OPEN_MENU -noext STYLES_DIR $HOME/GNUstep/Library/WindowMaker/Styles WITH setstyle
                "Ikony" OPEN_MENU -noext ICON_SETS_DIR $HOME/GNUstep/Library/WindowMaker/IconSets WITH seticons
                "Pozadí" MENU
                        "Jedna barva" MENU
                                "Černá" WS_BACK '(solid, black)'
                                "Modrá"  WS_BACK '(solid, "#505075")'
                                "Indigo" WS_BACK '(solid, "#243e6c")'
			        "Purpurová" WS_BACK '(solid, "#554466")'
			        "Šedozelená" WS_BACK '(solid, "#554466")'
			        "Tmavě šedá" WS_BACK '(solid, "#333340")'
			        "Vínová"  WS_BACK '(solid, "#400020")'
                        "Jedna barva" END
                        "Přechod barev" MENU
                                "Západ slunce" WS_BACK '(mvgradient, deepskyblue4, black, deepskyblue4, tomato4)'
                                "Obloha" WS_BACK '(vgradient, blue4, white)'
                                "Odstíny modré" WS_BACK '(vgradient, "#7080a5", "#101020")'
                                "Odstíny indiga" WS_BACK '(vgradient, "#746ebc", "#242e4c")'
                                "Odstíny fialové" WS_BACK '(vgradient, "#654c66", "#151426")'
                                "Odstíny žluté" WS_BACK '(vgradient, "#a09060", "#302010")'
                                "Odstíny šedé" WS_BACK '(vgradient, "#636380", "#131318")'
                                "Odstíny vínové" WS_BACK '(vgradient, "#600040", "#180010")'
                        "Přechod barev" END
                        "Obrázky" OPEN_MENU -noext BACKGROUNDS_DIR $HOME/GNUstep/Library/WindowMaker/Backgrounds WITH wmsetbg -u -t
                "Pozadí" END
                "Uložit téma" SHEXEC getstyle -t $HOME/GNUstep/Library/WindowMaker/Themes/"%a(Theme name,Enter file name:)"
                "Uložit sadu ikon" SHEXEC geticonset $HOME/GNUstep/Library/WindowMaker/IconSets/"%a(IconSet name,Enter file name:)"
                "Konfigurační nástroj" EXEC /usr/lib/GNUstep/Applications/WPrefs.app/WPrefs
         "Vzhled" END
         "WindowMaker" OPEN_MENU /etc/X11/WindowMaker/SuSE_wmapps
         "SuSE" OPEN_MENU "| xdg_menu --format WindowMaker --charset UTF-8"
 	 "Konec"  MENU
// 'Restartovat' není opravdu příliš české slovo, najde někdo lepší ?
		"Restartovat" RESTART
		"Ukončit..."  EXIT
	 "Konec" END
"Hlavní menu" END
