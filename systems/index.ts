
export interface Category {
  name: string;
  systems: Array<System>;
}

export const defaultCategory: Partial<Category> = {
  systems: [],
};

export interface System {
  displayname: string;
  id: string;
}

export interface Systems {
  Categories: Array<Category>;
}

export const defaultSystems: Partial<Systems> = {
  Categories: [],
};

