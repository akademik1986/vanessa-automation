﻿&НаКлиенте
Перем СчетчикОжиданияФоновогоФормированияОтчета;
&НаКлиенте
Перем ТаймаутОжиданияФоновогоФормированияОтчета;
&НаКлиенте
Перем ИмяТабличногоДокумента;
&НаКлиенте
Перем АдресТабличногоДокумента;
&НаКлиенте
Перем ТаймаутОжиданияОжиданияТекстаОбласти;

//начало текста модуля
//Спасибо @naa4sb и Ивану Корниенко за данный модуль.

#Область Служебные_функции_и_процедуры

&НаКлиенте
// контекст фреймворка Vanessa-Behavior
Перем Ванесса;
 
&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Behavior.
Перем КонтекстСохраняемый Экспорт;

&НаКлиенте
// Массив, в котором сохранены идентификаторы фоновых заданий на момент начала ожидания их завершения
Перем КонтролируемыеИдентификаторыФоновыхЗадания;

&НаКлиенте
// Служебная функция.
Функция ДобавитьШагВМассивТестов(МассивТестов,Снипет,ИмяПроцедуры,ПредставлениеТеста = Неопределено,Транзакция = Неопределено,Параметр = Неопределено)
	Структура = Новый Структура;
	Структура.Вставить("Снипет",Снипет);
	Структура.Вставить("ИмяПроцедуры",ИмяПроцедуры);
	Структура.Вставить("ИмяПроцедуры",ИмяПроцедуры);
	Структура.Вставить("ПредставлениеТеста",ПредставлениеТеста);
	Структура.Вставить("Транзакция",Транзакция);
	Структура.Вставить("Параметр",Параметр);
	МассивТестов.Добавить(Структура);
