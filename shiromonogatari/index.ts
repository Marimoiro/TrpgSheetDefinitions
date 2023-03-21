
export interface Keyword {
  color: string;
  isKeyword: boolean;
  keyword: string;
  override: string;
}

export const defaultKeyword: Partial<Keyword> = {
  color: '#979797',
  isKeyword: false,
  override: '',
};

export interface Story {
  keywords: Array<Keyword>;
  story: string;
}

export const defaultStory: Partial<Story> = {
  keywords: [],
};

