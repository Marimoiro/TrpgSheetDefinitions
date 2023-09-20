
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
  initiative: number;
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
  name: string;
  other: number;
  perExp: number;
  status: ('nikutai' | 'kankaku' | 'seishin' | 'syakai');
}

export const defaultSkill: Partial<Skill> = {
  dice: 0,
  exp: 0,
  memo: '',
  other: 0,
  perExp: 1,
};

export interface Skills {
  kankaku: Array<{
    name: string;
    status: 'kankaku';
    exp: number;
    dice: number;
    other: number;
    memo: string;
    perExp: number;
  }>;
  nikutai: Array<{
    name: string;
    status: 'nikutai';
    exp: number;
    dice: number;
    other: number;
    memo: string;
    perExp: number;
  }>;
  seishin: Array<{
    name: string;
    status: 'seishin';
    exp: number;
    dice: number;
    other: number;
    memo: string;
    perExp: number;
  }>;
  syakai: Array<{
    name: string;
    status: 'syakai';
    exp: number;
    dice: number;
    other: number;
    memo: string;
    perExp: number;
  }>;
}

export const defaultSkills: Partial<Skills> = {
  kankaku: [],
  nikutai: [],
  seishin: [],
  syakai: [],
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

export interface DxEffects {
  armor: {
    value: number;
    scale: number;
    lv: number;
    valueDice: number;
    scaleDice: number;
    plus: boolean;
    showValue: boolean;
    enable: boolean;
  };
  attack: {
    value: number;
    scale: number;
    lv: number;
    valueDice: number;
    scaleDice: number;
    plus: boolean;
    showValue: boolean;
    enable: boolean;
  };
  critical: {
    value: number;
    scale: number;
    lv: number;
    valueDice: number;
    scaleDice: number;
    plus: boolean;
    showValue: boolean;
    enable: boolean;
  };
  damageDown: {
    value: number;
    scale: number;
    lv: number;
    valueDice: number;
    scaleDice: number;
    plus: boolean;
    showValue: boolean;
    enable: boolean;
  };
  damageUp: {
    value: number;
    scale: number;
    lv: number;
    valueDice: number;
    scaleDice: number;
    plus: boolean;
    showValue: boolean;
    enable: boolean;
  };
  guard: {
    value: number;
    scale: number;
    lv: number;
    valueDice: number;
    scaleDice: number;
    plus: boolean;
    showValue: boolean;
    enable: boolean;
  };
  heal: {
    value: number;
    scale: number;
    lv: number;
    valueDice: number;
    scaleDice: number;
    plus: boolean;
    showValue: boolean;
    enable: boolean;
  };
  hit: {
    value: number;
    scale: number;
    lv: number;
    valueDice: number;
    scaleDice: number;
    plus: boolean;
    showValue: boolean;
    enable: boolean;
  };
}

export interface Effect {
  difficult: string;
  enable: boolean;
  id: number;
  limitation: string;
  limitationCount: string;
  lv: number;
  memo: string;
  name: string;
  range: string;
  sinsyoku: string;
  skill: string;
  stackable: DxEffects;
  target: string;
  timigng: string;
  type: ('normal' | 'auto' | 'd' | 'easy' | 'various');
}

export const defaultEffect: Partial<Effect> = {
  enable: true,
  id: 0,
  range: '',
  target: '',
};

export interface Combo {
  aggregate: DxEffects;
  difficult: string;
  enable: boolean;
  ids: Array<number>;
  limitation: string;
  limitationCount: string;
  memo: string;
  name: string;
  range: string;
  sinsyoku: string;
  skill: string;
  stackable: DxEffects;
  target: string;
  timigng: string;
}

export const defaultCombo: Partial<Combo> = {
  enable: true,
  ids: [],
  range: '',
  target: '',
};

export interface Item {
  cost: number;
  enable: boolean;
  exp: number;
  id: number;
  memo: string;
  name: string;
  status: ('owned' | 'unowned');
  type: string;
}

export const defaultItem: Partial<Item> = {
  cost: 0,
  enable: true,
  exp: 0,
  id: 0,
  memo: '',
  name: '',
  status: 'owned',
  type: '',
};

export interface Weapon {
  attack: {
    value: number;
    scale: number;
    lv: number;
  };
  cost: number;
  effectLv: number;
  enable: boolean;
  exp: number;
  guard: {
    value: number;
    scale: number;
    lv: number;
  };
  hit: {
    value: number;
    scale: number;
    lv: number;
  };
  id: number;
  memo: string;
  name: string;
  range: string;
  skill: string;
  status: ('equipped' | 'owned' | 'unowned');
  type: string;
}

export const defaultWeapon: Partial<Weapon> = {
  cost: 0,
  effectLv: 0,
  enable: true,
  exp: 0,
  id: 0,
  memo: '',
  name: '',
  range: '',
  skill: '',
  status: 'equipped',
  type: '',
};

export interface Armor {
  armor: {
    value: number;
    scale: number;
    lv: number;
  };
  cost: number;
  dodge: number;
  effectLv: number;
  enable: boolean;
  exp: number;
  id: number;
  initiative: number;
  memo: string;
  name: string;
  status: ('equipped' | 'owned' | 'unowned');
  type: string;
}

export const defaultArmor: Partial<Armor> = {
  cost: 0,
  dodge: 0,
  effectLv: 0,
  enable: true,
  exp: 0,
  id: 0,
  initiative: 0,
  memo: '',
  name: '',
  status: 'equipped',
  type: '',
};

export interface Data {
  armors: Array<Armor>;
  combos: Array<Combo>;
  currentId: number;
  effects: Array<Effect>;
  items: Array<Item>;
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
  weapons: Array<Weapon>;
}

export const defaultData: Partial<Data> = {
  armors: [],
  combos: [],
  currentId: 10,
  effects: [],
  items: [],
  royces: [],
  subStatuses: [],
  weapons: [],
};

