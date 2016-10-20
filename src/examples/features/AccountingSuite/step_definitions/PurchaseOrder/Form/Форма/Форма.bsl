﻿//начало текста модуля

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
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,Транзакция,Параметр);

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"TestClientIsConnected()","TestClientIsConnected","Given TestClient is connected");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ICreateNewPurchaseOrder()","ICreateNewPurchaseOrder","When I create new purchase order");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"IChooseVendor()","IChooseVendor","And I choose vendor");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"IChooseDeliveryDate(Парам01)","IChooseDeliveryDate","And I choose delivery date 30.10.2016");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"IAddNewLineInOrder()","IAddNewLineInOrder","And I add new line in order");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"IChooseItem(Парам01)","IChooseItem","And I choose item ""Coleman 600W Wind Turbine""");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"IChooseQuantity(Парам01)","IChooseQuantity","And I choose quantity 1");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ISaveTheOrder()","ISaveTheOrder","And I save the order");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"IPrintTheOrder()","IPrintTheOrder","And I print the order");

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
	Ванесса.Объект.ИнтервалВыполненияШага = 1;
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
//When I create new purchase order
//@ICreateNewPurchaseOrder()
Процедура ICreateNewPurchaseOrder() Экспорт
	//Ванесса.Шаг("И     Я нажимаю кнопку командного интерфейса ""Purchases""
	//|И     Я нажимаю кнопку командного интерфейса ""Purchase orders""
	//|И     я нажимаю на кнопку ""Create""");
	
	
	Ванесса.Шаг("И     Я нажимаю кнопку командного интерфейса ""Purchases""");
	Ванесса.Шаг("И     Я нажимаю кнопку командного интерфейса ""Purchase orders""");
	Ванесса.Шаг("И     я нажимаю на кнопку ""Create""");
	Ванесса.ЭтотШагНеНадоМасштабироватьВВидео();
КонецПроцедуры

&НаКлиенте
//And I choose vendor
//@IChooseVendor()
Процедура IChooseVendor() Экспорт
	Ванесса.Шаг("И     я открываю выпадающий список ""Vendor""");
	Ванесса.Шаг("И     я выбираю значение реквизита ""Vendor"" из формы списка");
	Ванесса.Шаг("И     в ТЧ ""List"" я активизирую поле ""Name""");
	Ванесса.Шаг("И     В форме ""Customer / Vendor Central"" в ТЧ ""List"" я выбираю текущую строку");
КонецПроцедуры

&НаКлиенте
//And I choose delivery date 30.10.2016
//@IChooseDeliveryDate(Парам01)
Процедура IChooseDeliveryDate(Дат) Экспорт
	Ванесса.Шаг("И     в ТЧ ""LineItems"" в поле ""Delivery date"" я ввожу текст """ + Формат(Дат,"DF=dd.MM.yyyy") + """");
	Ванесса.УстановитьТекстИнструкции("And I choose delivery date " + Формат(Дат,"DF=dd.MM.yyyy"));
КонецПроцедуры

&НаКлиенте
//And I add new line in order
//@IAddNewLineInOrder()
Процедура IAddNewLineInOrder() Экспорт
	Ванесса.Шаг("И     в ТЧ ""LineItems"" я нажимаю на кнопку ""Add""");
КонецПроцедуры

&НаКлиенте
//And I choose item "Coleman 600W Wind Turbine"
//@IChooseItem(Парам01)
Процедура IChooseItem(Парам01) Экспорт
	Ванесса.Шаг("Когда открылось окно ""Purchase Order (create) *""");
	Ванесса.Шаг("И     в ТЧ ""LineItems"" я выбираю значение реквизита ""Item"" из формы списка");
	Ванесса.Шаг("Тогда открылось окно ""Items""");
	
	Ванесса.Шаг("И     В форме ""Items"" в таблице ""List"" я перехожу к строке:
	|| 'Description' |              
	|| 'Coleman 600W Wind Turbine' |");
	
	Ванесса.Шаг("И     в ТЧ ""List"" я активизирую поле ""Description""");
	Ванесса.Шаг("И     В форме ""Items"" в ТЧ ""List"" я выбираю текущую строку");
КонецПроцедуры

&НаКлиенте
//And I choose quantity 1
//@IChooseQuantity(Парам01)
Процедура IChooseQuantity(Количество) Экспорт
	Ванесса.Шаг("И     в ТЧ ""LineItems"" в поле ""Qty"" я ввожу текст """ + Количество + """");
	Ванесса.УстановитьТекстИнструкции("And I choose quantity " + Количество);
КонецПроцедуры

&НаКлиенте
//And I save the order
//@ISaveTheOrder()
Процедура ISaveTheOrder() Экспорт
	Ванесса.Шаг("И     я нажимаю на кнопку ""Save""");
КонецПроцедуры

&НаКлиенте
//And I print the order
//@IPrintTheOrder()
Процедура IPrintTheOrder() Экспорт
	Ванесса.Шаг("И     я нажимаю на кнопку ""Print""");
	Ванесса.ЭтотШагНеНадоМасштабироватьВВидео();
	Ванесса.Sleep(2);
КонецПроцедуры

&НаКлиенте
//Given TestClient is connected
//@TestClientIsConnected()
Процедура TestClientIsConnected() Экспорт
	Ванесса.Шаг("Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий");
КонецПроцедуры
