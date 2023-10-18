import { WebPlugin } from '@capacitor/core';

import type { TestCapPlugin } from './definitions';

export class TestCapWeb extends WebPlugin implements TestCapPlugin {
  // async echo(options: { value: string }): Promise<{ value: string }> {
  //   console.log('ECHO', options);
  //   return options;
  // }
  async showAlert(options: { message: string }): Promise<void> {
    // Implement web-specific code here (if needed)
    // For example, show a browser alert
    alert(options.message);
  }
}
