(: Select the title element of all episodes :)
xquery version "3.1";
declare namespace xsi = "http://www.w3.org/2001/XMLSchema-instance";


doc("../show.xml")//episode/title