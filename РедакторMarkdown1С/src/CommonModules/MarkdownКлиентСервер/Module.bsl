Функция СформироватьТекстHTMLДляТекстаMarkdown() Экспорт
	ПутьКБиблиотеке=MarkdownСерверПовтИсп.ПолучитьАдресКомпонентыShowodwn();
	
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

Функция СформироватьТекстHTMLДляПредставленияИсторииЗадачи() Экспорт
	ПутьКБиблиотеке=MarkdownСерверПовтИсп.ПолучитьАдресКомпонентыShowodwn();
	//ПутьКБиблиотеке="https://cdn.jsdelivr.net/npm/showdown@1.9.0/dist/showdown.min.js";
	//ТекстFontAvesome=MarkdownСерверПовтИсп.ПолучитьТекстКомпонентыFontAvesome();
	
	МЫло="levkin_s@cprit.ru";
	АдресГраватара="http://www.gravatar.com/avatar/758c6388a3ec9a2e7ca320047727ba57?size=48";//"https://www.gravatar.com/"+РедактированиеКомментарияСервер.КонтрольнаяСуммаСтрокой(МЫло,"MD5");
	
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
	|<style>
	|        div {
	|            display: block;
	|        }
	|        h4 {
	|            display: block;
	|            margin-block-start: 1.33em;
	|            margin-block-end: 1.33em;
	|            margin-inline-start: 0px;
	|            margin-inline-end: 0px;
	|            font-weight: bold;
	|            font-weight: 500;
	|            line-height: 1.428571429;
	|        }
	|        img {
	|            border-style: none;
	|	    	 vertical-align: middle;
	|   		 max-width: 100%;
	|        }
	|        div.wiki {
	|            color: #10101b;
	|            line-height: 1.6;
	|        }
	|        .comment::before{
	|            content: "";
	|            display: block;
	|            position: absolute;
	|            z-index: -1;
	|            top: -22px;
	|            left: 22px;
	|            width: 4px;
	|            height: 20px;
	|            background-color: #f2f2f2;
	|        }
	|
	|        .comment>h4 {
	|            margin: 0;
	|            padding: 8px 15px;
	|            border-radius: 3px 3px 0 0;
	|            background-color: #fafbfc;
	|            color: #717894;
	|            font-size: .92em;
	|        }
	|        .comment>h4::before {
	|            border-width: 7px;
	|            border-right-color: #d1d3e0;
	|        }
	|        .comment>h4::before, .comment>h4::after {
	|            content: " ";
	|            display: block;
	|            position: absolute;
	|            top: 9px;
	|            right: 100%;
	|            left: -14px;
	|            width: 0;
	|            height: 0;
	|            border-style: solid solid outset;
	|            border-color: transparent;
	|            pointer-events: none;
	|        }
	|        .comment>h4>.gravatar {
	|            top: 0;
	|            margin-top: -4px;
	|            float: left;
	|        }
	|
	|        .comment>h4 .journal-link {
	|            color: #717894;
	|        }
	|        .journal-link {
	|            float: right;
	|        }   
	|        .comment .wiki, .journal form {
	|            padding: 15px;
	|            border-top: 1px solid #d1d3e0;
	|        }  
	|        .comment .contextual {
	|            margin-top: 0;
	|        } 
	|        .contextual {
	|            float: right;
	|            cursor: default;
	|        }
	|        .comment {
	|            border: 1px solid #d1d3e0;
	|            border-radius: 3px;
	|        }
	|        h2 img.gravatar, h3 img.gravatar, h4 img.gravatar {
	|            margin-right: 5px;
	|        }
	|        img.gravatar {
	|            position: relative;
	|            top: -.15em;
	|            overflow: hidden;
	|            border-radius: 4px;
	|            line-height: 1;
	|            vertical-align: middle;
	|        }
	|        h1 img, h2 img, h3 img, h4 img, h5 img, h6 img {
	|            display: inline-block;
	|            max-width: 100%;
	|            vertical-align: middle;
	|        }
	|		ul.details, ul.revision-info {
	|    		color: #959595;
	|   		margin-bottom: 1.5em;
	|		}	
	|		ul.details a, ul.revision-info a {
	|    		color: #70A7CD;
	|			margin-left: 4px;
	|		}
	|		li {
	|    		text-align: -webkit-match-parent;
	|		}
	|		ul {
	|    		list-style-type: disc;
	|		}
	|        </style>
	//|    <style>
	//|    "+ТекстFontAvesome+"	
	//|    </style>	
	|	 
	|<link href=""https://fonts.googleapis.com/icon?family=Material+Icons""  rel=""stylesheet"">
	//Бутстрап
	|<link rel=""stylesheet"" href=""https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"" integrity=""sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"" crossorigin=""anonymous"">
	|</head>
	|    
	|<body>
	|	<div class=""container-fluid text-break"">
	|    	<div id=""wiki-container""></div>
	|	</div>
	|    <button id=""interactionButton"" style=""display: none"">Кнопка взаимодействия</button>
	|	<script src=""https://code.jquery.com/jquery-3.3.1.slim.min.js"" integrity=""sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"" crossorigin=""anonymous""></script>
	|	<script src=""https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"" integrity=""sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"" crossorigin=""anonymous""></script>
	|	<script src=""https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"" integrity=""sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"" crossorigin=""anonymous""></script>
	|</body>
	|
	|    
	|</html>
	|";
	
	Возврат ТекстHTML;
КонецФункции

