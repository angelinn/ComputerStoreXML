##Описание


Проектът е на тема „Каталог за компютърен магазин“. XML файловете описват какви части продава магазина (заедно с тяхните характеристики, цени и т.н), видовете памети  в компютърните чипове и процесорни цокли.


Проектът съдържа следните файлове:
•	computer_store.dtd – DTD схемата с описание структурата на XML файла
•	computer_store_[0, 1, 2, 3, 4].xml – 5 валидни XML файла
•	computer_store-generate.js – JavaScript файл, който генерира XML
•	computer_store-dom.xml – XML, генериран чрез JavaScript
•	computer_store-html[0, 1, 2 ,3].xsl – 4 трансформации от XML към HTML
•	computer_store-html[0, 1, 2, 3].html – получените трансформации
•	computer_store-xml[0, 1].xsl – 2 трансформации от XML към друг XML
•	computer_store-xml[0, 1].xml – получените трансформации в XML
•	computer_store-txt[0, 1].xml – 2 трансформации от XML към чист текст
•	computer_store-txt[0, 1].txt – получените трансформации в чист текст











Структура на XML файловете:

Computer store
•	Parts
	Processors 
o	Processor (id, socket, integrated_video)
	Model
	Manufacturer
	Architecture
	Clock Frequency
	Cache
	Levels
	Memory
	Threads
	Physical
	Logical
	Available
	Price


	Random Access Memory Boards
o	RAM Board (id, type)
	Manufacturer
	Memory
	Frequency
	Channel
	Available
	Price


	Video Cards
o	Video Card (id, interface)
	Manufacturer
	Model
	GPU Memory (type)
	Bus Width
	Bandwidth
	DirectX
	Shaders 
	Available
	Price



	Hard Drives
o	Hard Drive (id, bus, laptop-compatible)
	Manufacturer
	Drive Memory
	Amount
	Type
	Speed
	Size 
	Available
	Price

	Motherboards
o	Motherboard (id, socket-id, processor, video-card, ram-memory, hard-drive)
	Manufacturer
	Chipset
	Available
	Price

•	Sockets
	Socket (id)

•	Memory types
	Memory type (id)

 
Кореновият елемент е computer-store. Елементите, които съдържа са:
•	Набор от части (parts)
•	Набор от видове памети (memory-types)
•	Набор от видове цокли (sockets)

Частите (parts) съдържат следните категории:
•	Набор от процесори (processors)
•	Набор от видео карти (video-cards)
•	Набор от памети (ram-boards)
•	Набор от твърди дискове (hard-disks)
•	Набор от дънни платки (motherboards)

1.	Процесорите (processors) съдържат поне един елемент процесор (processor).

Процесорът (processor) се състои от следните елементи и атрибути:

•	Атрибути
	id - уникален идентификатор на процесора от тип ID, задължителен
	socket - уникален идентификатор за вида на цокала на процесора от тип IDREF, задължителен
	integrated-video – стойност, показваща дали процесорът има вграден графичен процесор в себе си, може да приеме стойности true или false, като по подразбиране стойността е true

•	Елементи
	model – модел на текущия процесор, от тип PCDATA
	manufacturer – производител на процесора, от тип PCDATA
	architecture – името на използваната архитектура, за разработка на процесора, от тип PCDATA
	clock-frequency – честотата на процесора, от тип PCDATA
	cache – кешът на процесора, има 2 вложени елемента, които го описват:
	levels – колко нива на кеш има процесорът, от тип PCDATA
	memory – големината на паметта на най-голямото ниво на кеша, от тип PCDATA
	threads – броят нишки, които съдържа процесора, състои се от 2 вложени елемента:
	physical – физическият брой нишки (или ядра), от тип PCDATA
	logical – виртуалният брой нишки, от тип PCDATA

	available – броят налични процесора, от тип PCDATA
	price – цена на съответния процесор, от тип PCDATA

2.	Видео картите (video-cards) съдържат поне един елемент видео карта

Видео картата се състои от следните елементи и атрибути:

