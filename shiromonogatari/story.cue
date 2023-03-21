#Keyword : {
    keyword:string,
    color:string | *"#979797",
    override:string | *"",
    isKeyword:bool | *false
} @cuetsy(kind="interface")

#Story : 
{
    keywords:[...#Keyword]
    story:string

} @cuetsy(kind="interface")

sample : #Story & {
    keywords: [
        {
            keyword: "むかし",
            color: "#D75674",
            isKeyword: true
        },
        {
            keyword: "おじいさん",
            color: "#F16056",
            isKeyword: true
        },
        {
            keyword: "桃",
            color: "#FB8D3D",
            isKeyword: true
        },
        {
            keyword: "",
            color: "#F9BB2B",
            isKeyword: true
        },
        {
            keyword: "",
            color: "#D9C81B",
            isKeyword: true
        },
        {
            keyword: "",
            color: "#76BB4C",
            isKeyword: true
        },
        {
            keyword: "",
            color: "#00A583",
            isKeyword: true
        },
        {
            keyword: "",
            color: "#0094A1",
            isKeyword: true
        },
        {
            keyword: "",
            color: "#007DAF",
            isKeyword: true
        },
        {
            keyword: "",
            color: "#4D73BB",
            isKeyword: true
        },
        {
            keyword: "",
            color: "#8B63AC",
            isKeyword: true
        },
        {
            keyword: "",
            color: "#AB5792",
            isKeyword: true
        },
    ],
    story: "むかしむかしあるところにおじいさんとおばあさんがいました。\nおばあさんが川で洗濯をしていると大きな桃がどんぶらこどんぶらこと流れてきました。"

}
