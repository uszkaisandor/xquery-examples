(: Average IMDB rating of episodes by season :)
xquery version "3.1";
declare namespace map = "http://www.w3.org/2005/xpath-functions/map";
declare namespace output = "http://www.w3.org/2010/xslt-xquery-serialization";
declare option output:method "json";

let $show := doc("../show.xml")
return map:merge(
for $season in $show//season
group by $number := $season/@number
return map:entry($season/@number, 
    format-number(avg($season/episodes/episode/imdbRating), '0.00' ))
)