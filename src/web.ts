import { WebPlugin } from '@capacitor/core';

import type { TestCapPlugin } from './definitions';

export class TestCapWeb extends WebPlugin implements TestCapPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
  async concatenateDate(options: { text: string }): Promise<{ text: string , reversedString:string}> {
    console.log('CONCATENATE DATE', options);
    options.text += + new Date().toDateString()
    return {text:options.text, reversedString:options.text.split('').reverse().join('')};
  }
  async reverseString(options: { text: string }): Promise<{ text: string }> {
    console.log('Reverse String', options);
    options.text += options.text.split('').reverse().join('');
    return options;
  }
}