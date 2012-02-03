/*
 * Определение корневого меню для WindowMaker
 *
 * Синтаксис:
 *
 * <Имя> <Команда> <Параметры>
 *
 * <Имя> - любая строка для заголовка меню. Должна быть заключена в парные ",
 * 	если содержит пробелы
 *
 * <Команда> одна из следующего набора команд: 
 *	MENU - начинает определение (под)меню
 *	OPEN_MENU - считывает меню из файла или содержания каталога 
 *	END  - заканчивает определение (под)меню
 *	WORKSPACE_MENU - добавляет подменю для операций с Рабочим местом
 *	EXEC <program> - выполняет внешнюю программу
 *	SHEXEC <command> - executes a shell command (like gimp > /dev/null)
 *	EXIT - завершает работу менеджера окон
 *	RESTART [<window manager>] - перезапускает WindowMaker или запускает
 *			другой менеджер окон
 *	REFRESH - обновляет видимое пространство 
 *	ARRANGE_ICONS - упорядочивает значки Рабочего места
 *	SHUTDOWN - убивает все приложения ( и завершает сессию X)
 *	SHOW_ALL - показывает все окна Рабочего места
 *	HIDE_OTHERS - делает невидимыми все окна Рабочего места, кроме имеющего
 *		фокус ( или последнего имевшего)
 *
 * <Параметры> собственно программа для выполнения.
 *
 * ** Опции для командной строки в EXEC:
 * %s - подтановка текущего выделения
 * %a(message) - открывает окно ввода с сообщением и выполняет подстановку 
 *		 набранного
 * %w - заменить на XID окна, имеющего фокус в данный момент
 *
 * Вы можете избежать специальной интерпретации знаков ( таких как % и ") с 
 * помощью знака \ : Напр.: xterm -T "\"Hello World\""
 *
 * Вы можете также использовать escape-последовательности, как \n
 *
 * Каждое предложение MENU должно иметь одно соответствующее предложение END 
 *	в конце определения.
 * Пример:
 *
 * "Тест" MENU
 *	"XTerm" EXEC xterm
 *		 // создает подменю с содержанием /usr/openwin/bin
 *	"XView apps" OPEN_MENU "/usr/openwin/bin"
 *		// вставляет style.menu в под этим именем
 *	"Стиль" OPEN_MENU style.menu
 * "Тест" END
 */

#include "wmmacros"

"Приложения" MENU
	"Информация" MENU
		"Info Panel..." INFO_PANEL
		"Legal" LEGAL_PANEL
	"Информация" END
	"XTerm" EXEC xterm -sb 
	"Рабочие места" WORKSPACE_MENU
	"Рабочее место" MENU
		"Убрать остальные" HIDE_OTHERS
		"Показать все" SHOW_ALL
		"Упорядочить значки" ARRANGE_ICONS
		"Обновить" REFRESH
		"Запереть" EXEC xlock -allowroot -usefirst
		"Сохранить Рабочее место" SAVE_SESSION
	"Рабочее место" END

	"Внешний вид" MENU
		"Фон" MENU
			"Однотонный" MENU
                        	"Черный" WS_BACK '(solid, black)'
                        	"Синий"  WS_BACK '(solid, "#505075")'
                        	"Сиреневый" WS_BACK '(solid, "#554466")'
                        	"Пшеничный"  WS_BACK '(solid, "wheat4")'
                        	"Темно-серый"  WS_BACK '(solid, "#333340")'
                        	"Винный" WS_BACK '(solid, "#400020")'
			"Однотонный" END
			"Градиент" MENU
				"Небо" WS_BACK '(mvgradient, blue4, red3, orange3)'
				"Огонь" WS_BACK '(vgradient, red4, yellow3)'
			"Градиент" END
		"Фон" END
		"Стили" OPEN_MENU styles.menu
                "WPrefs" EXEC /usr/lib/GNUstep/Applications/WPrefs.app/WPrefs         
	"Внешний вид" END
        "WindowMaker" OPEN_MENU /etc/X11/WindowMaker/SuSE_wmapps              
        "SuSE" OPEN_MENU "| xdg_menu --format WindowMaker --charset UTF-8"                        

	"Выход"	MENU
		"Перезапустить" RESTART
		"Завершить работу..."  EXIT 
	"Выход" END
"Приложения" END
