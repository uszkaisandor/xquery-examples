(: Number of episodes in document :)

document {
<result>Number of episodes: {count(doc("../show.xml")/show/seasons/season/episodes/episode)}</result>
}