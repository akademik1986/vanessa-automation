﻿## Шаблон для работы правильного 1С разработчика

[![Join the chat at https://gitter.im/silverbulleters/vanessa-bootstrap](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/silverbulleters/vanessa-bootstrap?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

* содержит выработанную и обдуманную семантически структуру каталогов
* содержит необходимые подмодули для быстрого старта

### Порядок установки

* прочитайте [Wiki](https://github.com/silverbulleters/vanessa-bootstrap/wiki/%D0%A0%D0%B5%D0%BA%D0%BE%D0%BC%D0%B5%D0%BD%D0%B4%D0%B0%D1%86%D0%B8%D0%B8-%D0%BF%D1%80%D0%B0%D0%B2%D0%B8%D0%BB%D1%8C%D0%BD%D1%8B%D0%BC-%D1%80%D0%B0%D0%B7%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D1%87%D0%B8%D0%BA%D0%B0%D0%BC-1%D0%A1)
* склонируйте репозиторий

```Shell
git clone https://github.com/silverbulleters/vanessa-bootstrap.git <название-вашего-продукта-1С>
```
* подключите репозиторий к своему git серверу (GitHub, Bitbucket, GitLab, etc)

```Shell
cd <название-вашего-продукта-1С>
git remote set-url origin git://new.url.here
```

* не забудьте подписаться на обновление шаблона

```Shell
git remote set-url bootstrap https://github.com/silverbulleters/vanessa-bootstrap.git
```

теперь вы можете начинать разрабатывать по правильному и быть подписанными на любые изменениями.

### Порядок обновления

Чтобы получить изменения каталога 

```Shell
git pull bootstrap <ваша текущая ветка разработки>
```

### Если вы уже ведете разработку на 1С при помощи Git репозиториев

создайте как это положено в **git-flow** отдельную тематическую ветку

```Shell
git-flow new-feature new-catalog-structure
```

добавьте новый внешний репозиторий, как это указано выше

```Shell
git remote set-url bootstrap https://github.com/silverbulleters/vanessa-bootstrap.git
```

здесь необходимо обратить внимание на функционал "Стратегий объединения" (merge strategies)
для этого используется файл .gitattributes в котором указано как файлы не объединять из основного репозитория с шаблоном

### Возможности доработки шаблона

* откройте issue - если вам не хватает кого-то каталога под ваши задачи
* войдите в чат Gitter - чтобы задать дополнительные вопросы 
* сделайте fork, внесите изменения и выполните pull request с предлагаемыми вами изменениями (fork и pull request - это кнопки на GitHub.)

~~~
Важно !!!

В структуре каталогов в ближайшее время НЕ будет каталога tests, это наша осознанная на данный момент позициция. По следующим причинам:

* тестирование это процесс, для него мы используем каталог функциональности(./features) и каталог сценариев тестирования (./features/**/steps_definitions)
* каталог tests может появиться только в случаях когда будет иметься практика построения интеграционных тестов, например с помощью проектов JMeter
* тесты  для 1С опасное семантически понятие. Хочется покрывать тестами модули и функции. Но для быстрого старта и для быстрой пользы заказчику лучше покрывать тестами поведение, что плавно приводит нас к сценариям тестирования, или шагам сценариев, поэтому мы отказываемся от понятия unit теста. Из нашей практики переход на feature файлы и steps_definitions позволяет второму разработчику на второй feature сократить на 40% время необходимое для реализации сценария тестирования. И это только за счёт перехода на другую концепцию﻿

если вы не согласны с этим - то тогда вам подойдёт какой-нибудь другой альтернативный проект
~~~


### Заметки на полях

* структура в перспективе будет содержать и адаптацию семантики каталогов для проектов на проекте Graphite от компании 1С после появления официального стабильного релиза - пример текущего каталога из проекта Grathite можно посмотреть тут https://github.com/1C-Company/dt-demo-configuration/tree/master/DemoConfDT

* для GitFlow в Windows мы советуем использовать программу SourceTree от компании Atlassian, для GitFlow в linux следует использовать расширение git-flow для git
