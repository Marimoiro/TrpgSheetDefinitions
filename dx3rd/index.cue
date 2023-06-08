

#Profile : {
    name: string,
    age: string,
    codeName: string,
    player: string,
    sexuality: string,
    bloodType: string,
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
    difficult: string,
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
    difficult: string,
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

Default : #Data & {
	profile: {
		name: "",
		age: "",
		codeName: "",
		player: "",
		sexuality: "",
		bloodType: "",
		zodiac: "",
		height: "",
		weight: "",
	},
	mainStatuses : {
		syndrome1 : {
			name: "",
			status: {
				nikutai: 0,
				kankaku: 0,
				seishin: 0,
				tisei: 0,
			},
		},
		syndrome2 : {
			name: "",
			status: {
				nikutai: 0,
				kankaku: 0,
				seishin: 0,
				tisei: 0,
			},
		},
		optionalSyndrome : {
			name: "",
			status: {
				nikutai: 0,
				kankaku: 0,
				seishin: 0,
				tisei: 0,
			},
		},
		works : {
			name: "",
			status: {
				nikutai: 0,
				kankaku: 0,
				seishin: 0,
				tisei: 0,
			},
		},
		byExp : {
			nikutai: 0,
			kankaku: 0,
			seishin: 0,
			tisei: 0,
		},
		droyce : {
			nikutai: 0,
			kankaku: 0,
			seishin: 0,
			tisei: 0,
		},
		other : {
			nikutai: 0,
			kankaku: 0,
			seishin: 0,
			tisei: 0,
		},
	},
	subStatus : {
		maxHp : 0,
		zyoubi : 0,
		zaisan : 0,
		actionPoint : 0,
		move: 0,
		maxMove: 0,
	},
	lifePaths : {
		syutuji : {
			name: "",
			subject: "",
			memo: "",
		},
		keiken : {
			name: "",
			subject: "",
			memo: "",
		},
		kaikou : {
			name: "",
			subject: "",
			memo: "",
		},
		kakusei : {
			name: "",
			subject: "",
			memo: "",
		},
		syoudou : {
			name: "",
			subject: "",
			memo: "",
		},
	},
	skills : {
		hakuhei : {
			status: "nikutai",
			name : "hakuhei",
			value: 0,
		},
		kaihi : {
			status: "nikutai",
			name : "kougeki",
			value: 0,
		},
		syageki : {
			status: "kankaku",
			name : "syageki",
			value: 0,
		},
		tikaku : {
			status: "kankaku",
			name : "tikaku",
			value: 0,
		},
		rc : {
			status: "seishin",
			name : "rc",
			value: 0,
		},
		ishi : {
			status: "seishin",
			name : "ishi",
			value: 0,
		},
		kousyou : {
			status: "tisei",
			name : "kousyou",
			value: 0,
		},
		chotatsu : {
			status: "tisei",
			name : "chotatsu",
			value: 0,
		},
		nikutais : [],
		kankakus : [],
		seishins : [],
		tiseis : [],
	},
	royces : [],
	effect : [
		{
			type : "Normal",
			name: "コンセントレイト",
			lv: 2,
			timigng: "メジャー",
			skill: "ｼﾝﾄﾞﾛｰﾑ",
			difficult: "",
			subject: "",
			range: "",
			sinsyoku: "2",
			limitation: "",
			limitationCount: "",
			calc: "",
			memo: "C値-1",
		},
	],
	combos : [],
	items : [],
	memo: "",
}
