
export interface Profile {
  age: string;
  bloodType: string;
  codeName: string;
  height: string;
  name: string;
  player: string;
  sexuality: string;
  weight: string;
  zodiac: string;
}

export interface MainStatus {
  kankaku: number;
  nikutai: number;
  seishin: number;
  syakai: number;
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
  shinsyoku: number;
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
  dice: number;
  exp: number;
  memo: string;
  other: number;
  status: ('nikutai' | 'kankaku' | 'seishin' | 'syakai');
}

export const defaultSkill: Partial<Skill> = {
  dice: 0,
  exp: 0,
  memo: '',
  other: 0,
};

export interface SmallSkill {
  dice: number;
  exp: number;
  memo: string;
  name: string;
  other: number;
  status: ('nikutai' | 'kankaku' | 'seishin' | 'syakai');
}

export const defaultSmallSkill: Partial<SmallSkill> = {
  dice: 0,
  exp: 0,
  memo: '',
  other: 0,
};

export interface Skills {
  chotatsu: {
    status: 'syakai';
    exp: number;
    dice: number;
    other: number;
    memo: string;
  };
  hakuhei: {
    status: 'nikutai';
    exp: number;
    dice: number;
    other: number;
    memo: string;
  };
  ishi: {
    status: 'seishin';
    exp: number;
    dice: number;
    other: number;
    memo: string;
  };
  kaihi: {
    status: 'nikutai';
    exp: number;
    dice: number;
    other: number;
    memo: string;
  };
  kousyou: {
    status: 'syakai';
    exp: number;
    dice: number;
    other: number;
    memo: string;
  };
  rc: {
    status: 'seishin';
    exp: number;
    dice: number;
    other: number;
    memo: string;
  };
  smallSkills: Array<SmallSkill>;
  syageki: {
    status: 'kankaku';
    exp: number;
    dice: number;
    other: number;
    memo: string;
  };
  tikaku: {
    status: 'kankaku';
    exp: number;
    dice: number;
    other: number;
    memo: string;
  };
}

export const defaultSkills: Partial<Skills> = {
  smallSkills: [],
};

export interface Target {
  type: ('None' | 'Self' | 'One' | 'Many' | 'Count' | 'Scene');
  value: number;
}

export const defaultTarget: Partial<Target> = {
  value: 0,
};

export interface Range {
  type: ('None' | 'Close' | 'Meter' | 'Self' | 'Area');
  value: number;
}

export const defaultRange: Partial<Range> = {
  value: 0,
};

export enum EfficacyType {
  Critical = 'Critical',
  Damage = 'Damage',
  Dice = 'Dice',
  Heal = 'Heal',
  TargetSubject = 'TargetSubject',
}

export interface Efficacy {
  option: string;
  type: EfficacyType;
  value: number;
}

export const defaultEfficacy: Partial<Efficacy> = {
  option: '',
  value: 0,
};

export interface Effect {
  difficult: string;
  efficacy: Array<Efficacy>;
  limitation: string;
  limitationCount: string;
  lv: number;
  memo: string;
  name: string;
  range: Range;
  sinsyoku: string;
  skill: string;
  target: Target;
  timigng: string;
  type: ('Normal' | 'auto' | 'D' | 'easy' | 'various');
}

export const defaultEffect: Partial<Effect> = {
  efficacy: [],
  range: {
    type: 'None',
    value: 0,
  },
  target: {
    type: 'None',
    value: 0,
  },
};

export interface Data {
  combos: Array<{
    effectIndices: Array<number>;
    timigng: string;
    skill: string;
    difficult: string;
    dice: string;
  }>;
  effect: Array<Effect>;
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
    type: ('-' | 'D' | 'S' | 'E');
    subject: string;
    positive: string;
    negative: string;
    memo: string;
    titus: boolean;
  }>;
  skills: Skills;
  subStatuses: Array<SubStatus>;
}

export const defaultData: Partial<Data> = {
  combos: [],
  effect: [],
  items: [],
  royces: [],
  subStatuses: [],
};

