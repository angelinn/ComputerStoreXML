var xml = new ActiveXObject("Msxml2.DOMDocument.6.0");

var pi = xml.createProcessingInstruction("xml", "version=\"1.0\" encoding=\"UTF-8\"");
xml.appendChild(pi);

var computerStore = xml.createElement('computer-store');
xml.appendChild(computerStore);

var parts = xml.createElement('parts');
computerStore.appendChild(parts);

var processors = xml.createElement('processors');
parts.appendChild(processors);

var processor = xml.createElement('processor');
processors.appendChild(processor);
processor.setAttribute('id', 'IC478')
processor.setAttribute('socket', 'I478')
processor.setAttribute('integrated_video', 'false')

var model = xml.createElement('model');
processor.appendChild(model);
model.appendChild(xml.createTextNode('Селерон FSB'));

var manufacturer = xml.createElement('manufacturer');
processor.appendChild(manufacturer);
manufacturer.appendChild(xml.createTextNode('Интел'));

var architecture = xml.createElement('architecture');
processor.appendChild(architecture);
architecture.appendChild(xml.createTextNode('Бродуел'));

var clockFrequency = xml.createElement('clock-frequency');
processor.appendChild(clockFrequency);
clockFrequency.appendChild(xml.createTextNode('2200'));

var cache = xml.createElement('cache');
processor.appendChild(cache);

var levels = xml.createElement('levels');
levels.appendChild(xml.createTextNode('2'));
var memory = xml.createElement('memory');
memory.appendChild(xml.createTextNode('128 КБ'));
cache.appendChild(levels);
cache.appendChild(memory);

var threads = xml.createElement('threads');
processor.appendChild(threads);

var physical = xml.createElement('physical');
physical.appendChild(xml.createTextNode('2'));
var logical = xml.createElement('logical');
logical.appendChild(xml.createTextNode('2'));
threads.appendChild(physical);
threads.appendChild(logical);

var available = xml.createElement('available');
processor.appendChild(available);
available.appendChild(xml.createTextNode('1'));

var price = xml.createElement('price');
processor.appendChild(price);
price.appendChild(xml.createTextNode('49 лева'));

var ram_boards = xml.createElement('ram-boards');
parts.appendChild(ram_boards);

var board = xml.createElement('ram-board');
ram_boards.appendChild(board);

board.setAttribute('id', 'XTREME2');
board.setAttribute('type', 'D1');

var b_man = xml.createElement('manufacturer');
board.appendChild(b_man);
b_man.appendChild(xml.createTextNode('XTremeDDR'));

var mem = xml.createElement('memory');
board.appendChild(mem);
mem.appendChild(xml.createTextNode('256МБ'));

var frequency = xml.createElement('frequency');
board.appendChild(frequency);
frequency.appendChild(xml.createTextNode('200 мега-херца'));

var channel = xml.createElement('channel');
board.appendChild(channel);
channel.appendChild(xml.createTextNode('единичен'));

var b_available = xml.createElement('available');
board.appendChild(b_available);
b_available.appendChild(xml.createTextNode('2'));

var b_price = xml.createElement('price');
board.appendChild(b_price);
b_price.appendChild(xml.createTextNode('9 лева'));

var videos = xml.createElement('video-cards');
parts.appendChild(videos);

var videoCard = xml.createElement('video-card');
videos.appendChild(videoCard);

videoCard.setAttribute('id', 'HD4550');
videoCard.setAttribute('interface', 'PCIE-2');

var v_man = xml.createElement('manufacturer');
videoCard.appendChild(v_man);
v_man.appendChild(xml.createTextNode('AMD'));

var v_model = xml.createElement('model');
videoCard.appendChild(v_model);
v_model.appendChild(xml.createTextNode('HD 4550'));

var gpu_memory = xml.createElement('gpu_memory');
videoCard.appendChild(gpu_memory);
gpu_memory.setAttribute('type', 'GD5');
gpu_memory.appendChild(xml.createTextNode('1ГБ'));

var bus_width = xml.createElement('bus-width');
videoCard.appendChild(bus_width);
bus_width.appendChild(xml.createTextNode('64 бита'));

