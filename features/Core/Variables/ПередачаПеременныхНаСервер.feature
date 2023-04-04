﻿# language: ru
# encoding: utf-8
#parent uf:
@UF4_Библиотека_шагов
#parent ua:
@UA5_Работать_с_контекстом_фич

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb




Функционал: Передача переменных на сервер



Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой


Сценарий: Передача переменных на сервер. Основная проверка.
		
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "Переменные/Переменные08"
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

	Тогда в логе сообщений TestClient есть строки:
		| 'КаталогИнструментов1 = $КаталогИнструментов$'  |
		| 'ИмяПеременной2 = ПромСтрока1'                  |
		| 'ИмяПеременной3 = ПромСтрока1'                  |
		| 'ИмяПеременной4 = ПромСтрока2'                  |
		| 'ИмяПеременной5 = ПромСтрока2'                  |
		| 'КаталогИнструментов11 = $КаталогИнструментов$' |
		| 'ИмяПеременной22 = ПромСтрока1'                 |
		| 'ИмяПеременной33 = ПромСтрока1'                 |
		| 'ИмяПеременной44 = ПромСтрока2'                 |
		| 'ИмяПеременной55 = ПромСтрока2'                 |
	