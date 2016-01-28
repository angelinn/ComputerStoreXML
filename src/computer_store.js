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

var gpu_memory = xml.createElement('gpu-memory');
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


xml.save("generated.xml");
