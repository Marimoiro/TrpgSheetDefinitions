
export interface Tokugi {
  jakuten: string;
  name: string;
  text: string;
}

export interface KihonTokugis extends Tokugi {
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

export interface Data {
  kihonTokugis: Array<KihonTokugis>;
  record: Memory;
  stats: {
    henge: number;
    kemono: number;
    kodomo: number;
    otona: number;
  };
  tsuikaTokugis: Array<Tokugi>;
  yume: number;
}

export const defaultData: Partial<Data> = {
  kihonTokugis: [],
  tsuikaTokugis: [],
};


export interface Profile {
  age: string;
  humanStyle: string;
  name: string;
  player: string;
  sexsuality: string;
  syotai: string;
}