КонецФункции

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,Транзакция,Параметр);

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ОткрылосьОкноПредупрежденияСЗаголовкомИТекстом(Парам01,Парам02)","ОткрылосьОкноПредупрежденияСЗаголовкомИТекстом","Дано Открылось окно предупреждения с заголовком ""Заголовок"" и текстом ""Текст""","Шаг проверяет, что сейчас на экране появилось окно предупреждения.","UI.Всплывающие окна");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ТабличныйДокументФормыСИменемСталРавенМакетуСИменем(Парам01,Парам02)","ТабличныйДокументФормыСИменемСталРавенМакетуСИменем","Дано Табличный документ формы с именем ""РеквизитТабличныйДокумент"" стал равен макету с именем ""ИмяМакета""");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ТабличныйДокументСталРавенМакету(Парам01,Парам02)","ТабличныйДокументСталРавенМакету","Дано Табличный документ ""РеквизитТабличныйДокумент"" стал равен макету ""ИмяМакета""");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ТабличныйДокументРавенМакету(Парам01,Парам02)","ТабличныйДокументРавенМакету","Дано Табличный документ ""РеквизитТабличныйДокумент"" равен макету ""ИмяМакета""","Шаг позволяет проверить, что табличный документ соответствует эталону. Макет ищется сначала в обработке фича файла, затем в каталоге проекта. Чтобы получить mxl файл из TestClient, в тонком клиенте будет сделана попытка сохранить табличный документ в файл. В Web клиенте он всегда будет считываться по ячейкам. Детали в справке, в разделе, посвященному сравнению табличного документа с эталоном.","UI.Табличный документ.Проверка значения табличного документа.Эталонный макет.Весь документ");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ТабличныйДокументРавенМакетуПоШаблону(Парам01,Парам02)","ТабличныйДокументРавенМакетуПоШаблону","Дано Табличный документ ""РеквизитТабличныйДокумент"" равен макету ""ИмяМакета"" по шаблону","Шаг позволяет проверить, что табличный документ соответствует эталону. В значениях эталонного макета допускается использовать символы *. Макет ищется сначала в обработке фича файла, затем в каталоге проекта. Чтобы получить mxl файл из TestClient, в тонком клиенте будет сделана попытка сохранить табличный документ в файл. В Web клиенте он всегда будет считываться по ячейкам. Детали в справке, в разделе, посвященному сравнению табличного документа с эталоном.","UI.Табличный документ.Проверка значения табличного документа.Эталонный макет.Весь документ");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВПоследнемСообщенииTestClientЕстьСтрока(Парам01)","ВПоследнемСообщенииTestClientЕстьСтрока","Дано В последнем сообщении TestClient есть строка ""НужнаяСтрока""","Шаг позволяет проверить содержание самого нового сообщения пользователю.","UI.Сообщения пользователю.Проверка текста сообщений");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВПоследнемСообщенииTestClientЕстьСтрокаПоШаблону(Парам01)","ВПоследнемСообщенииTestClientЕстьСтрокаПоШаблону","Дано В последнем сообщении  TestClient есть строка по шаблону ""Д*""","Шаг позволяет проверить содержание самого нового сообщения пользователю. Допускается использовать символ *.","UI.Сообщения пользователю.Проверка текста сообщений");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВАктивномОкнеОткрыласьФормаСЗаголовком(Парам01)","ВАктивномОкнеОткрыласьФормаСЗаголовком","Дано В активном окне открылась форма с заголовком ""Заголовок формы""","Шаг проверяет, что в активном окне есть нужная форма.","UI.Окна");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ОжидаемЗавершенияФоновогоФормированияОтчетаВТечениеСекунд(Парам01)","ОжидаемЗавершенияФоновогоФормированияОтчетаВТечениеСекунд","Дано Ожидаем завершения фонового формирования отчета в течение ""10"" секунд","Шаг работает только когда TestManager и TestClient работают в одной и той же базе. Шаг ждёт указанное время, что завершились активные фоновые задания.","UI.Отчеты");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЖдуКогдаВТабличномДокументеЗаполнитсяЯчейкаВТечениеСекунд(Парам01,Парам02,Парам03)","ЯЖдуКогдаВТабличномДокументеЗаполнитсяЯчейкаВТечениеСекунд","И я жду когда в табличном документе ""РеквизитТабличныйДокумент"" заполнится ячейка ""r4c2"" в течение 20 секунд","По таймеру проверяет, что указанная ячейка табличного документа не пустая.","UI.Табличный документ.Ожидание значения");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЖдуЧтоВСообщенияхПользователюБудетПодстрокаВТеченииСекунд(Парам01,Парам02)","ЯЖдуЧтоВСообщенияхПользователюБудетПодстрокаВТеченииСекунд","Затем я жду, что в сообщениях пользователю будет подстрока ""Нужное мне значение"" в течении 30 секунд");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЖдуЧтоВСообщенияхПользователюБудетПодстрокаВТечениеСекунд(Парам01,Парам02)","ЯЖдуЧтоВСообщенияхПользователюБудетПодстрокаВТечениеСекунд","Затем я жду, что в сообщениях пользователю будет подстрока ""Нужное мне значение"" в течение 30 секунд","Ждет появления в сообщениях пользователю подстроки в течение нужного времени","UI.Сообщения пользователю.Ожидание сообщения");

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЗапоминаюЗначениеТабличногоДокументаКак(Парам01,Парам02)","ЯЗапоминаюЗначениеТабличногоДокументаКак","И я запоминаю значение табличного документа ""ИмяРеквизита"" как ""ИмяПеременной""","Сохраняет значение табличного документа в переменную Контекста.","UI.Табличный документ.Сохранить в переменную");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЗначенияТабличныхДокументовРавны(ТабПарам)","ЗначенияТабличныхДокументовРавны","И значения табличных документов равны","Шаг на вход принимает таблицу, к которой указаны имена переменных Контекста ранее полученных макетов.","UI.Табличный документ.Сравнить табличные документы");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВПоследнемСообщенииTestClientНетСтроки(Парам01)","ВПоследнемСообщенииTestClientНетСтроки","И В последнем сообщении TestClient нет строки ""Нет""","Шаг позволяет проверить, что в самом новом сообщении пользователю нет указанной строки.","UI.Сообщения пользователю.Проверка отсутствия сообщений");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВОкнеСообщенийПользователюНетСообщений()","ВОкнеСообщенийПользователюНетСообщений","Тогда в окне сообщений пользователю нет сообщений","Проверяет, что в окне сообщений пользователю нет сообщений.","UI.Сообщения пользователю.Проверка отсутствия сообщений");
	
	Возврат ВсеТесты;
КонецФункции
	
&НаСервере
// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Возврат ОбъектСервер.ПолучитьМакет(ИмяМакета);
КонецФункции
	
&НаКлиенте
// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции

#КонецОбласти



#Область Работа_со_сценариями

