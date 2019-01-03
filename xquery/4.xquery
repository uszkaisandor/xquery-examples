(: The top 3 episodes :)
xquery version "3.1";

let $show := doc("../show.xml")
return document {
    element top-episodes {
        let $sorted-episodes :=
            for $episode in $show//episode
            order by $episode/imdbRating descending
            return $episode
        return $sorted-episodes[position() <= 3]
    }
}