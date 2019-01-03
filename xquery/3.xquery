(: Title of the episodes with IMDB rating < 8.0 :)
xquery version "3.1";

for $item in doc("../show.xml")//episode[imdbRating < 8.0]
return ('&#xa;', $item/title/text())