&НаКлиенте
// Процедура выполняется перед началом каждого сценария
Процедура ПередНачаломСценария() Экспорт
	
КонецПроцедуры

&НаКлиенте
// Процедура выполняется перед окончанием каждого сценария
Процедура ПередОкончаниемСценария() Экспорт
	
КонецПроцедуры

#КонецОбласти


///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

&НаКлиенте
//Дано Открылось окно предупреждения с заголовком "Заголовок" и текстом "Текст"
//@ОткрылосьОкноПредупрежденияСЗаголовкомИТекстом(Парам01,Парам02)
Процедура ОткрылосьОкноПредупрежденияСЗаголовкомИТекстом(Парам01,Парам02) Экспорт
	АктивноеОкно = КонтекстСохраняемый.ТестовоеПриложение.НайтиОбъект(Тип("ТестируемоеОкноКлиентскогоПриложения"), Парам01, , 5);
	Если АктивноеОкно = Неопределено Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Окно с заголовком <%1> не найдено.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",Парам01);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;
	Ванесса.ЗапомнитьАктивноеОкно(АктивноеОкно);
	
	Если НЕ Ванесса.ЭтоЗаголовокОкнаМодальногоДиалога(АктивноеОкно.Заголовок) Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Предупреждение с текстом %1 не найдено.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",Парам02);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
	
	ТекстПредупреждения = Ванесса.ТекстПредупреждения(АктивноеОкно);
	
	Если НРег(ТекстПредупреждения) <> НРег(Парам02) Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Предупреждение с текстом %1 не найдено.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",Парам02);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;
КонецПроцедуры

&НаКлиенте
Функция ПолучитьАктивноеОкноИзТестовоеПриложение()
	Возврат Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение();
КонецФункции	

&НаКлиенте
Функция НайтиФормыТекущегоОкна()
	ОкноПриложения         = ПолучитьАктивноеОкноИзТестовоеПриложение();
	МассивФорм             = ОкноПриложения.НайтиОбъекты(Тип("ТестируемаяФорма"));
	Возврат МассивФорм;
КонецФункции	

&НаКлиенте
//Дано Табличный документ формы с именем "РеквизитТабличныйДокумент" стал равен макету с именем "ИмяМакета"
//@ТабличныйДокументФормыСИменемСталРавенМакетуСИменем(Парам01,Парам02)
Процедура ТабличныйДокументФормыСИменемСталРавенМакетуСИменем(ИмяРеквизита, ИмяМакета,СравнениеПоШаблону = Ложь) Экспорт
	ТабДокБыло  = Ванесса.ПолучитьМакетОбработки(ИмяМакета);
	
	Если ТабДокБыло = Неопределено Тогда
		//будем искать макет в каталоге проекта
		ТабДокБыло = Ванесса.НайтиМакетВКаталогеПроекта(ИмяМакета);
	КонецЕсли;	 
	
	ЭлементТД   = Ванесса.НайтиРеквизитОткрытойФормыПоЗаголовку(ИмяРеквизита, Истина, Истина, Тип("ТестируемоеПолеФормы"));
	ТабДокСтало = Ванесса.ПолучитьТабличныйДокументTestClient(ЭлементТД);
	Если СравнениеПоШаблону Тогда
		ДопПараметры = Новый Структура;
		ДопПараметры.Вставить("СравнениеПоШаблону",Истина);
	Иначе
		ДопПараметры = Неопределено;
	КонецЕсли;	 
	
	Попытка
		Ванесса.ПроверитьРавенствоТабличныхДокументовТолькоПоЗначениям(ТабДокБыло, ТабДокСтало,,,,ДопПараметры);
	Исключение
		ТекстИсключения = ОписаниеОшибки();
		Ванесса.УстановитьЗначенияТаблицДляСравнения(ТабДокБыло,ТабДокСтало);
		
		Ванесса.ПрикрепитьМакетКСценарию(ТабДокСтало,"ТекущееЗначениеМакета");
		Ванесса.ПрикрепитьМакетКСценарию(ТабДокБыло,"ЭталонноеЗначениеМакета");
		
		ВызватьИсключение ТекстИсключения;
	КонецПопытки;
КонецПроцедуры

