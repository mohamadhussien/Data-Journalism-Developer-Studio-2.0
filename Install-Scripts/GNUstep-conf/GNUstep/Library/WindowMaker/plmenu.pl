("WindowMaker",
	("Informacja",
		("Informacja o WMaker...", INFO_PANEL),
		("Legalność...",           LEGAL_PANEL)
	),
	
	("Uruchom...", SHEXEC, "%a(Uruchom,Wpisz komende do uruchomienia:)"),
	("Terminal",   EXEC, "xterm -T 'Mój ulubiony terminal' -sb"),
	("Pulpity",    WORKSPACE_MENU),
	("Ekran",
		("Ukryj Pozostałe",         HIDE_OTHERS),
		("Pokaż wszystko",          SHOW_ALL),
		("Uporządkowanie icon",     ARRANGE_ICONS),
		("Odswież",                 REFRESH),
		("Zablokuj",                EXEC, "xlock -allowroot -usefirst"),
		("Zachowaj Sesje",          SAVE_SESSION),
		("Wyczyść zachowaną sesje", CLEAR_SESSION)
	),

	("Wygląd",
		("Tematy",          OPEN_MENU, "-noext /usr/share/WindowMaker/Themes $HOME/GNUstep/Library/WindowMaker/Themes WITH setstyle"),
		("Style",           OPEN_MENU, "-noext /usr/share/WindowMaker/Styles $HOME/GNUstep/Library/WindowMaker/Styles WITH setstyle"),
		("Ustawienia ikon", OPEN_MENU, "-noext /usr/share/WindowMaker/IconSets $HOME/GNUstep/Library/WindowMaker/IconSets WITH seticons"),
		("Tło",
			("Jednolite",
               	("Czarny",            EXEC, "wdwrite WindowMaker WorkspaceBack '(solid, black)'"),
               	("Niebieski",         EXEC, "wdwrite WindowMaker WorkspaceBack '(solid, '#505075')'"),
				("Indigo",            EXEC, "wdwrite WindowMaker WorkspaceBack '(solid, '#243e6c')'"),
				("Głęboko Niebieski", EXEC, "wdwrite WindowMaker WorkspaceBack '(solid, '#224477')'"),
               	("Fioletowy",         EXEC, "wdwrite WindowMaker WorkspaceBack '(solid, '#554466')'"),
               	("Pszeniczny",        EXEC, "wdwrite WindowMaker WorkspaceBack '(solid, 'wheat4')'"),
               	("Ciemno Szary",      EXEC, "wdwrite WindowMaker WorkspaceBack '(solid, '#333340')'"),
               	("Winny",             EXEC, "wdwrite WindowMaker WorkspaceBack '(solid, '#400020')'")
			),
			("Cieniowane",
				("Zachód Słońca",         EXEC, "wdwrite WindowMaker WorkspaceBack '(mvgradient, deepskyblue4, black, deepskyblue4, tomato4)'"),
				("Niebo",                 EXEC, "wdwrite WindowMaker WorkspaceBack '(vgradient, blue4, white)'"),
    			("Cieniowany Niebieski",  EXEC, "wdwrite WindowMaker WorkspaceBack '(vgradient, '#7080a5', '#101020')'"),
				("Cieniowane Indigo",     EXEC, "wdwrite WindowMaker WorkspaceBack '(vgradient, '#746ebc', '#242e4c')'"),
			   	("Cieniowany Fioletowy",  EXEC, "wdwrite WindowMaker WorkspaceBack '(vgradient, '#654c66', '#151426')'"),
    			("Cieniowany Pszeniczny", EXEC, "wdwrite WindowMaker WorkspaceBack '(vgradient, '#a09060', '#302010')'"),
    			("Cieniowany Szary",      EXEC, "wdwrite WindowMaker WorkspaceBack '(vgradient, '#636380', '#131318')'"),
    			("Cieniowany Winnny",     EXEC, "wdwrite WindowMaker WorkspaceBack '(vgradient, '#600040', '#180010')'")
			),
			("Obrazki", OPEN_MENU, "-noext /usr/share/WindowMaker/Backgrounds $HOME/GNUstep/Library/WindowMaker/Backgrounds WITH wmsetbg -u -t)")
		),
		("Zaoamiętanie Tematu",        EXEC, "getstyle -t $HOME/GNUstep/Library/WindowMaker/Themes/'%a(Nazwa tematu,Wpisz nazwe pliku:)'"),
		("Zapamiętanie Ustawień Ikon", EXEC, "geticonset $HOME/GNUstep/Library/WindowMaker/IconSets/'%a(Ustawienia ikon,Wpisz nazwe pliku:)'"),
                ("WPrefs", EXEC, "/usr/lib/GNUstep/Applications/WPrefs.app/WPrefs")   
	),
        ("WindowMaker", OPEN_MENU, "/etc/X11/WindowMaker/SuSE_wmapps"),                      
        ("SuSE", OPEN_MENU, "| xdg_menu --format WindowMaker --charset UTF-8"),                         
	("Wyjście",
		("Przeładowanie",    RESTART),
		("Wyjście...",       EXIT)
	)
)
