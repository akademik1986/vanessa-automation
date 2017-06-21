﻿# language: ru

@IgnoreOnCIMainBuild
@VBManager
@tree

Функциональность: Управление сеансами TestManager в которых происходит выполнение feature файлов
	Как Разработчик
	Я Хочу чтобы чтобы у меня была возможность запускать feature файлы несколько потоков
	Чтобы я мог выполнять тесты быстрее
 

Сценарий: Запуск тестов в несколько потоков
	Когда я загружаю список фича файлов из указанных настроек и фильтров
	Если в глобальном массиве "МассивФичаФайлов" 0 файлов Тогда
		Тогда я вызываю исключение 'Не обнаружено feature файлов для запуска в каталоге <$Ванесса.Объект.КаталогФич$>'
	Затем я запускаю несколько сеансов раннеров согласно указанных настроек
	
	Затем я выполняю каждую фичу из полученного списка
		Когда я сделал активным следующий фича файл из списка
		Тогда Пока есть невыполненный фича файл я выполняю действия
			И пауза 2
			Тогда для каждого раннера из таблицы раннеров я делаю
				Если текущий раннер свободен Тогда
					Тогда  я собрал из раннера текущие данные
					Затем  я загрузил в раннер текущий фича файл и запустил на выполнение
					И пауза 2
					И     я сделал активным следующий фича файл из списка
				Если текущий раннер повис Тогда	
					Тогда я закрываю сеанс повисшего раннера и всех его TestClient
