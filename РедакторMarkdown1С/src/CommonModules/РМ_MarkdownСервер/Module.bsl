Функция ПолучитьАдресКомпонентыShowodwn() Экспорт
	ДвоичныеДанные=ПолучитьОбщийМакет("РМ_showdown");
	
	ИмяВременногоФайла=ПолучитьИмяВременногоФайла("js");
	ДвоичныеДанные.Записать(ИмяВременногоФайла);
	
	Текст=Новый ТекстовыйДокумент;
	Текст.Прочитать(ИмяВременногоФайла);
	
	ПутьКБиблиотеке=ПоместитьВоВременноеХранилище(Текст.ПолучитьТекст());
	
	Попытка
		УдалитьФайлы(ИмяВременногоФайла);
	Исключение
	КонецПопытки;
	
	Возврат ПутьКБиблиотеке;
КонецФункции

Функция СформироватьТекстHTMLДляТекстаMarkdown() Экспорт
	ПутьКБиблиотеке=ПолучитьАдресКомпонентыShowodwn();
	
	ТекстHTML=
	"<html>
	|<head>
	|    <script>"+ПолучитьИзВременногоХранилища(ПутьКБиблиотеке)+"</script>
	|    <script>
	|        var markdownTexts={};
	|		 var converter = new showdown.Converter();
	|	     converter.setFlavor('github');
	|
	|	     function clearTexts(){
	|            markdownTexts={};
	|        }
	|
	|        function addText(key, text){
	|            markdownTexts[key]=text;
	|        }
	|	     function convertOneText(key,text){
	|           
	|			 var newdiv = document.createElement('div');
	|            newdiv.className = 'wiki';
	|            newdiv.id = key;
	|
	|           newdiv.innerHTML = converter.makeHtml(text);
	|
	|           return newdiv;
	|      	 }
	|        
	|        function markdownConvert(){
	|            var container=document.getElementById('wiki-container');
	|            container.innerHTML='';
	|
	|            for (var key in markdownTexts) {
	|                if (markdownTexts.hasOwnProperty(key)) {
	|                    var markText = markdownTexts[key];
	|                    
	|                	 var newdiv=convertOneText(key,markText);
	|                    container.appendChild(newdiv);
	|                }
	|            }
	|
	|        }
	|    </script>
	|    <style>
	|    	html { 
	|			word-break: break-all;
	|    	}
	|    </style>	
	|	 
	|</head>
	|    
	|<body>
	|    <div id=""wiki-container""></div>
	|    <button id=""interactionButton"" style=""display: none"">Кнопка взаимодействия</button>
	|</body>
	|
	|    
	|</html>
	|";
	
	Возврат ТекстHTML;
КонецФункции
