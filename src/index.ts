import { registerPlugin } from '@capacitor/core';

import type { TestCapPlugin } from './definitions';

const TestCap = registerPlugin<TestCapPlugin>('TestCap', {
  web: () => import('./web').then(m => new m.TestCapWeb()),
});

export * from './definitions';
export { TestCap };
