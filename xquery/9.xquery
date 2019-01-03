(: The sum of the lengths of all episodes :)

let $show := doc("../show.xml")

let $durations := (
for $episode in $show//episode
return
    minutes-from-duration(
    xs:dayTimeDuration(data($episode/runtime)))
)

return 
    document 
    {<result>Sum of the lengths of all episodes: {sum($durations)}</result>}