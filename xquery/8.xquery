(: Create a table of episodes ordered by runtime :)
xquery version "3.1";
declare namespace xh = "http://www.w3.org/1999/xhtml";
declare namespace output = "http://www.w3.org/2010/xslt-xquery-serialization";
declare option output:method "xhtml";
declare option output:indent "yes";

let $show := doc("../show.xml")
return
    element xh:table {
        element xh:thead {
            element xh:tr {
                element xh:th { "Rank" },
                element xh:th { "Minutes" },
                element xh:th { "Title" },
                element xh:th { "Air Date" }          
            }
        },
    element xh:tbody {
        for $episode in $show//episode
        order by minutes-from-duration(
        xs:dayTimeDuration(data($episode/runtime))) descending
        count $rank
        return
            element xh:tr {
                element xh:td { $rank },
                element xh:td { minutes-from-duration(
                xs:dayTimeDuration(data($episode/runtime))) },
                element xh:td { data($episode/title) },
                element xh:td { data($episode/airDate) }
            }
    }
}
