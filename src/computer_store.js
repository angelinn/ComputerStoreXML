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



var sockets = xml.createElement('sockets');
computerStore.appendChild(sockets);

var memoryTypes = xml.createElement('memory-types');
computerStore.appendChild(memoryTypes);

xml.save("generated.xml");
