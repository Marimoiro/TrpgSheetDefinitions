#Category : {
    name: string
    systems: [...#System]

} @cuetsy(kind="interface")

#System : {
    id: string
    displayname: string
} @cuetsy(kind="interface")

#Systems : {
    Categories: [...#Category]
} @cuetsy(kind="interface")

Systems : #Systems & {
    Categories: [
        {
            name: "インゴク・ラボ"
            systems: [
                {
                    id: "yuuyake_koyake"
                    displayname: "ゆうやけこやけ"
                },
                {
                    id: "System2"
                    displayname: "System2"
                }
            ]
        },
        {
            name: "おまじな大饗宴"
            systems: [
                {
                    id: "shiromonogatari"
                    displayname: "怪談白物語"
                },
                {
                    id: "System4"
                    displayname: "System4"
                }
            ]
        }
    ]
}

