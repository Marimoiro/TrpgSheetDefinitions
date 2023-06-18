

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
    syakai: number,
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
    shinsyoku: number,
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
    status : "nikutai" | "kankaku" | "seishin" | "syakai",
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
    kousyou : #Skill & { status: "syakai", name : "kousyou" },
    chotatsu : #Skill & { status: "syakai", name : "chotatsu" },
    nikutais : [... #Skill & { status: "nikutai" }],
    kankakus : [... #Skill & { status: "kankaku" }],
    seishins : [... #Skill & { status: "seishin" }],
    syakais : [... #Skill & { status: "syakai" }],
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
    subStatuses: [...#SubStatus],
    lifePaths: #LifePaths,
    skills: #Skills,
    royces: [...#Royce],
    effect: [...#Effect],
    combos: [...#Combo],
    items: [...#Item],
    memo:string
} @cuetsy(kind="interface")

BaseSyndromes : [...#Syndrome] & [
	{
		name: "選択してください",
		status: {
			nikutai: 0,
			kankaku: 0,
			seishin: 0,
			syakai: 0,
		},
	},
	{
		name: "エンジェルハイロウ",
		status: {
			nikutai: 0,
			kankaku: 3,
			seishin: 1,
			syakai: 0,
		},
	},
	{
		name: "バロール",
		status: {
			nikutai: 0,
			kankaku: 1,
			seishin: 2,
			syakai: 1,
		},
	},
	{
		name: "ブラックドッグ",
		status: {
			nikutai: 2,
			kankaku: 1,
			seishin: 1,
			syakai: 0,
		},
	},
	{
		name: "ブラムストーカー"
		status: {
			nikutai: 1,
			kankaku: 2,
			seishin: 1,
			syakai: 0,
		},
	},
	{
		//キュマイラ
		name: "キュマイラ",
		status: {
			nikutai: 3,
			kankaku: 0,
			seishin: 0,
			syakai: 1,
		},
	},
	{
		//エグザイル
		name: "エグザイル",
		status: {
			nikutai: 2,
			kankaku: 1,
			seishin: 0,
			syakai: 1,
		},
	},
	//ハヌマーン
	{
		name: "ハヌマーン",
		status: {
			nikutai: 1,
			kankaku: 1,
			seishin: 1,
			syakai: 1,
		},
	},
	//モルフェウス
	{
		name: "モルフェウス",
		status: {
			nikutai: 1,
			kankaku: 2,
			seishin: 0,
			syakai: 1
		},
	},
	//ノイマン
	{
		name: "ノイマン",
		status: {
			nikutai: 0,
			kankaku: 0,
			seishin: 3,
			syakai: 1,
		},
	},
	//オルクス
	{
		name: "オルクス",
		status: {
			nikutai: 0,
			kankaku: 1,
			seishin: 1,
			syakai: 1,
		},
	},
	//サラマンダー
	{
		name: "ソラリス",
		status: {
			nikutai: 0,
			kankaku: 0,
			seishin: 1,
			syakai: 3,
		},
	},
	//ウロボロス
	{
		name: "ウロボロス",
		status: {
			nikutai: 1,
			kankaku: 1,
			seishin: 2,
			syakai: 0,
		},
	},
	//アザトース
	{
		name: "アザトース",
		status: {
			nikutai: 1,
			kankaku: 0,
			seishin: 3,
			syakai: 0,
		},
	},
	
]



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
		syndrome1 : BaseSyndromes[0],
		syndrome2 : BaseSyndromes[0],
		optionalSyndrome :  BaseSyndromes[0],
		works : {
			name: "",
			status: {
				nikutai: 0,
				kankaku: 0,
				seishin: 0,
				syakai: 0,
			},
		},
		byExp : {
			nikutai: 0,
			kankaku: 0,
			seishin: 0,
			syakai: 0,
		},
		droyce : {
			nikutai: 0,
			kankaku: 0,
			seishin: 0,
			syakai: 0,
		},
		other : {
			nikutai: 0,
			kankaku: 0,
			seishin: 0,
			syakai: 0,
		},
	},
	subStatuses : [
		{
			maxHp : 0,
			zyoubi : 0,
			zaisan : 0,
			actionPoint : 0,
			move: 0,
			maxMove: 0,
			shinsyoku: 0,
		},
		{
			maxHp : 0,
			zyoubi : 0,
			zaisan : 0,
			actionPoint : 0,
			move: 0,
			maxMove: 0,
			shinsyoku: 0,
		},
		{
			maxHp : 0,
			zyoubi : 0,
			zaisan : 0,
			actionPoint : 0,
			move: 0,
			maxMove: 0,
			shinsyoku: 0,
		}
	],
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
			status: "syakai",
			name : "kousyou",
			value: 0,
		},
		chotatsu : {
			status: "syakai",
			name : "chotatsu",
			value: 0,
		},
		nikutais : [],
		kankakus : [],
		seishins : [],
		syakais : [],
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