•	Атрибути
	id - уникален идентификатор на видео картата от тип ID, задължителен
	interface – видът интерфейс (шина), който използва картата, от тип NMTOKEN, задължителен


•	Елементи
	manufacturer – името на производителя на видео картата, от тип PCDATA
	model – името на модела, от тип PCDATA
	gpu_memory – съдържа атрибут type от тип IDREF, който сочи към тип памет от тип memory-types. Съдържанието е големината на паметта на видео картата, от тип PCDATA
	bus-width – големината на шината на видео картата, измерена в битове, от тип PCDATA
	bandwidth – големината на честотната лента, измерена в ГБ/с, от тип PCDATA
	directx – версията на directx, която се поддържа от видео картата, от тип PCDATA
	shaders – броя шейдъри, на видео картата, от тип PCDATA
	available – броят налични видео карти, от тип PCDATA
	price – цена на съответната видео карта, от тип PCDATA



3.	Паметите с произволен достъп (random-access-memory-boards) съдържат поне един елемент от тип РАМ платка (ram-board).
РАМ паметта съдържа следните атрибути и елементи:
•	атрибути:
	id - уникален идентификатор на паметта от тип ID, задължителен
	type – видът на видео картата, сочещ към елемент от тип memory-type, от тип IDREF

•	елементи:
	manufacturer – името на производителя на паметта, от тип PCDATA
	memory – големината на паметта, от тип PCDATA
	frequency – честотата на опресняване на паметта, от тип PCDATA
	channel – колко канална е паметта, от тип PCDATA
	available – колко налични бройки има от тази памет, от тип PCDATA
	price – цената на текущата памет, от тип PCDATA

4.	Твърдите дискове (hard-disks) съдържат поне един елемент от тип хард диск

Елементът тип хард-диск (hard-disk) съдържа следните атрибути и елементи:
•	атрибути: 
	id - уникален идентификатор на твърдия диск от тип ID, задължителен
	bus – типът на връзката между диска и дънната платка, от тип NMTOKEN, задължителен
	laptop-compatible – стойност, казваща дали дискът може да се побере в преносим компютър, може да приема стойности true или false, по подразбиране има стойност false

•	елементи
	manufacturer – името на производителя на диска, от тип PCDATA
	drive-memory – съдържа 2 вложени елемента
	amount – големината на диска, от тип PCDATA
	type – видът, в който паметта се записва, оптична или флаш, от тип PCDATA
	speed – оборотите в минута, с които се върти диска (ако е оптичен), от тип PCDATA
	size – големина на диска в байтове, от тип PCDATA
	available – броят налични дискове, от тип PCDATA
	price – цена на съответния диск, от тип PCDATA


5.	Дънните платки съдържат поне един елемент от тип дънна платка (motherboard)

Една дънна платка съдържа следните елементи и атрибути:

•	атрибути:
	id - уникален идентификатор на дънната платка от тип ID, задължителен
	socket-id – идентификатор на цокала на дънната платка, сочещ към елемент от тип socket, от тип IDREF
	processor – съдържа атрибут id от тип IDREF, сочещ към елемент от тип processor
	video-card – съдържа атрибут id от тип IDREF, сочещ към елемент от тип video-card
	ram-memory – атрибут id от тип IDREF, сочещ към елемент от тип ram
	hard-drive – съдържа атрибут id от тип IDREF, сочещ към елемент от тип hard-drive

•	елементи
	manufacturer – името на производителя, от тип PCDATA
	chipset – името на чипсета, от тип PCDATA
	available – броят налични процесора, от тип PCDATA
	price – цена на съответния процесор, от тип PCDATA


6.	Цоклите (sockets) съдържат поне един елемент от тип цокъл

Всеки елемент от тип цокъл е от тип PCDATA, като съдържа един задължителен атрибут. Този атрибут е уникален индентификатор на цокъла от тип ID.

7.	Видовете памет (memory-types) съдържат поне един елемент от тип вид памет (memory-type)

Всеки елемент от тип вид памет е от тип PCDATA и съдържа един атрибут, който е уникален индентификатор на този вид памет от тип ID, задължителен.
