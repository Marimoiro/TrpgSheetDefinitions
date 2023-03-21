
export enum E1 {
  E1str1 = 'e1str1',
  E1str2 = 'e1str2',
  E1str3 = 'e1str3',
}

export enum E2 {
  E2str1 = 'e2str1',
  E2str2 = 'e2str2',
  E2str3 = 'e2str3',
  E2str4 = 'e2str4',
}

export interface I1 {
  I1_FloatLiteral: 4.4;
  I1_OptionalDisjunctionLiteral?: ('other' | 'values' | 2);
  I1_Top: unknown;
}

export interface I2 {
  I2_Number: number;
  I2_OptionalBool?: boolean;
  I2_OptionalInterfaceReference?: I1;
  I2_TypedList: Array<number>;
}

export const defaultI2: Partial<I2> = {
  I2_TypedList: [],
};

export interface I3 {
  I3_EnumReference: E1;
  I3_OptionalNumber?: number;
  I3_OptionalString?: string;
}

export interface I4 extends I2, I3 {
  I4_OptionalEnumReference?: E2;
}

export interface I5 extends I2, I3 {
  I5_OptionalEnumReference?: E2;
}

export interface I6 extends I2, I3 {}
