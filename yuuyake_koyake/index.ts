
export interface Tokugi {
  cost: number;
  jakuten: string;
  name: string;
  text: string;
}

export interface KihonTokugi extends Tokugi {
  jakuten: '';
}

export interface Tsunagari {
  companionName: string;
  companionValue: string;
  companions: string;
  yourValue: number;
  /**
   * 髢｢菫ゅ・蜀・ｮｹ
   */
  yours: string;
}

export interface Ito {
  companion: string;
  relation: string;
}

export interface Memory {
  fushigi: number;
  omoi: number;
  omoide: string;
  tsunagaris: Array<Tsunagari>;
}

export const defaultMemory: Partial<Memory> = {
  tsunagaris: [],
};

export interface Profile {
  age: string;
  humanStyle: string;
  name: string;
  player: string;
  sexsuality: string;
  syotai: string;
  syotaiEx: boolean; // true縺ｪ繧画園菴薙ｒ閾ｪ逕ｱ驕ｸ謚槭↓縺ｪ縺｣縺ｦ縺・ｋ
}

export interface Data {
  exStats: {
    henge: number;
    kemono: number;
    kodomo: number;
    otona: number;
  };
  kihonTokugis: Array<KihonTokugi>;
  memo: string;
  profile: Profile;
  stats: {
    henge: number;
    kemono: number;
    kodomo: number;
    otona: number;
  };
  tsuikaTokugis: Array<Tokugi>;
}

export const defaultData: Partial<Data> = {
  kihonTokugis: [],
  tsuikaTokugis: [],
};

