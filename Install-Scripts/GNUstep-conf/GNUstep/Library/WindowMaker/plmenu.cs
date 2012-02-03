(
"Hlavní menu",
	(
	"Info",
		("Info Panel...", INFO_PANEL),
		("Legal", LEGAL_PANEL)
	),
	("Spustit...", SHEXEC, "%a(Spustit, Zadajte příkaz:)"),
	(
	"XTerm",
	EXEC,
	"xterm -sb"
	),
	("Pracovní plochy", WORKSPACE_MENU),
	(
	"Pracovní plocha",
                ("Skrýt ostatní", HIDE_OTHERS),
                ("Ukázat vše", SHOW_ALL),
                ("Srovnat ikony", ARRANGE_ICONS),
                ("Obnovit obrazovku", REFRESH),
                (
                "Zamknout",
                EXEC,
                "xlock -allowroot -usefirst"
                ),
                ("Uložit sezení", SAVE_SESSION),
                ("Smazat sezení", CLEAR_SESSION)
        ),
        (
        "Vzhled",
	        (
	        "Témata",
	        OPEN_MENU,
	        "-noext /usr/share/WindowMaker/Themes  $HOME/GNUstep/Library/WindowMaker/Themes WITH setstyle"
	        ),
                (
                "Styly",
                OPEN_MENU,
                "-noext /usr/share/WindowMaker/Styles  $HOME/GNUstep/Library/WindowMaker/Styles WITH setstyle"
                ),
                (
                "Ikony",
                OPEN_MENU,
                "-noext /usr/share/WindowMaker/IconSets  $HOME/GNUstep/Library/WindowMaker/IconSets WITH seticons"
                ),
                (
                "Pozadí",
                        (
                        "Jedna barva",
                                (
                                "Černá",
                                EXEC,
                                "wdwrite WindowMaker WorkspaceBack  '(solid, black)'"
                                ),
                                (
                                "Modrá",
                                EXEC,
                                "wdwrite WindowMaker WorkspaceBack  '(solid, \"#505075\")'"
                                ),
                                (
                                "Indigo",
                                EXEC,
                                "wdwrite WindowMaker WorkspaceBack  '(solid, \"#243e6c\")'"
                                ),
			        (
			        "Purpurová",
			        EXEC,
			        "wdwrite WindowMaker WorkspaceBack  '(solid, \"#554466\")'"
			        ),
			        (
			        "Šedozelená",
			        EXEC,
			        "wdwrite WindowMaker WorkspaceBack  '(solid, \"#554466\")'"
			        ),
			        (
			        "Tmavě šedá",
			        EXEC,
			        "wdwrite WindowMaker WorkspaceBack  '(solid, \"#333340\")'"
			        ),
			        (
			        "Vínová",
			        EXEC,
			        "wdwrite WindowMaker WorkspaceBack  '(solid, \"#400020\")'"
			        )
                        ),
                        (
                        "Přechod barev",
                                (
                                "Západ slunce",
                                EXEC,
                                "wdwrite WindowMaker WorkspaceBack  '(mvgradient, deepskyblue4, black, deepskyblue4, tomato4)'"
                                ),
                                (
                                "Obloha",
                                EXEC,
                                "wdwrite WindowMaker WorkspaceBack  '(vgradient, blue4, white)'"
                                ),
                                (
                                "Odstíny modré",
                                EXEC,
                                "wdwrite WindowMaker WorkspaceBack  '(vgradient, \"#7080a5\", \"#101020\")'"
                                ),
                                (
                                "Odstíny indiga",
                                EXEC,
                                "wdwrite WindowMaker WorkspaceBack  '(vgradient, \"#746ebc\", \"#242e4c\")'"
                                ),
                                (
                                "Odstíny fialové",
                                EXEC,
                                "wdwrite WindowMaker WorkspaceBack  '(vgradient, \"#654c66\", \"#151426\")'"
                                ),
                                (
                                "Odstíny žluté",
                                EXEC,
                                "wdwrite WindowMaker WorkspaceBack  '(vgradient, \"#a09060\", \"#302010\")'"
                                ),
                                (
                                "Odstíny šedé",
                                EXEC,
                                "wdwrite WindowMaker WorkspaceBack  '(vgradient, \"#636380\", \"#131318\")'"
                                ),
                                (
                                "Odstíny vínové",
                                EXEC,
                                "wdwrite WindowMaker WorkspaceBack  '(vgradient, \"#600040\", \"#180010\")'"
                                )
                        ),
                        (
                        "Obrázky",
                        OPEN_MENU,
                        "-noext /usr/share/WindowMaker/Backgrounds  $HOME/GNUstep/Library/WindowMaker/Backgrounds WITH wmsetbg -u -t"
                        )
                ),
                ("Uložit téma", SHEXEC, "getstyle -t $HOME/GNUstep/Library/WindowMaker/Themes/\"%a(Theme name)\""),
                ("Uložit sadu ikon", SHEXEC, "geticonset $HOME/GNUstep/Library/WindowMaker/IconSets/\"%a(IconSet name)\""),
                (
                "Konfigurační nástroj",
                EXEC,
                "/usr/lib/GNUstep/Applications/WPrefs.app/WPrefs"
                )
         ),
         (
         "WindowMaker",
         OPEN_MENU,
         "/etc/X11/WindowMaker/SuSE_wmapps"
         ),
         (
         "SuSE",
         OPEN_MENU,
         "| xdg_menu --format WindowMaker --charset UTF-8"
         ),
 	 (
 	 "Konec",
		("Restartovat", RESTART),
		("Ukončit...", EXIT)
	 )
)
