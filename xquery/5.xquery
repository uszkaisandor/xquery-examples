(: List characters appearing in the same episode with Steve Wozniak :)

let $show := doc("../show.xml")
for $characters in ($show//episode/charactersAppearing)
where $characters/character/text() = 'Steve Wozniak'
return $characters/character[not(text() = 'Steve Wozniak')]
