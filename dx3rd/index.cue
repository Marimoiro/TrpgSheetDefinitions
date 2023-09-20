

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
    initiative : number,
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
	name : string,
    status : "nikutai" | "kankaku" | "seishin" | "syakai",
    exp: number | *0
    dice: number | *0
    other: number | *0
    memo: string | *""
    perExp : number | *1
} @cuetsy(kind="interface")


#Skills : {
	nikutai : [...#Skill & { status: "nikutai" }],
	kankaku : [...#Skill & { status: "kankaku" }],
	seishin : [...#Skill & { status: "seishin" }],
	syakai : [...#Skill & { status: "syakai" }],
} @cuetsy(kind="interface")

DefaultSkills : #Skills & {
	nikutai : [
		// 白兵
		{ status: "nikutai", exp: 0, dice: 0, other: 0, name: "白兵", memo: "", perExp: 2 },
		//回避
		{ status: "nikutai", exp: 0, dice: 0, other: 0, name: "回避", memo: "", perExp: 2 },
		//空白
		{ status: "nikutai", exp: 0, dice: 0, other: 0, name: "", memo: "", perExp: 1 },
		
	],
	kankaku : [
		//射撃
		{ status: "kankaku", exp: 0, dice: 0, other: 0, name: "射撃", memo: "", perExp: 2 },
		//知覚
		{ status: "kankaku", exp: 0, dice: 0, other: 0, name: "知覚", memo: "", perExp: 2 },
		//空白
		{ status: "kankaku", exp: 0, dice: 0, other: 0, name: "", memo: "", perExp: 1 },
	],
	seishin : [
		//RC
		{ status: "seishin", exp: 0, dice: 0, other: 0, name: "RC", memo: "", perExp: 2 },
		// 意思
		{ status: "seishin", exp: 0, dice: 0, other: 0, name: "意思", memo: "", perExp: 2 },
		//空白
		{ status: "seishin", exp: 0, dice: 0, other: 0, name: "", memo: "", perExp: 1 },
	],
	syakai : [
		//交渉
		{ status: "syakai", exp: 0, dice: 0, other: 0, name: "交渉", memo: "", perExp: 2 },
		//調達
		{ status: "syakai", exp: 0, dice: 0, other: 0, name: "調達", memo: "", perExp: 2 },
		//空白
		{ status: "syakai", exp: 0, dice: 0, other: 0, name: "", memo: "", perExp: 1 },
	],
	
}


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
	critical : #ScaledEffect,
	
} @cuetsy(kind="interface")

#Effect : {
	id : number | *0,
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
    stackable : #DxEffects,
    enable : bool | *true,
} @cuetsy(kind="interface")

#Combo : {
    ids: [...number],
    stackable : #DxEffects,
    aggregate : #DxEffects,
    name: string,
    timigng: string,
    skill: string,
    difficult: string,
    sinsyoku: string,
    limitation: string,
    limitationCount: string
    target : string | *"",
    range : string | *"",
    memo: string,
    enable : bool | *true,
    
} @cuetsy(kind="interface")

DefaultCombo : #Combo & {
    ids: [],
    stackable : #DxEffects,
    aggregate : #DxEffects,
    name: "",
    timigng: "",
    skill: "",
    difficult: "",
    sinsyoku: "",
    limitation: "",
    limitationCount: ""
    target : "",
    range : "",
    memo: "",
    enable : true,
    
}


#LvScaleEffect : {
	value : number | *0,
	scale : number | *0,
	lv: number | *0,
}

#Item : {
	id : number | *0,
    name: string | *"",
    memo: string | 	*""
    exp: number | *0,
    cost: number | *0
    enable: bool | *true
    type: string | *""
    status: *"owned" | "unowned"
} @cuetsy(kind="interface")

DefaultItem : #Item 

#Weapon : {
	id : number | *0,
	skill: string | *"",
	range: string | *"",
	
	name: string | *"",
    memo: string | *""
    exp: number | *0,
    cost: number | *0,
    enable: bool | *true,
    type: string | *""
    status: *"equipped" | "owned" | "unowned"
    
	
	effectLv : number | *0,
	attack : #LvScaleEffect ,
	guard : #LvScaleEffect ,
	hit : #LvScaleEffect ,
} @cuetsy(kind="interface")

DefaultWeapon : #Weapon


#Armor : {
	id : number | *0,
	
	name: string | *"",
    memo: string | *"",
    exp: number | *0,
    cost: number | *0,
    enable: bool | *true,
    type: string | *""
    
    status: *"equipped" | "owned" | "unowned"
    
    effectLv : number | *0,
	initiative: number | *0,
	dodge: number | *0,
	armor:  #LvScaleEffect
	
} @cuetsy(kind="interface")

DefaultArmor : #Armor

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
    weapons: [...#Weapon],
    armors: [...#Armor],
    memo:string,
    currentId : number | *10,
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
			initiative : 0,
			move: 0,
			maxMove: 0,
			shinsyoku: 0,
		},
		{
			maxHp : 0,
			zyoubi : 0,
			zaisan : 0,
			initiative : 0,
			move: 0,
			maxMove: 0,
			shinsyoku: 0,
		},
		{
			maxHp : 0,
			zyoubi : 0,
			zaisan : 0,
			initiative : 0,
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
	skills : DefaultSkills,
	royces : [EmptyRoyce,EmptyRoyce,EmptyRoyce,EmptyRoyce,EmptyRoyce,EmptyRoyce,EmptyRoyce],
	effects : [
		{
			id : 1
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
	currentId : 10
}