&НаКлиенте
//Дано Табличный документ "РеквизитТабличныйДокумент" стал равен "ИмяМакета"
//@ТабличныйДокументСталРавенМакету(Парам01,Парам02)
Процедура ТабличныйДокументСталРавенМакету(ИмяРеквизита, ИмяМакета) Экспорт
	ТабличныйДокументФормыСИменемСталРавенМакетуСИменем(ИмяРеквизита, ИмяМакета);
КонецПроцедуры

&НаКлиенте
//Дано Табличный документ "РеквизитТабличныйДокумент" равен "ИмяМакета"
//@ТабличныйДокументРавенМакету(Парам01,Парам02)
Процедура ТабличныйДокументРавенМакету(ИмяРеквизита, ИмяМакета) Экспорт
	ТабличныйДокументФормыСИменемСталРавенМакетуСИменем(ИмяРеквизита, ИмяМакета);
КонецПроцедуры

&НаКлиенте
//Дано Табличный документ "РеквизитТабличныйДокумент" равен макету "ИмяМакета" по шаблону
//@ТабличныйДокументРавенМакетуПоШаблону(Парам01,Парам02)
Процедура ТабличныйДокументРавенМакетуПоШаблону(ИмяРеквизита, ИмяМакета) Экспорт
	ТабличныйДокументФормыСИменемСталРавенМакетуСИменем(ИмяРеквизита, ИмяМакета,Истина);
КонецПроцедуры

&НаКлиенте
//Дано В последнем сообщении TestClient есть строка "Стр"
//@ВПоследнемСообщенииTestClientЕстьСтрока(Стр)
Процедура ВПоследнемСообщенииTestClientЕстьСтрока(Знач Стр) Экспорт
	//Стр = Ванесса.ПолучитьЗначениеИзКонтекстаЕслиЭтоВозможно(Стр);
	МассивСообщений = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение().ПолучитьТекстыСообщенийПользователю();
	Если МассивСообщений.Количество() = 0 Тогда
		ВызватьИсключение Ванесса.ПолучитьТекстСообщенияПользователю("Не найдено ни одного сообщения пользователю.");
	КонецЕсли;	 
	Если Найти( НРег( МассивСообщений[ МассивСообщений.Количество() - 1 ]), НРег( Стр )) = 0 Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Строка <%1> не найдена в последнем сообщении пользователю. Найдено: %2");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",Стр);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",МассивСообщений[ МассивСообщений.Количество()- 1]);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
//Дано В активном окне открылась форма с заголовком "Заголовок формы"
//@ВАктивномОкнеОткрыласьФормаСЗаголовком(Парам01)
Процедура ВАктивномОкнеОткрыласьФормаСЗаголовком(Парам01) Экспорт
	АктивноеОкно = ПолучитьАктивноеОкноИзТестовоеПриложение();
	
	Ванесса.ОбработатьСменуАктивногоОкна();
	
	ОткрытаяФорма = АктивноеОкно.НайтиОбъект(Тип("ТестируемаяФорма"), Парам01, , 15);
	Если ОткрытаяФорма = Неопределено Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Форма с заголовком %1 не найдена.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",Парам01);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецПроцедуры

&НаСервереБезКонтекста
Функция ПолучитьАктивныеФоновыеЗадания(СтруктураОтбора = Неопределено)
	Если СтруктураОтбора = Неопределено Тогда
		СтруктураОтбора = Новый Структура();
	КонецЕсли;
	
	СтруктураОтбора.Вставить("Состояние",			СостояниеФоновогоЗадания.Активно);
	СтруктураОтбора.Вставить("РегламентноеЗадание",	Неопределено);
	
	Возврат ФоновыеЗадания.ПолучитьФоновыеЗадания(СтруктураОтбора);
КонецФункции

&НаСервереБезКонтекста
Функция ПолучитьКонтролируемыеФоновыеЗадания()
	КонтролируемыеФоновыеЗадания = Новый Массив;
	СтруктураОтбора = Новый Структура("Начало",ТекущаяДата() - 60);
	АктивныеФоновыеЗадания = ПолучитьАктивныеФоновыеЗадания();
	Для Каждого АктивноеФоновоеЗадание Из АктивныеФоновыеЗадания Цикл
		КонтролируемыеФоновыеЗадания.Добавить(АктивноеФоновоеЗадание.УникальныйИдентификатор);
	КонецЦикла;
	
	Возврат КонтролируемыеФоновыеЗадания;
КонецФункции

