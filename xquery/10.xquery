(: Best episodes by season :)
xquery version "3.1";

let $show := doc("../show.xml")
return document {
    <top-episodes>
        {
            for $season in $show/show/seasons/season
            group by $num := $season/@number
            order by $num
            let $max-rating := max($season/episodes/episode/imdbRating)
            return
                element group {
                    attribute season { $num },
                    attribute max-rating { $max-rating },
                    $season[xs:decimal(imdbRating) eq $max-rating]
                }
        }
    </top-episodes>
}