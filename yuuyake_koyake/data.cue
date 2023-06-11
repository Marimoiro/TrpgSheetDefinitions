
#Tokugi : {
    name:string,
    text:string,
    jakuten:string,
    cost:int,
} @cuetsy(kind="interface")

#KihonTokugi : #Tokugi &
{
    jakuten:""

} @cuetsy(kind="interface")

#Tsunagari : {
    // 関係の内容
    yours: string,
    yourValue: int,
    companionName: string,
    companions: string,
    companionValue: string
} @cuetsy(kind="interface")

#Ito : {

    companion : string,
    relation : string,

} @cuetsy(kind="interface")

#Memory : {
    tsunagaris : [...#Tsunagari],
    omoi : int,
    fushigi : intgi
    omoide : string 
} @cuetsy(kind="interface")


#Profile : {
    name: string,
    syotai: string,
    age: string,
    sexsuality: string,
    player: string,
    humanStyle: string,
} @cuetsy(kind="interface")

#Data : {
    stats:{
        henge: int,
        kemono: int,
        kodomo: int,
        otona: int,
    },
    exStats:{
        henge: int,
        kemono: int,
        kodomo: int,
        otona: int,
    },
    profile : #Profile,
    kihonTokugis : [...#KihonTokugi],
    tsuikaTokugis : [...#Tokugi],
    
} @cuetsy(kind="interface")

#KihonTokugis : [...#KihonTokugi]

kihonTokugis : {
	kitsune : #KihonTokugis & [
		{
			name : "こあくま",
			text : "人間や同種の変化の異性からのつながりに+1。その内容を自由に設定できる"
			cost : 0
		},
		{
			name: "おつげ"
			text: "語り手に夢の内容をきちんと説明する。相手に夢を見せて自分の【へんげ】≧相手の【おとな】なら行動を操作する"
			cost : 6
		},
		{
			name: "ひのたま"
			text: "夕方か夜、尻尾を出している時に使用。自分の【へんげ】≧相手の【おとな】なら行動を操作する"
			cost : 6
		},
		{
			name: "かくれみの"
			text: "場面が変わるか解除するまで、【けもの】が[自分の【けもの】+2]以下のキャラクターからみえなくなる"
			cost: 8 
		},
		{
			name: "にせもの"
			text: "場面が変わるか解除するまで同じくらいの大きさの物の形だけを変化させる。"
			cost: 10
		},
		{
			name: "きつねのよめいり"
			text: "場面が変わるまで雨を降らせる。雨に当たっている間変化は人間に化けるためのコストが必要なくなる。そのうえふしぎと想いをどちらの用途でも使えるようになる"
			cost: 12
		}
	],
	tanuki : #KihonTokugis & [
		{
			name : "おかね",
			text : "夕方か夜に使用可能。木の葉やどんぐりをお金に見せかける。夜明けに元に戻ってしまう"
			cost : 2
		},
		{
			name: "おばけ"
			text: "おばけに化ける。びっくりさせる場合【へんげ】を特別に1あげる"
			cost : 8
		},
		{
			name: "なんでもへんしん"
			text: "変身できる。コスト16で人がはいれるくらい大きいものにもなれる。液体や機体ほかの変化にはなれない"
			cost : 8
		},
		{
			name: "まねっこ"
			text: "知っている人やへんげに化けられる。化けた人とつながりがある人と一言話すごとに自分の【へんげ】＜相手の【おとな】か化けた人へのつながりだとばれてしまう。"
			cost: 8 
		},
		{
			name: "たぬきばやし"
			text: "夕方か夜に使用可能。場面の終了まで登場している全員の【おとな】が0にまり。文明的な品物が使えなくなる"
			cost: 12
		},
		{
			name: "ゆめまぼろし"
			text: "次の場面か解除するまで一人を完全な幻でつつむ。自分の【へんげ】＜相手の【おとな】でばれてしまう。"
			cost: 16
		}
	],
	neko : #KihonTokugis & [
		{
			name : "にゃんこ",
			text : "動物状態でもびっくりされない。"
			cost : 0
		},
		{
			name: "すりすり"
			text: "場面中、人間に甘えている間その人間の【おとな】を0にする。"
			cost : 4
		},
		{
			name: "こころのぞき"
			text: "心をのぞいて心の中で言っていることがわかる。本心や真実とは限らない"
			cost : 6
		},
		{
			name: "ぬきあし"
			text: "場面中、誰にも気が付かれずに行動できる。"
			cost: 8
		},
		{
			name: "ねこみち"
			text: "場面中、いつでも登場したり退場できる。複数の相手のもコストを払えば使える。"
			cost : 10
		},

		{
			name: "おともだち"
			text: "町の猫みんなに協力してもらう。【けもの】と【へんげ】2倍、にゃんこ無効"
			cost: 14
		}
	],
	
	
}

Races : {
	kitsune : "狐"
	tanukuki : "狸"
	neko : "猫"
	inu : "犬"
	usagi : "兎"
	tori : "鳥"
	nezumi : "鼠"
	mitinoke : "道怪"
	oni : "鬼"
	kappa : "河童"
	yuurei : "幽霊"
	marebito : "マレビト"
	tsukumogami : "付喪神"
}

sample : #Data & {
	stats:{
        henge: 3,
        kemono: 2,
        kodomo: 1,
        otona: 2,
    },
    exStats:{
        henge: 0,
        kemono: 0,
        kodomo: 0,
        otona: 0,
    },
	profile : {
		name: "八幡鈴音",
		syotai: "狐",
		age: "10",
		sexsuality:"♀",
		player: "gm",
		humanStyle: "着物のおんなのこ"
    }
}