&НаСервереБезКонтекста
Функция ВыполнениеФоновыхЗаданийЗавершено(КонтролируемыеФоновыеЗадания)
	
	Для Каждого КонтролируемоеФоновоеЗадание Из КонтролируемыеФоновыеЗадания Цикл
		ФоновоеЗадание = ФоновыеЗадания.НайтиПоУникальномуИдентификатору(КонтролируемоеФоновоеЗадание);
		Если ФоновоеЗадание = Неопределено Или ФоновоеЗадание.Состояние <> СостояниеФоновогоЗадания.Активно Тогда
			Продолжить;
		КонецЕсли;
		
		Возврат Ложь;
	КонецЦикла;
	
	Возврат Истина;
	
КонецФункции

&НаСервереБезКонтекста
Функция ПолучитьОшибкуФоновогоЗадания(КонтролируемыеФоновыеЗадания)
	
	Для Каждого КонтролируемоеФоновоеЗадание Из КонтролируемыеФоновыеЗадания Цикл
		ФоновоеЗадание = ФоновыеЗадания.НайтиПоУникальномуИдентификатору(КонтролируемоеФоновоеЗадание);
		Если ФоновоеЗадание = Неопределено Или ФоновоеЗадание.Состояние <> СостояниеФоновогоЗадания.ЗавершеноАварийно Тогда
			Продолжить;
		КонецЕсли;
		
		Возврат ПодробноеПредставлениеОшибки(ФоновоеЗадание.ИнформацияОбОшибке);
	КонецЦикла;
	
	Возврат "";
	
КонецФункции

&НаКлиенте
Функция ОткрытаФормаДлительныхОпераций()
	ОткрытыеФормы = Ванесса.ОбъектКонтекстСохраняемый.ТестовоеПриложение.НайтиОбъекты(Тип("ТестируемаяФорма"));
	Для Каждого ОткрытаяФорма Из ОткрытыеФормы Цикл
		Если ОткрытаяФорма.ИмяФормы = "ОбщаяФорма.ДлительнаяОперация" Тогда
			Возврат Истина;
		КонецЕсли;
	КонецЦикла;
	Возврат Ложь;
КонецФункции

&НаКлиенте
Процедура ПроверитьЗавершениеФоновогоЗадания()
	Если ВыполнениеФоновыхЗаданийЗавершено(КонтролируемыеИдентификаторыФоновыхЗадания) И Не ОткрытаФормаДлительныхОпераций() Тогда
		// Добавляем паузу в 1 секунду для отрисовки отчета в табличном документе после завершения фонового
		Ванесса.Sleep(1);
		ОшибкаТестовогоПриложения = Ванесса.ОбъектКонтекстСохраняемый.ТестовоеПриложение.ПолучитьТекущуюИнформациюОбОшибке();
		ИнфоОбОшибке = ?(ОшибкаТестовогоПриложения <> Неопределено, ПодробноеПредставлениеОшибки(ОшибкаТестовогоПриложения), ПолучитьОшибкуФоновогоЗадания(КонтролируемыеИдентификаторыФоновыхЗадания));  
		Если ЗначениеЗаполнено(ИнфоОбОшибке) Тогда
			Ванесса.ПродолжитьВыполнениеШагов(Истина, ИнфоОбОшибке);
		Иначе
			Ванесса.ПродолжитьВыполнениеШагов(Ложь);
		КонецЕсли;
	Иначе
		СчетчикОжиданияФоновогоФормированияОтчета = СчетчикОжиданияФоновогоФормированияОтчета + 1;
		Если СчетчикОжиданияФоновогоФормированияОтчета > ТаймаутОжиданияФоновогоФормированияОтчета Тогда
			ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Превышение таймаутуа ожидания завершения фонового задания.");
			Ванесса.ПродолжитьВыполнениеШагов(Истина,Ванесса.ПолучитьТекстСообщенияПользователю(ТекстСообщения));
		Иначе
			ПодключитьОбработчикОжидания("ПроверитьЗавершениеФоновогоЗадания", 1, Истина);
		КонецЕсли;
	КонецЕсли;
КонецПроцедуры
	
