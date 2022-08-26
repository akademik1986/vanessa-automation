﻿# language: ru
# encoding: utf-8
#parent uf:
@UF11_Прочее
#parent ua:
@UA45_Прочая_активность_вообще

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb
@IgnoreOn8312
@IgnoreOn8313

Функциональность: Вывод служебных сообщений всех клиентов тестирования с помощью параметра out

скаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Вывод служебных сообщений всех клиентов тестирования с помощью параметра out
	* Подготовка
		Дано Я закрыл все окна клиентского приложения
		И я закрываю сеанс TESTCLIENT
		Когда я запускаю служебный сеанс TestClient с ключом TestManager в той же базе
		Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой

	* Загрузка служебной фичи
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "Log/ДляПроверкиВыводаВЛог01"
		И В открытой форме я перехожу к закладке с заголовком "Сервис"
		И я перехожу к закладке с именем "СтраницаКлиентыТестирования"

		И Я запоминаю значение выражения '$КаталогИнструментов$\temp' в переменную "ИмяКаталога"
		Если файл "$ИмяКаталога$" существует тогда
		Иначе	
			И я создаю каталог "$ИмяКаталога$"

		И я очищаю каталог "$ИмяКаталога$"
			
		И в поле с именем 'КаталогФайловВыводаСлужебныхСообщений' я ввожу текст '$ИмяКаталога$'
		И я перехожу к следующему реквизиту
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

	* Проверка, что есть файл
		И я получаю данные файла "Этот клиент*.txt" в каталоге '$ИмяКаталога$'		

	* Завершение
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ЗакрытьПодключенныйTestClient/ЗакрытьПодключенныйTestClient"
		
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

Сценарий: Активизация основного клиента
	И я закрываю TestClient "TM"
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'




