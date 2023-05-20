
export interface Profile {
  age: string;
  codeName: string;
  height: string;
  name: string;
  player: string;
  sexsuality: string;
  weight: string;
  zodiac: string;
}

export interface MainStatus {
  kankaku: number;
  nikutai: number;
  seishin: number;
  tisei: number;
}

export interface Syndrome {
  name: string;
  status: MainStatus;
}

export interface Works {
  name: string;
  status: MainStatus;
}

export interface MainStatuses {
  byExp: MainStatus;
  droyce: MainStatus;
  optionalSyndrome: Syndrome;
  other: MainStatus;
  syndrome1: Syndrome;
  syndrome2: Syndrome;
  works: Works;
}

export interface SubStatus {
  actionPoint: number;
  maxHp: number;
  maxMove: number;
  move: number;
  zaisan: number;
  zyoubi: number;
}

export interface LifePath {
  memo: string;
  name: string;
  subject: string;
}

export interface LifePaths {
  kaikou: LifePath;
  kakusei: LifePath;
  keiken: LifePath;
  syoudou: LifePath;
  syutuji: LifePath;
}

export interface Skill {
  name: string;
  status: ('nikutai' | 'kankaku' | 'seishin' | 'tisei');
  value: number;
}

export interface Skills {
  chotatsu: {
    status: 'tisei';
    name: 'chotatsu';
    value: number;
  };
  hakuhei: {
    status: 'nikutai';
    name: 'hakuhei';
    value: number;
  };
  ishi: {
    status: 'seishin';
    name: 'ishi';
    value: number;
  };
  kaihi: {
    status: 'nikutai';
    name: 'kougeki';
    value: number;
  };
  kankakus: Array<{
    status: 'kankaku';
    name: string;
    value: number;
  }>;
  kousyou: {
    status: 'tisei';
    name: 'kousyou';
    value: number;
  };
  nikutais: Array<{
    status: 'nikutai';
    name: string;
    value: number;
  }>;
  rc: {
    status: 'seishin';
    name: 'rc';
    value: number;
  };
  seishins: Array<{
    status: 'seishin';
    name: string;
    value: number;
  }>;
  syageki: {
    status: 'kankaku';
    name: 'syageki';
    value: number;
  };
  tikaku: {
    status: 'kankaku';
    name: 'tikaku';
    value: number;
  };
  tiseis: Array<{
    status: 'tisei';
    name: string;
    value: number;
  }>;
}

export const defaultSkills: Partial<Skills> = {
  kankakus: [],
  nikutais: [],
  seishins: [],
  tiseis: [],
};

export interface Data {
  combos: Array<{
    effectIndices: Array<number>;
    timigng: string;
    skill: string;
    difiicult: string;
    dice: string;
  }>;
  effect: Array<{
    type: ('Normal' | 'auto' | 'D' | 'easy' | 'various');
    name: string;
    lv: number;
    timigng: string;
    skill: string;
    difiicult: string;
    subject: string;
    range: string;
    sinsyoku: string;
    limitation: string;
    limitationCount: string;
    calc: string;
    memo: string;
  }>;
  items: Array<{
    name: string;
    memo: string;
    value: number;
    exp: number;
  }>;
  lifePaths: LifePaths;
  mainStatuses: MainStatuses;
  memo: string;
  profile: Profile;
  royces: Array<{
    type: ('Normal' | 'D' | 'S' | 'E');
    subject: string;
    positive: string;
    negative: string;
    memo: string;
  }>;
  skills: Skills;
  subStatus: SubStatus;
}

export const defaultData: Partial<Data> = {
  combos: [],
  effect: [],
  items: [],
  royces: [],
};