&НаКлиенте
//Дано Ожидаем завершения фонового формирования отчета в течение "10" секунд
//@ОжидаемЗавершенияФоновогоФормированияОтчетаВТечениеСекунд(Парам01)
Процедура ОжидаемЗавершенияФоновогоФормированияОтчетаВТечениеСекунд(Парам01) Экспорт
	ТаймаутОжиданияФоновогоФормированияОтчета = Число(Парам01);
	СчетчикОжиданияФоновогоФормированияОтчета = 0;
	КонтролируемыеИдентификаторыФоновыхЗадания = ПолучитьКонтролируемыеФоновыеЗадания();
	Ванесса.ЗапретитьВыполнениеШагов();
	ПодключитьОбработчикОжидания("ПроверитьЗавершениеФоновогоЗадания", 1, Истина);
КонецПроцедуры

&НаКлиенте
Процедура ПроверитьЗначениеЯчейкиТабличногоДокумента()
	Попытка
		ЭлементФормы = Ванесса.НайтиРеквизитОткрытойФормыПоЗаголовку(ИмяТабличногоДокумента, Истина, Истина, Тип("ТестируемоеПолеФормы"));
	Исключение
		Ванесса.ПродолжитьВыполнениеШагов(Истина,ОписаниеОшибки());
		Возврат;
	КонецПопытки;
	
	Попытка
		ТекстОбласти = ЭлементФормы.ПолучитьТекстОбласти(АдресТабличногоДокумента);
	Исключение
		ТекстОбласти = Неопределено;
	КонецПопытки;
	
	Если ЗначениеЗаполнено(ТекстОбласти) Тогда
		Ванесса.ПродолжитьВыполнениеШагов(Ложь);
	Иначе	
		Если ТаймаутОжиданияОжиданияТекстаОбласти < ТекущаяДата() Тогда
			ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Ожидали, что ячейка <%1> будет заполнена.");
			ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",АдресТабличногоДокумента);
			
			Попытка
				ТабДокСтало = Ванесса.ПолучитьТабличныйДокументTestClient(ЭлементФормы);
				Если ТабДокСтало <> Неопределено Тогда
					Ванесса.ПрикрепитьМакетКСценарию(ТабДокСтало,"ТекущееЗначениеМакета");
				КонецЕсли;	 
			Исключение
			КонецПопытки;
			Ванесса.ПродолжитьВыполнениеШагов(Истина,Ванесса.ПолучитьТекстСообщенияПользователю(ТекстСообщения));
		Иначе
			ПодключитьОбработчикОжидания("ПроверитьЗначениеЯчейкиТабличногоДокумента", 1, Истина);
		КонецЕсли;
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
//И я жду когда в табличном документе "РеквизитТабличныйДокумент" заполнится ячейка "r4c2" в течение 20 секунд
//@ЯЖдуКогдаВТабличномДокументеЗаполнитсяЯчейкаВТечениеСекунд(Парам01,Парам02,Парам03)
Процедура ЯЖдуКогдаВТабличномДокументеЗаполнитсяЯчейкаВТечениеСекунд(ИмяТабДок,АдресЯчейки,Знач КолСекунд) Экспорт
	КолСекунд                                 = Ванесса.ЗначениеТаймаутаДляАсинхронногоШага(КолСекунд);
	ТаймаутОжиданияОжиданияТекстаОбласти      = ТекущаяДата() + Число(КолСекунд);
	ИмяТабличногоДокумента                    = ИмяТабДок;
	АдресТабличногоДокумента                  = АдресЯчейки;
	
	Ванесса.ЗапретитьВыполнениеШагов();
	ПодключитьОбработчикОжидания("ПроверитьЗначениеЯчейкиТабличногоДокумента", 1, Истина);
КонецПроцедуры




&НаКлиенте
Процедура ОбработичкЯЖдуЧтоВСообщенияхПользователюБудетПодстрокаВТеченииСекунд()
	ИмяОбработчикаОжидания = "ОбработичкЯЖдуЧтоВСообщенияхПользователюБудетПодстрокаВТеченииСекунд";
	
	Если (ТекущаяДата() - ДатаНачалаОбработкиОжидания) > КоличествоСекундОбработкаОжидания Тогда
		ОтключитьОбработчикОжидания(ИмяОбработчикаОжидания);
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Ожидали, что в сообщениях пользователю будет подстрока <%1>");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",НужнаяПодстрокаВСообщениях);
		Ванесса.ПродолжитьВыполнениеШагов(Истина,Ванесса.ПолучитьТекстСообщенияПользователю(ТекстСообщения));
		Возврат;
	КонецЕсли;
	
	Попытка
		МассивСообщений = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение().ПолучитьТекстыСообщенийПользователю();
	Исключение
		Возврат;
	КонецПопытки;
	
	Для Каждого СообщениеПользователю Из МассивСообщений Цикл
		Если Найти(НРег(СообщениеПользователю),НРег(НужнаяПодстрокаВСообщениях)) > 0 Тогда
			ОтключитьОбработчикОжидания(ИмяОбработчикаОжидания);
			Ванесса.ПродолжитьВыполнениеШагов();
			Возврат;
		КонецЕсли;	 
	КонецЦикла;	
