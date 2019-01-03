(: Number of episodes in document :)
xquery version "3.1";

document {
<result>Number of episodes: {count(doc("../show.xml")//episode)}</result>
}