
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
    syotaiEx: bool // trueなら所体を自由選択になっている
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

#KihonTokugis : [...#KihonTokugi]git 

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
			text: "場面が変わるまで雨を降らせる。雨に当たっている間変化は人間に化けるためのふしぎが必要なくなる。そのうえふしぎと想いをどちらの用途でも使えるようになる"
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
			text: "変身できる。ふしぎ16で人がはいれるくらい大きいものにもなれる。液体や機体ほかの変化にはなれない"
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
			text: "場面中、いつでも登場したり退場できる。複数の相手のもふしぎを払えば使える。"
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
			text: "何点でもふしぎを使う。使ったふしぎと同じだけ想いを手に入れる。ふしぎはいくつでも府やsる。"
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
	kappa : #KihonTokugis & [
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
	yuurei : #KihonTokugis & [
		{
			name : "ふわふわ",
			text : "ゆっくりとベる。何かを探す時の判定+2"
			cost : 4
		},
		{
			name: "かべぬけ"
			text: "場面から退場する"
			cost : 4
		},
		{
			name: "ことことかたかた"
			text: "人間が作った動かせるものを動かしたり浮かしたりする。個数は【けもの】まで、強度4で見た人はびっくりする。"
			cost : 4
		},
		{
			name: "すがたうつし"
			text: "テレビや映像に映れる、ふしぎ16で電話を掛けられる"
			cost : 6
		},

		{
			name: "おもいのいと"
			text: "つながりのある相手がいる場所に搭乗できる"
			cost: 6
		},
		{
			name: "とりつき"
			text: "きまった相手以外に見えなくなる。自分より【へんげ】が高い相手には気づかれる。"
			cost: 6
		},
	],
	marebito : #KihonTokugis & [
		{
			name : "であい",
			text : "出会った相手とのつながりが2になる"
			cost : 0
		},
		{
			name: "ただいま"
			text: "過去に初対面の相手とあっていたことにする。出会いでのつながり+1"
			cost : 6
		},
		{
			name: "そらのみち"
			text: "最大2人まで一緒に空を歩ける。逃げる判定+3"
			cost : 8
		},
		{
			name: "どこかとおく"
			text: "街の中から外へ移動する。帰るときにはもう一度使えば帰れる。つながりがある相手と一緒に移動できる。"
			cost : 8
		},

		{
			name: "ごめんなさい"
			text: "あやまれば大体許してもらえる"
			cost: 8
		},
		{
			name: "さようなら"
			text: "セッションの最後に使用。【こども】+【つながり】が自分の【へんげ】より低い街の全員が自分のことを忘れる。街の全員と自分が夢を10点うけとる。"
			cost: 24
		},
	],
	tsukumogami : #KihonTokugis & [
		{
			name : "がらくた",
			text : "正体のままでも気にされない。場面中不自然に動いたりしたら無効。"
			cost : 0
		},
		{
			name: "つかわれるもの"
			text: "正体に関する判定をほかのキャラクターが行うときに自分の【おとな】を加算。相手と自分の想いを使える。"
			cost : 6
		},
		{
			name: "どうぐがたり"
			text: "どうぐのことがわかる"
			cost : 6
		},
		{
			name: "うせものさがし"
			text: "ある程度の情報を知っていればそのものを探せる。状況によって語り手はふしぎを多くしてもいい。"
			cost : 8
		},

		{
			name: "きざし"
			text: "未来のことを語り手に聞ける"
			cost: 16
		},
		{
			name: "ふしぎのしな"
			text: "すごいふしぎのふしぎ/想いのいづれかを2倍にする。"
			cost: 0
		},
	],
	kumo : #KihonTokugis & [
		{
			name : "くものこ",
			text : "小さな蜘蛛になるびっくりされない。隠れるとき+2"
			cost : 0
		},
		{
			name: "たどりいと"
			text: "セッション終了まで使った相手と違う場面にいても、何をしたかわかる。"
			cost : 4
		},
		{
			name: "うけあみ"
			text: "人二人支えられる網をはる。"
			cost : 6
		},
		{
			name: "さだめ"
			text: "1セッション1回、判定を自動成功にする。"
			cost : 10
		},

		{
			name: "がんじがらめ"
			text: "自分の【へんげ】＞相手の【けもの】であればあいては【けもの】を使う行動はできない。特技は退場系以外可能。"
			cost: 8
		},
		{
			name: "くものす"
			text: "蜘蛛の巣に入ったり、蜘蛛の巣を作る。つながりがある相手は一緒に入れる。"
			cost: 20
		},
	],
	hebi : #KihonTokugis & [
		{
			name : "こあくま",
			text : "異性キャラクターとの出会いのつながり+1"
			cost : 0
		},
		{
			name: "うつろい"
			text: "外見年齢を自由に変える。再使用すると再度変えられる。"
			cost : 4
		},
		{
			name: "まきつき"
			text: "自分の【へんげ】＞相手の【けもの】なら拘束する。。"
			cost : 6
		},
		{
			name: "へびあな"
			text: "場面中、いつでも登場したり退場できる。複数の相手にもふしぎを払えば使える。"
			cost : 10
		},
		{
			name: "ときのらせん"
			text: "自分の【へんげ】＞相手の【へんげ】で相手の過去を読み取れる。ほかの人に伝えようとすれば忘れる。"
			cost: 20
		},
		{
			name: "すなどけい"
			text: "場面中かもう一度使用するまで、同意した相手の外見年齢を変化させる。"
			cost: 20
		},
	],
	mukade : #KihonTokugis & [
		{
			name : "はいのぼり",
			text : "壁や天井を自由に移動できる"
			cost : 0
		},
		{
			name: "げじげじ"
			text: "小さなムカデになるびっくりされない。隠れるとき+2"
			cost : 4
		},
		{
			name: "すきまぬけ"
			text: "好きな隙間に入り込んだり退場できたりする"
			cost : 4
		},
		{
			name: "からみつき"
			text: "自分の【けもの】＜相手の【おとな】でないと話す以外できなくなる"
			cost : 8
		},

		{
			name: "わきわき"
			text: "自分の【へんげ】＞相手の【おとな】なら笑わせることができる"
			cost: 8
		},
		{
			name: "わけみ"
			text: "二つの場所に同時に登場できる。お互いの起こったことを知っている"
			cost: 10
		},
	],
	ookami : #KihonTokugis & [
		{
			name : "なわばり",
			text : "街に一か所のなわばりでは、ふしぎが半分で特技を使える。"
			cost : 0
		},
		{
			name: "まもりがみ"
			text: "場面1回、場面中特技を使用した相手を隠れてのぞいたり特技を使ったりした相手を見破る。使われた特技もわかる。"
			cost : 6
		},
		{
			name: "のがくれ"
			text: "自分の【へんげ】+3より高い【へんげ】を持つキャラクター以外に見破られないように隠れる。"
			cost : 6
		},
		{
			name: "みがわり"
			text: "登場していなくても、誰かの身代わりになれる。語り手は傷や感謝を与えられる。"
			cost : 10
		},
		{
			name: "とおぼえ"
			text: "1セッション1回、【けもの】+(朝昼:0,夕方:1,夜:2)でびっくりさせる。気絶はしない。語り手は街とのつながりを減らしてもよい。"
			cost: 20
		},
		{
			name: "けものよび"
			text: "街中の動物たちを呼び寄せる。"
			cost: 30
		},
	],
	kame : #KihonTokugis & [
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
			name: "ときのらせん"
			text: "自分の【へんげ】＞相手の【へんげ】で相手の過去を読み取れる。ほかの人に伝えようとすれば忘れる。"
			cost: 20
		},
		{
			name: "すなどけい"
			text: "場面中かもう一度使用するまで、同意した相手の外見年齢を変化させる。"
			cost: 20
		},
	],
	tsuru : #KihonTokugis & [
		{
			name: "つばさ"
			text: "人間時以外、飛べる。逃げたり探したりするときの能力+2"
			cost : 2
		},
		{
			name: "つばさをあげる"
			text: "場面が終わるまで、つながりのあるキャラクターはつばさを想いかふしぎを2点消費すれば使うことができる。"
			cost: 8
		},
		{
			name: "はねまくら"
			text: "1セッション中1回翼があるときに、相手の自分へのつながりを1強くする"
			cost: 12
		},
		{
			name: "しらせばね"
			text: "セッション終了まで使った相手と違う場面にいても、何をしたかわかる。"
			cost : 4
		},
		{
			name: "おおきなつばさ"
			text: "人二人支えられる網をはる。"
			cost : 6
		},
		{
			name: "さだめ"
			text: "1セッション1回、判定を自動成功にする。"
			cost : 10
		},
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
	mitinoke : "よいやみこみち p.38"
	oni : "よいやみこみち p.44"
	kappa : "よいやみこみち p.50"
	yuurei : "よいやみこみち p.56"
	marebito : "よいやみこみち p.62"
	tsukumogami : "よいやみこみち p.68"
	kumo : "よいやみこみち p80"
	hebi: "よいやみこみち p.84"
	mukade: "よいやみこみち p.88"
	kodama : "よいやみこみち p.90"
	ookami: "よいやみこみち p.94"
	kame : "よいやみこみち p.98"
	
	
	
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
		syotaiEx: false
		syotai: "狐",
		age: "10",
		sexsuality:"♀",
		player: "gm",
		humanStyle: "着物のおんなのこ"
    },
    kihonTokugis : KihonTokugiSet.kitsune
}