КонецПроцедуры

&НаКлиенте
//Затем я жду, что в сообщениях пользователю будет подстрока "Нужное мне значение" в течении 30 секунд
//@ЯЖдуЧтоВСообщенияхПользователюБудетПодстрокаВТеченииСекунд(Стр,КолСекунд)
Процедура ЯЖдуЧтоВСообщенияхПользователюБудетПодстрокаВТеченииСекунд(Знач Стр,КоличествоСекунд) Экспорт
	Ванесса.ЗапретитьВыполнениеШагов();
	
	ДатаНачалаОбработкиОжидания       = ТекущаяДата();
	КоличествоСекундОбработкаОжидания = Ванесса.ЗначениеТаймаутаДляАсинхронногоШага(КоличествоСекунд);
	НужнаяПодстрокаВСообщениях        = Стр;
	ПодключитьОбработчикОжидания("ОбработичкЯЖдуЧтоВСообщенияхПользователюБудетПодстрокаВТеченииСекунд",1,Ложь);
КонецПроцедуры

&НаКлиенте
//Затем я жду, что в сообщениях пользователю будет подстрока "Нужное мне значение" в течение 30 секунд
//@ЯЖдуЧтоВСообщенияхПользователюБудетПодстрокаВТечениеСекунд(Стр,КолСекунд)
Процедура ЯЖдуЧтоВСообщенияхПользователюБудетПодстрокаВТечениеСекунд(Стр,КоличествоСекунд) Экспорт
	ЯЖдуЧтоВСообщенияхПользователюБудетПодстрокаВТеченииСекунд(Стр,КоличествоСекунд);
КонецПроцедуры

&НаКлиенте
//И я запоминаю значение табличного документа "РеквизитТабличныйДокумент" как "ТабДок1"
//@ЯЗапоминаюЗначениеТабличногоДокументаКак(Парам01,Парам02)
Процедура ЯЗапоминаюЗначениеТабличногоДокументаКак(ИмяРеквизита,ИмяПеременной) Экспорт
	ЭлементТД   = Ванесса.НайтиРеквизитОткрытойФормыПоЗаголовку(ИмяРеквизита, Истина, Истина, Тип("ТестируемоеПолеФормы"));
	ТабДокСтало = Ванесса.ПолучитьТабличныйДокументTestClient(ЭлементТД);
	Ванесса.СохранитьЗначениеПеременнойВКонтекст(ИмяПеременной,ТабДокСтало);
КонецПроцедуры

&НаКлиенте
//И значения табличных документов равны
//@ЗначенияТабличныхДокументовРавны(ТабПарам)
Процедура ЗначенияТабличныхДокументовРавны(ТабПарам) Экспорт
	Если ТабПарам.Количество() < 2 Тогда
		ВызватьИсключение Ванесса.ПолучитьТекстСообщенияПользователю("В шаг необходимо передавать таблицу Gherkin, в которой 2 или более строк.");
	КонецЕсли;	 
	
	Для Каждого СтрокаТабПарам Из ТабПарам Цикл
		ИмяПеременной = СтрокаТабПарам.Кол1;
		Попытка
			Значение = Ванесса.ПолучитьЗначениеПеременнойИзКонтекста(ИмяПеременной);
		Исключение
			ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("В переменной Контекст не обнаружено ранее сохраненное значение с именем <%1>");
			ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяПеременной);
			ВызватьИсключение ТекстСообщения;
		КонецПопытки;
	КонецЦикла;	
	
	ИмяПеременнойПервогоМакета = ТабПарам[0].Кол1;
	ПервыйМакет = Ванесса.ПолучитьЗначениеПеременнойИзКонтекста(ИмяПеременнойПервогоМакета);
	
	ДопПараметры = Неопределено;
	
	Для Ккк = 1 По ТабПарам.Количество()-1 Цикл
		ИмяПеременнойТекущегоМакета = ТабПарам[Ккк].Кол1;
		ТекМакет = Ванесса.ПолучитьЗначениеПеременнойИзКонтекста(ИмяПеременнойТекущегоМакета);
		
		Попытка
			Ванесса.ПроверитьРавенствоТабличныхДокументовТолькоПоЗначениям(ПервыйМакет, ТекМакет,,,,ДопПараметры);
		Исключение
			ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Табличный документ <%1> оказался неравен <%2>.%3");
			ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяПеременнойПервогоМакета);
			ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",ИмяПеременнойТекущегоМакета);
			ТекстСообщения = СтрЗаменить(ТекстСообщения,"%3",Символы.ПС + ОписаниеОшибки());
			
			Ванесса.УстановитьЗначенияТаблицДляСравнения(ПервыйМакет,ТекМакет);
			Ванесса.ПрикрепитьМакетКСценарию(ПервыйМакет,ИмяПеременнойПервогоМакета);
			Ванесса.ПрикрепитьМакетКСценарию(ТекМакет,ИмяПеременнойТекущегоМакета);
			
			ВызватьИсключение ТекстСообщения;
		КонецПопытки;
	КонецЦикла;	
	
