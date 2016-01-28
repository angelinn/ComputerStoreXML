var xml = new ActiveXObject("Msxml2.DOMDocument.6.0");

var pi = xml.createProcessingInstruction("xml", "version=\"1.0\" encoding=\"UTF-8\"");
xml.appendChild(pi);

var pharmacyStore = xml.createElement("pharmacy-store");
xml.appendChild(pharmacyStore);

var employees = xml.createElement("employees");
pharmacyStore.appendChild(employees);

var employee1 = xml.createElement("employee");
employees.appendChild(employee1);
employee1.setAttribute("sex", "М");
employee1.setAttribute("id", "E01");
employee1.appendChild(xml.createTextNode("Иван Иванов"));

var employee2 = xml.createElement("employee");
employees.appendChild(employee2);
employee2.setAttribute("id", "E02");
employee2.appendChild(xml.createTextNode("Петя Петкова"));

var drugs = xml.createElement("drugs");
pharmacyStore.appendChild(drugs);

var drug = xml.createElement("drug");
drugs.appendChild(drug);
drug.setAttribute("did", "D380w47123");
drug.setAttribute("price", 2.03);

var name = xml.createElement("name");
drug.appendChild(name);
name.appendChild(xml.createTextNode("Аспирин"));

var activeContent = xml.createElement("active-content");
drug.appendChild(activeContent);

var content = xml.createElement("content");
activeContent.appendChild(content);
content.appendChild(xml.createTextNode("Ацетилсалицилова к-на"));

var manufacturer = xml.createElement("manufacturer");
drug.appendChild(manufacturer);
manufacturer.appendChild(xml.createTextNode("Bayer"));

var provided = xml.createElement("provided");
drug.appendChild(provided);
provided.setAttribute("by", "P01 P02");

var providers = xml.createElement("providers");
pharmacyStore.appendChild(providers);

var provider1 = xml.createElement("provider");
providers.appendChild(provider1);
provider1.setAttribute("pid", "P01");
provider1.appendChild(xml.createTextNode("Доставчик 1"));

var provider2 = xml.createElement("provider");
providers.appendChild(provider2);
provider2.setAttribute("pid", "P02");
provider2.appendChild(xml.createTextNode("Доставчик 2"));

xml.save("generated.xml");
