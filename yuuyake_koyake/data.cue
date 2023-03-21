#Tokugi : {
    name:string,
    text:string,
    jakuten:string
} @cuetsy(kind="interface")

#KihonTokugis : #Tokugi &
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
    fushigi : int,
    omoide : string 
} @cuetsy(kind="interface")

Data : {
    stats:{
        henge: int,
        kemono: int,
        kodomo: int,
        otona: int,
    },
    kihonTokugis : [...#KihonTokugis],
    tsuikaTokugis : [...#Tokugi],
    yume: int,
    record : #Memory
    
} @cuetsy(kind="interface")

