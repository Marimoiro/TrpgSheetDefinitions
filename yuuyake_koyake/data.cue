
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
    fushigi : int
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

KihonTokugiSet : {
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
	inu : #KihonTokugis & [
		{
			name : "わんこ",
			text : "動物状態でもびっくりされない。"
			cost : 0
		},
		{
			name: "なつく"
			text: "出会いで誰かとつながるときに使ってもよい。相手のつながりと同じだけ愛t寧想いを与えられる。"
			cost : 4
		},
		{
			name: "なでなで"
			text: "ちゃんとなでてもらう。相手のつながりと同じだけ想いを得る。"
			cost : 6
		},
		{
			name: "だいじょうぶ"
			text: "元気づけびっくりなどの状態を回復させる。"
			cost: 6
		},
		{
			name: "みがわり"
			text: "登場していなくても、誰かの身代わりになれる。語り手は傷や感謝を与えられる。"
			cost : 10
		},

		{
			name: "ほえる"
			text: "自分の【けもの】＞相手の【おとな】なら相手をびっくりさせる。"
			cost: 14
		}
	],
	usagi : #KihonTokugis & [
		{
			name : "かわいい",
			text : "つながりを持っている相手は、1点少ない夢でつながりを強くできる"
			cost : 0
		},
		{
			name: "もちつき"
			text: "何点でもふしぎを使う。使ったふしぎと同じだけ想いを手に入れる。コストはいくつでも府やsる。"
			cost : 1
		},
		{
			name: "たれみみ"
			text: "あいてのつながりと同じだけ想いをてにいれる"
			cost : 3
		},
		{
			name: "たすけて"
			text: "つながりのあるキャラクターを登場させる。"
			cost: 6
		},
		{
			name: "しらんぷり"
			text: "場面が終わるまで、相手一人は自分の嘘を見破れなくなる。"
			cost : 8
		},

		{
			name: "つきのひかり"
			text: "月の夜、同意した相手の人間を動物に動物を人間に変化させる。セッション終了か自分が解除するまで有効。"
			cost: 20
		}
	],
	tori : #KihonTokugis & [
		{
			name : "ことり",
			text : "動物状態でもびっくりされない"
			cost : 0
		},
		{
			name: "つばさ"
			text: "人間時以外、飛べる。逃げたり探したりするときの能力+2"
			cost : 2
		},
		{
			name: "かぜのうた"
			text: "自由に風を吹かせる"
			cost : 4
		},
		{
			name: "つばさをあげる"
			text: "場面が終わるまで、つながりのあるキャラクターはつばさを想いかふしぎを2点消費すれば使うことができる。"
			cost: 8
		},
		{
			name: "うわさ"
			text: "うわさを広める"
			cost : 10
		},

		{
			name: "はねまくら"
			text: "1セッション中1回翼があるときに、相手の自分へのつながりを1強くする"
			cost: 12
		}
	],
	nezumi : #KihonTokugis & [
		{
			name : "ねずみのあな",
			text : "どんなときも退場できる"
			cost : 4
		},
		{
			name: "やってやって"
			text: "誰かに判定を代わってもらう判定にはねずみの想いも使える"
			cost : 6
		},
		{
			name: "ちゅうちゅう"
			text: "自分の【おとな】＞相手の【おとな】なら相手をだませる"
			cost : 8
		},
		{
			name: "こそこそ"
			text: "場面が終わるまで、気づかれずにこっそり行動できる"
			cost: 8
		},
		{
			name: "こだくさん"
			text: "場面が終わるまで、【おとな】が2倍になる"
			cost : 8
		},

		{
			name: "いたずら"
			text: "つかわれた特技をなかったことにする。"
			cost: 12
		}
	],
	nezumi : #KihonTokugis & [
		{
			name : "ねずみのあな",
			text : "どんなときも退場できる"
			cost : 4
		},
		{
			name: "やってやって"
			text: "誰かに判定を代わってもらう判定にはねずみの想いも使える"
			cost : 6
		},
		{
			name: "ちゅうちゅう"
			text: "自分の【おとな】＞相手の【おとな】なら相手をだませる"
			cost : 8
		},
		{
			name: "こそこそ"
			text: "場面が終わるまで、気づかれずにこっそり行動できる"
			cost: 8
		},
		{
			name: "こだくさん"
			text: "場面が終わるまで、【おとな】が2倍になる"
			cost : 8
		},

		{
			name: "いたずら"
			text: "つかわれた特技をなかったことにする。"
			cost: 12
		}
	],
	mitinoke : #KihonTokugis & [
		{
			name : "やみよ",
			text : "場面中、【へんげ】+2"
			cost : 4
		},
		{
			name: "ばったり"
			text: "だれかがいれば登場できる。そこにいた人はびっくりさせたかの判定をする。"
			cost : 6
		},
		{
			name: "おくりあし"
			text: "相手から見えなくなる、こちらも触れない。相手の【おとな】を0にする"
			cost : 6
		},
		{
			name: "まよいみち"
			text: "場面中解除するまで、迷わせて特定の場所につけなくする。"
			cost: 10
		},
		{
			name: "かくれざと"
			text: "隠れ里に入る、つながりがあれば一緒に入れる。人間はもののけと一緒でないと入れない。"
			cost : 12
		},

		{
			name: "みちおくり"
			text: "つながりがあれば、どこにでもつれていける"
			cost: 12
		}
	],
	oni : #KihonTokugis & [
		{
			name : "ちからもち",
			text : "力比べの時に【けもの】を2倍"
			cost : 0
		},
		{
			name: "かみなり"
			text: "かみなりを落とす、【おとな】4以上ないキャラクターはびっくりする"
			cost : 8
		},
		{
			name: "かなぼう"
			text: "場面中、かなぼうを手に入れる"
			cost : 8
		},
		{
			name: "かくれざと"
			text: "隠れ里に入る、つながりがあれば一緒に入れる。人間はもののけと一緒でないと入れない。"
			cost : 12
		},
		{
			name: "おにうつし"
			text: "ほかのもののけが使った特技をまねる"
			cost: 12
		},
		

		{
			name: "ひゃっきやこう"
			text: "夜に百鬼夜行を行う。特技のふしぎが半分になる"
			cost: 30
		}
	],
	mitinoke : #KihonTokugis & [
		{
			name : "うおことば",
			text : "魚と交流できる。"
			cost : 0
		},
		{
			name: "およぎ"
			text: "泳げる。自分の二倍の大きさのものまで運べ、水中で逃げたり探したりする判定に+2"
			cost : 2
		},
		
		{
			name: "つかまえる"
			text: "手の二倍の距離までのものを捕まえる。相手はびっくりするかもしれな。"
			cost: 4
		},
		{
			name: "いきつぎ"
			text: "場面が終わるまで、つながりのあるキャラクターはおよぎを想いかふしぎを2点消費すれば使うことができる。"
			cost : 8
		},
		{
			name: "かくれざと"
			text: "隠れ里に入る、つながりがあれば一緒に入れる。人間はもののけと一緒でないと入れない。"
			cost : 12
		},

		{
			name: "みずのみち"
			text: "水から水へ移動する。つながりがあれば、何人でも一緒につれていける"
			cost: 16
		}
		
	],
	mitinoke : #KihonTokugis & [
		{
			name : "うおことば",
			text : "魚と交流できる。"
			cost : 0
		},
		{
			name: "およぎ"
			text: "泳げる。自分の二倍の大きさのものまで運べ、水中で逃げたり探したりする判定に+2"
			cost : 2
		},
		
		{
			name: "つかまえる"
			text: "手の二倍の距離までのものを捕まえる。相手はびっくりするかもしれな。"
			cost: 4
		},
		{
			name: "いきつぎ"
			text: "場面が終わるまで、つながりのあるキャラクターはおよぎを想いかふしぎを2点消費すれば使うことができる。"
			cost : 8
		},
		{
			name: "かくれざと"
			text: "隠れ里に入る、つながりがあれば一緒に入れる。人間はもののけと一緒でないと入れない。"
			cost : 12
		},

		{
			name: "みずのみち"
			text: "水から水へ移動する。つながりがあれば、何人でも一緒につれていける"
			cost: 16
		}
		
	],
}

Races : {
	kitsune : "狐"
	tanuki : "狸"
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
	kumo : "蜘蛛"
	hebi: "蛇"
	mukade: "百足"
	kodama : "木霊"
	ookami: "狼"
	kame : "亀"
	tsuru : "鶴"
}

pages : {
	kitsune : "ゆうやけこやけ p.54"
	tanuki : "ゆうやけこやけ p.56"
	neko : "ゆうやけこやけ p.58"
	inu : "ゆうやけこやけ p.60"
	usagi : "ゆうやけこやけ p.62"
	tori : "ゆうやけこやけ p.64"
	nezumi : "ゆうやけこやけ p.66"
	
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
    },
    kihonTokugis : KihonTokugiSet.kitsune
}
