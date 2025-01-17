﻿# language: ru

@lessons

Функционал: Интерактивная справка. Скриншоты.

Сценарий: Скриншоты

	* Привет! В этом уроке я расскажу тебе про настройки снятия скриншотов. Давай откроем второй экземпляр Ванессы в режиме обучения.
		И я открываю Vanessa Automation в режиме обучения
		
	* Эти настройки находятся тут.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаСкриншоты' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Настройки снятия скриншотов" UI Automation
			| 'Имя'                                        |
			| 'ДелатьСкриншотПриВозникновенииОшибки'       |
			| 'СниматьСкриншотКаждогоОкна1С'               |
			| 'ИспользоватьВнешнююКомпонентуДляСкриншотов' |
			| 'КаталогВыгрузкиСкриншотов'                  |
			| 'СпособСнятияСкриншотовВнешнейКомпонентой'   |
			| 'КомандаСделатьСкриншот'                     |
			| 'СниматьСкриншотыБраузера'                   |

	* Если данный флаг установлен - то при возникновении ошибки во время выполнения сценариев будут сниматься скриншоты.
		И я делаю подсветку нескольких элементов VA с их заголовком "Делать скриншот при возникновении ошибки" UI Automation
			| 'Имя'                                  |
			| 'ДелатьСкриншотПриВозникновенииОшибки' |
	* Данную опцию рекомендуется устанавливать при запуске тестов в CI контуре.

	* Продолжим. Если данный флаг установлен - то при возникновении ошибки будут сниматься скриншоты со всех запущенных сеансов 1С.
		И я делаю подсветку нескольких элементов VA с их заголовком "Делать скриншоты всех сеансов 1С" UI Automation
			| 'Имя'                          |
			| 'СниматьСкриншотКаждогоОкна1С' |
	* Данную опцию также рекомендуется устанавливать при запуске тестов в CI контуре.

	* Продолжим. Если данный флаг установлен - то скриншоты будут сниматься с помощью внешней компоненты VanessaExt.
		И я делаю подсветку нескольких элементов VA с их заголовком "Делать скриншот с помощью компоненты" UI Automation
			| 'Имя'                                        |
			| 'ИспользоватьВнешнююКомпонентуДляСкриншотов' |
	* Если флаг снят, то скриншоты будут сниматься с помощью дополнительных утилит.		
	* Данную опцию также рекомендуется устанавливать при запуске тестов в CI контуре.

	* Продолжим. Данный флаг управляет снятием скриншотов, когда во время выполнения сценария был подключен браузер.
		И я делаю подсветку нескольких элементов VA с их заголовком "Снятие скришотов браузера" UI Automation
			| 'Имя'                      |
			| 'СниматьСкриншотыБраузера' |
	* Данная настройка будет работать только тогда, когда браузер был запущен с ключом отладки.


	* Продолжим. В данном поле указывается каталог, в который будут сохраняться скриншоты.
		И я делаю подсветку нескольких элементов VA с их заголовком "Каталог скриншотов" UI Automation
			| 'Имя'                       |
			| 'КаталогВыгрузкиСкриншотов' |
	* Если поле не заполнено - то скриншоты сниматься не будут.

	* Продолжим. В данном поле выбирается как именно будут сниматься скриншоты с помощью внешней компоненты.		
		И я делаю подсветку нескольких элементов VA с их заголовком "Способ снятия скриншотов компонентой" UI Automation
			| 'Имя'                                      |
			| 'СпособСнятияСкриншотовВнешнейКомпонентой' |
	* Рекомендуется устанавливать значение - все окна клиента тестирования.

	* Продолжим. В данном поле указывается команда снятия скриншотов с помощью дополнительной утилиты.
		И я делаю подсветку нескольких элементов VA с их заголовком "Снятие скришотов внешней утилитой" UI Automation
			| 'Имя'                                      |
			| 'КомандаСделатьСкриншот' |
	* Данная настройка имеет смысл только если скриншоты будут сниматься с помощью дополнительной утилиты.


	* На этом всё, переходи к следующему уроку интерактивной справки.
