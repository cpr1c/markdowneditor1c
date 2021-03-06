&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	ВариантыПодсветки=РМ_MarkdownСервер.ВариантыПодсветкиСинтаксиса();
	Элементы.ВариантПодсветки.СписокВыбора.Очистить();

	Для Каждого Вариант Из ВариантыПодсветки Цикл
		Элементы.ВариантПодсветки.СписокВыбора.Добавить(Вариант);
	КонецЦикла;

	ВариантПодсветкиСинтаксиса="ones";

	ТекстТолькоПросмотр=
	"# Заголовок 1
	|## Заголовок 2
	|### Заголовок 3
	|
	|**Жирный**
	|*Курсив*
	|***Жирный курсив***
	|~~~Зачеркнутый~~~
	|
	|### Подсветка кода
	|
	|```
	|
	|&НаКлиенте
	|Процедура ВариантПодсветкиПриИзменении(Элемент)
	|	РМ_MarkdownКлиент.ИзменитьВариантПодсветкиСинтаксиса(ЭтотОбъект, ""ТекстРедактирования"", ВариантПодсветкиСинтаксиса);
	|	РМ_MarkdownКлиент.ИзменитьВариантПодсветкиСинтаксиса(ЭтотОбъект, ""Объект.ТекстМД"", ВариантПодсветкиСинтаксиса);
	|	РМ_MarkdownКлиент.ИзменитьВариантПодсветкиСинтаксиса(ЭтотОбъект, ""ТекстТолькоПросмотр"", ВариантПодсветкиСинтаксиса);
	|КонецПроцедуры
	|
	|```
	|
	|## Списки
	|
	|### Нумерованный список
	|1. Раз
	|1. Два
	|1. Три
	|
	|
	|## Ссылка
	|https://infostart.ru/public/1226053/
	|[Публикация](https://infostart.ru/public/1226053/)
	|example@example.com
	|";

	РМ_MarkdownСервер.ВставитьПолеРедактированияТекстаНаФорму(ЭтаФорма, Элементы.ГруппаТекстРедактирования,
		"ТекстРедактирования", ВариантПодсветкиСинтаксиса);
	РМ_MarkdownСервер.ВставитьПолеРедактированияТекстаНаФорму(ЭтаФорма, Элементы.ГруппаВторойРедакторНаФорме,
		"Объект.ТекстМД", ВариантПодсветкиСинтаксиса);
	РМ_MarkdownСервер.ВставитьПолеРедактированияТекстаНаФорму(ЭтаФорма, Элементы.ГруппаТолькоПросмотр,
		"ТекстТолькоПросмотр", ВариантПодсветкиСинтаксиса, Истина);
КонецПроцедуры

&НаКлиенте
Процедура ВариантПодсветкиПриИзменении(Элемент)
	РМ_MarkdownКлиент.ИзменитьВариантПодсветкиСинтаксиса(ЭтотОбъект, "ТекстРедактирования", ВариантПодсветкиСинтаксиса);
	РМ_MarkdownКлиент.ИзменитьВариантПодсветкиСинтаксиса(ЭтотОбъект, "Объект.ТекстМД", ВариантПодсветкиСинтаксиса);
	РМ_MarkdownКлиент.ИзменитьВариантПодсветкиСинтаксиса(ЭтотОбъект, "ТекстТолькоПросмотр", ВариантПодсветкиСинтаксиса);
КонецПроцедуры




#Область ПодключаемыеКоманды

#Область Редактирование

//@skip-warning
&НаКлиенте
Процедура РМ_Подключаемый_ПриСменеСтраницыПоляКомментария(Элемент, ТекущаяСтраница)
	РМ_MarkdownКлиент.ПриСменеСтраницыПоляКомментария(ЭтаФорма, Элемент, ТекущаяСтраница);
КонецПроцедуры

//@skip-warning
&НаКлиенте
Процедура РМ_Подключаемый_ОбработкаКомандыПоляКомментария(Команда)
	РМ_MarkdownКлиент.ОбработкаКомандыПоляКомментария(ЭтаФорма, Команда);
КонецПроцедуры

//@skip-warning
&НаКлиенте
Процедура РМ_Подключаемый_ОткрытьПрисоединенныйФайл(Элемент, ВыбраннаяСтрока, Поле, СтандартнаяОбработка)
//	РМ_MarkdownКлиент.ОткрытьПрисоединенныйФайл(ЭтаФорма,Элемент, ВыбраннаяСтрока, Поле, СтандартнаяОбработка);	
КонецПроцедуры

&НаКлиенте
Процедура РМ_Подключаемый_ПриДобавленииПрисоединенногоФайла(ИмяФайла, ИдентификаторФайла, ПутьКДаннымБезЛишнего) Экспорт
	РМ_Подключаемый_ПриДобавленииПрисоединенногоФайлаНаСервере(ИмяФайла, ИдентификаторФайла, ПутьКДаннымБезЛишнего);
КонецПроцедуры

&НаСервере
Процедура РМ_Подключаемый_ПриДобавленииПрисоединенногоФайлаНаСервере(ИмяФайла, ИдентификаторФайла,
	ПутьКДаннымБезЛишнего) Экспорт
	РМ_MarkdownСервер.ВывестиЭлементыПрисоединенногоФайлаНаФорму(ЭтотОбъект, ИмяФайла, ИдентификаторФайла,
		ПутьКДаннымБезЛишнего);
КонецПроцедуры

//@skip-warning
&НаКлиенте
Процедура РМ_Подключаемый_УдалитьНовыйПрисоединенныйФайл(Команда)
	РМ_MarkdownКлиент.УдалитьНовыйПрисоединенныйФайл(ЭтаФорма, Команда);
КонецПроцедуры

//@skip-warning
&НаКлиенте
Процедура РМ_Подключаемый_ОткрытьНовыйПрисоединенныйФайл(Команда)
	РМ_MarkdownКлиент.ОткрытьПрисоединенныйФайл(ЭтаФорма, Команда);
КонецПроцедуры

#КонецОбласти

#Область Просмотр

//@skip-warning
&НаКлиенте
Процедура РМ_Подключаемый_ПриНажатииПоляПросмотраКомментария(Элемент, ДанныеСобытия, СтандартнаяОбработка)
	РМ_MarkdownКлиент.ПриНажатииПоляПросмотраКомментария(ЭтаФорма, Элемент, ДанныеСобытия, СтандартнаяОбработка);
КонецПроцедуры

//@skip-warning
&НаКлиенте
Процедура РМ_Подключаемый_ДокументСформированПоляПросмотраКомментария(Элемент)
	РМ_MarkdownКлиент.ДокументСформированПоляПросмотраКомментария(ЭтаФорма, Элемент);
КонецПроцедуры

#КонецОбласти
#КонецОбласти