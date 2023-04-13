

#Profile : {
    name: string,
    age: string,
    codeName: string,
    player: string,
    sexsuality: string,
    zodiac:string,
    height:string,
    weight:string,

} @cuetsy(kind="interface")

#MainStatus : {
    nikutai: number,
    kankaku: number,
    seishin: number,
    tisei: number,
} @cuetsy(kind="interface")

#Syndrome : {
    name: string,
    status: #MainStatus,
} @cuetsy(kind="interface")

#Works : {
    name: string,
    status: #MainStatus,
} @cuetsy(kind="interface")

#MainStatuses : {
    syndrome1 : #Syndrome,
    syndrome2 : #Syndrome,
    optionalSyndrome : #Syndrome,
    works: #Works,
    byExp : #MainStatus,
    droyce: #MainStatus,
    other: #MainStatus,
} @cuetsy(kind="interface")



#SubStatus: {
    maxHp : number,
    zyoubi : number,
    zaisan : number,
    actionPoint : number,
    move: number,
    maxMove: number,
} @cuetsy(kind="interface")

#LifePath : {
    name: string,
    subject: string,
    memo: string
} @cuetsy(kind="interface")

#LifePaths : {
    syutuji : #LifePath,
    keiken: #LifePath,
    kaikou: #LifePath,
    kakusei: #LifePath,
    syoudou: #LifePath,
} @cuetsy(kind="interface")

#Skill : {
    status : "nikutai" | "kankaku" | "seishin" | "tisei",
    name: string,
    value: number
} @cuetsy(kind="interface")

#Skills : {
    hakuhei : #Skill & { status: "nikutai", name : "hakuhei" },
    kaihi : #Skill & { status: "nikutai", name : "kougeki" },
    syageki : #Skill & { status: "kankaku", name : "syageki" },
    tikaku : #Skill & { status: "kankaku", name : "tikaku" },
    rc : #Skill & { status: "seishin", name : "rc" },
    ishi : #Skill & { status: "seishin", name : "ishi" },
    kousyou : #Skill & { status: "tisei", name : "kousyou" },
    chotatsu : #Skill & { status: "tisei", name : "chotatsu" },
    nikutais : [... #Skill & { status: "nikutai" }],
    kankakus : [... #Skill & { status: "kankaku" }],
    seishins : [... #Skill & { status: "seishin" }],
    tiseis : [... #Skill & { status: "tisei" }],
} @cuetsy(kind="interface")



#Royce : {
    type : "Normal" | "D"| "S" |"E",
    subject: string,
    positive: string,
    negative: string,
    memo: string,
}

#Effect : {
    type : "Normal" | "auto" | "D" | "easy" | "various",
    name: string,
    lv: number,
    timigng: string,
    skill: string,
    difiicult: string,
    subject: string,
    range: string,
    sinsyoku: string,
    limitation: string,
    limitationCount: string
    calc: string,
    memo: string,

}

#Combo : {
    effectIndices: [...number],
    timigng: string,
    skill: string,
    difiicult: string,
    dice: string,
}

#Item : {
    name: string,
    memo: string,
    value: number,
    exp: number,
}


#Data : {
    profile: #Profile,
    mainStatuses: #MainStatuses,
    subStatus: #SubStatus,
    lifePaths: #LifePaths,
    skills: #Skills,
    royces: [...#Royce],
    effect: [...#Effect],
    combos: [...#Combo],
    items: [...#Item],
    memo:string
} @cuetsy(kind="interface")
