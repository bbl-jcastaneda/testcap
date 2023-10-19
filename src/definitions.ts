export interface TestCapPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
  concatenateDate(options: { text: string }): Promise<{ text: string }>;
}