КонецПроцедуры

&НаКлиенте
//И    В последнем сообщении TestClient нет строки "Нет"
//@ВПоследнемСообщенииTestClientНетСтроки(Парам01)
Процедура ВПоследнемСообщенииTestClientНетСтроки(Знач Стр) Экспорт
	//Стр = Ванесса.ПолучитьЗначениеИзКонтекстаЕслиЭтоВозможно(Стр);
	МассивСообщений = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение().ПолучитьТекстыСообщенийПользователю();
	Если МассивСообщений.Количество() = 0 Тогда
		ВызватьИсключение Ванесса.ПолучитьТекстСообщенияПользователю("Не найдено ни одного сообщения пользователю.");
	КонецЕсли;	 
	Если Найти(НРег(МассивСообщений[МассивСообщений.Количество() - 1 ]), НРег(Стр)) > 0 Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Строка <%1> найдена в последнем сообщении пользователю. Найдено: %2");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",Стр);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",МассивСообщений[ МассивСообщений.Количество()- 1]);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
//Дано В последнем сообщении  TestClient есть строка по шаблону "Текст сообщений *"
//@ВПоследнемСообщенииTestClientЕстьСтрокаПоШаблону(Парам01)
Процедура ВПоследнемСообщенииTestClientЕстьСтрокаПоШаблону(Знач Стр) Экспорт
	//Стр = Ванесса.ПолучитьЗначениеИзКонтекстаЕслиЭтоВозможно(Стр);
	МассивСообщений = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение().ПолучитьТекстыСообщенийПользователю();
	Если МассивСообщений.Количество() = 0 Тогда
		ВызватьИсключение Ванесса.ПолучитьТекстСообщенияПользователю("Не найдено ни одного сообщения пользователю.");
	КонецЕсли;	 
	
	Если НЕ Ванесса.СтрокаСоответствуетШаблону(НРег(МассивСообщений[МассивСообщений.Количество() - 1]), НРег(Стр)) Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Строка <%1> не найдена в последнем сообщении пользователю. Найдено: %2");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",Стр);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",МассивСообщений[ МассивСообщений.Количество()- 1]);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
//Тогда в окне сообщений пользователю нет сообщений
//@ВОкнеСообщенийПользователюНетСообщений()
Процедура ВОкнеСообщенийПользователюНетСообщений() Экспорт
	АктивноеОкно = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение();
	Если АктивноеОкно = Неопределено Тогда
		ВызватьИсключение Ванесса.ПолучитьТекстСообщенияПользователю("Активное окно не найдено.");
	КонецЕсли;	 
	
	Попытка
		МассивСообщений = АктивноеОкно.ПолучитьТекстыСообщенийПользователю();
	Исключение
		//из-за ошибки платформы может быть вызвано исключение, хотя должен быть получен пустой массив
		Возврат;
	КонецПопытки;
	
	Если МассивСообщений.Количество() > 0 Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Ожидали, что окно сообщений пользователю будет пустое. В нём %1 сообщений.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",МассивСообщений.Количество()); 
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецПроцедуры


СчетчикОжиданияФоновогоФормированияОтчета = 0;
ТаймаутОжиданияФоновогоФормированияОтчета = 0;
