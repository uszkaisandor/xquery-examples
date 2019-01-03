(: Title of the episodes with IMDB rating < 8.0 ordered by ascending :)
xquery version "3.1";

for $episode in doc("../show.xml")//episode
where $episode/imdbRating < 8.0
order by $episode/title
return ('&#xa;', $episode/title/text())