var bandwidth = xml.createElement('bandwidth');
videoCard.appendChild(bandwidth);
bandwidth.appendChild(xml.createTextNode('6.4 ГБ/с'));

var directx = xml.createElement('directx');
videoCard.appendChild(directx);
directx.appendChild(xml.createTextNode('10'));

var shaders = xml.createElement('shaders');
videoCard.appendChild(shaders);
shaders.appendChild(xml.createTextNode('11.9 гига-пиксела/с'));

var v_available = xml.createElement('available');
videoCard.appendChild(v_available);
v_available.appendChild(xml.createTextNode('2'));

var v_price = xml.createElement('price');
videoCard.appendChild(v_price);
v_price.appendChild(xml.createTextNode('79 лева'));

var hard_drives = xml.createElement('hard-drives');
parts.appendChild(hard_drives);

var hard_drive = xml.createElement('hard-drive');
hard_drives.appendChild(hard_drive);

hard_drive.setAttribute('id', 'IBM3000');
hard_drive.setAttribute('bus', 'SATA3');
hard_drive.setAttribute('laptop-compatible', 'true');

var h_man = xml.createElement('manufacturer');
hard_drive.appendChild(h_man);
h_man.appendChild(xml.createTextNode('Western Digital Black'));

var drive_memory = xml.createElement('drive-memory');
hard_drive.appendChild(drive_memory);

var amount = xml.createElement('amount');
drive_memory.appendChild(amount);
amount.appendChild(xml.createTextNode('4ТБ'));

var drive_type = xml.createElement('type');
drive_memory.appendChild(drive_type);
drive_type.appendChild(xml.createTextNode('Оптична'));

var speed = xml.createElement('speed');
hard_drive.appendChild(speed);
speed.appendChild(xml.createTextNode('7200 оборота/м'));

var size = xml.createElement('size');
hard_drive.appendChild(size);
size.appendChild(xml.createTextNode('2.5 инча'));

var h_available = xml.createElement('available');
hard_drive.appendChild(h_available);
h_available.appendChild(xml.createTextNode('2'));

var h_price = xml.createElement('price');
hard_drive.appendChild(h_price);
h_price.appendChild(xml.createTextNode('559 лева'));

var motherboards = xml.createElement('motherboards');
parts.appendChild(motherboards);

var mobo = xml.createElement('motherboard');
motherboards.appendChild(mobo);

mobo.setAttribute('id', 'LDMB');
mobo.setAttribute('socket-id', 'I478');
mobo.setAttribute('processor', 'IC478');
mobo.setAttribute('video-card', 'HD4550');
mobo.setAttribute('ram-memory', 'XTREME2');
mobo.setAttribute('hard-drive', 'IBM3000');

var m_man = xml.createElement('manufacturer');
mobo.appendChild(m_man);
m_man.appendChild(xml.createTextNode('Leadtech'));

var chipset = xml.createElement('chipset');
mobo.appendChild(chipset);
chipset.appendChild(xml.createTextNode('VIA Technologies'));

var m_available = xml.createElement('available');
mobo.appendChild(m_available);
m_available.appendChild(xml.createTextNode('8'));

var m_price = xml.createElement('price');
mobo.appendChild(m_price);
m_price.appendChild(xml.createTextNode('229 лева'));

var sockets = xml.createElement('sockets');
computerStore.appendChild(sockets);

var socket_uno = xml.createElement('socket');
sockets.appendChild(socket_uno);

socket_uno.setAttribute('id', 'I478');
socket_uno.appendChild(xml.createTextNode('Intel 478'));

var socket_dos = xml.createElement('socket');
sockets.appendChild(socket_dos);

socket_dos.setAttribute('id', 'FM2');
socket_dos.appendChild(xml.createTextNode('AMD FM2'));


var memoryTypes = xml.createElement('memory-types');
computerStore.appendChild(memoryTypes);

var ddr = xml.createElement('memory-type');
memoryTypes.appendChild(ddr);

ddr.setAttribute('id', 'D1');
ddr.appendChild(xml.createTextNode('DDR1'));

var gddr = xml.createElement('memory-type');
memoryTypes.appendChild(gddr);

gddr.setAttribute('id', 'GD5');
gddr.appendChild(xml.createTextNode('GDDR5'));


xml.save("computer_store_dom.xml ");
