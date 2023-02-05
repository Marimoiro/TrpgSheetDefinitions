
interface Tokugi {
  jakuten: string;
  name: string;
  text: string;
}

interface KihonTokugis extends Tokugi {
  jakuten: '';
}

interface Tsunagari {
  companionName: string;
  companionValue: string;
  companions: string;
  yourValue: number;
  /**
   * 関係の内容
   */
  yours: string;
}

interface Ito {
  companion: string;
  relation: string;
}

interface Memory {
  fushigi: number;
  omoi: number;
  omoide: string;
  tsunagaris: Array<Tsunagari>;
}

const defaultMemory: Partial<Memory> = {
  tsunagaris: [],
};

interface Data {
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

const defaultData: Partial<Data> = {
  kihonTokugis: [],
  tsuikaTokugis: [],
};
