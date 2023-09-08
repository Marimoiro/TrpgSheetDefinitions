

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
    exp: number | *0
    dice: number | *0
    other: number | *0
    memo: string | *""
} @cuetsy(kind="interface")

#SmallSkill : {
	status : "nikutai" | "kankaku" | "seishin" | "syakai",
    exp: number | *0
    dice: number | *0
    other: number | *0
	name : string,
	memo: string | *""
} @cuetsy(kind="interface")


#Skills : {
    hakuhei : #Skill & { status: "nikutai" },
    kaihi : #Skill & { status: "nikutai" },
    syageki : #Skill & { status: "kankaku" },
    tikaku : #Skill & { status: "kankaku" },
    rc : #Skill & { status: "seishin" },
    ishi : #Skill & { status: "seishin" },
    kousyou : #Skill & { status: "syakai" },
    chotatsu : #Skill & { status: "syakai" },
    smallSkills : [...#SmallSkill],
} @cuetsy(kind="interface")



#Royce : {
    type : "-" | "D"| "S" |"E",
    subject: string,
    positive: string,
    negative: string,
    memo: string,
    titus : bool | *false, 
}

EmptyRoyce : {
	type : "-",
	subject: "",
	positive: "",
	negative: "",
	memo: "",
}


#TargetType : "None" | "Self" | "One" | "Many" | "Count" | "Scene"  //@cuetsy(kind="enum")

#Target : {
	type : "None" | "Self" | "One" | "Many" | "Count" | "Scene"
	value : number | *0,
}@cuetsy(kind="interface")

#RangeType : "None" | "Close" | "Meter" | "Self" | "Area" //@cuetsy(kind="enum")

#Range : {
	type : "None" | "Close" | "Meter" | "Self" | "Area"
	value : number | *0,
}@cuetsy(kind="interface")

#EfficacyType : "Damage" | "Dice" | "Heal" | "Critical" | "TargetSubject" @cuetsy(kind="enum")

#Efficacy : {
	type : #EfficacyType,
	option : string | *"",
	value : number | *0,
	
}@cuetsy(kind="interface")

#ScaledEffect : {
	value : number | *0,
	scale : number | *0,
	lv: number | *0,
	valueDice : number | *0,
	scaleDice : number | *0, 
	plus : bool | *true,
	showValue : bool | *true,
	enable : bool | *false,
}

#FixedEffect : {
	value : number | *0,
}

#DxEffects : {
	attack : #ScaledEffect,
	damageUp : #ScaledEffect,
	heal: #ScaledEffect,
	guard : #ScaledEffect,
	armor : #ScaledEffect,
	damageDown : #ScaledEffect, 
	
	
	hit : #ScaledEffect,
	critical : #ScaledEffect & { plus: false },
	
} @cuetsy(kind="interface")

#Effect : {
    type : "normal" | "auto" | "d" | "easy" | "various",
    name: string,
    lv: number,
    timigng: string,
    skill: string,
    difficult: string,
    sinsyoku: string,
    limitation: string,
    limitationCount: string
    target : string | *"",
    range : string | *"",
    memo: string,
    stackable : #DxEffects
} @cuetsy(kind="interface")

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
    effects: [...#Effect],
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
		},
		kaihi : {
			status: "nikutai",

		},
		syageki : {
			status: "kankaku",
		},
		tikaku : {
			status: "kankaku",
		},
		rc : {
			status: "seishin",
		},
		ishi : {
			status: "seishin",
		},
		kousyou : {
			status: "syakai",
		},
		chotatsu : {
			status: "syakai",
		},
		smallSkills : [
			{
				status: "nikutai",
				name : "",
			},
			{
				status: "kankaku",
				name : "",
			},
			{
				status: "seishin",
				name : "",
			},
			{
				status: "syakai",
				name : "",
			},

		]
	},
	royces : [EmptyRoyce,EmptyRoyce,EmptyRoyce,EmptyRoyce,EmptyRoyce,EmptyRoyce,EmptyRoyce],
	effects : [
		{
			type : "normal",
			name: "コンセントレイト",
			lv: 2,
			timigng: "メジャー",
			skill: "ｼﾝﾄﾞﾛｰﾑ",
			difficult: "",
			target: "-",
			range: "-",
			sinsyoku: "2",
			limitation: "",
			limitationCount: "",
			
			stackable : #DxEffects & {
				critical : {
					enable : true,
					scale : 1,
					plus : false
				}
			},
			memo: "C値-1",
		},
	],
	combos : [],
	items : [],
	memo: "",
}
