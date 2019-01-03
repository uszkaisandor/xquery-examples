(: All events that mention both Leonard and Sheldon :)

let $show := doc("../show.xml")

for $event in $show//event
return
    if(fn:contains(data($event), "Leonard")  
        and (fn:contains(data($event), "Sheldon"))
    ) 
        then($event)
    else()
 