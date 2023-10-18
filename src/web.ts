import { WebPlugin } from '@capacitor/core';

import type { TestCapPlugin } from './definitions';

export class TestCapWeb extends WebPlugin implements TestCapPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
