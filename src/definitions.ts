export interface TestCapPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
  concatenateDate(options: { value: string }): Promise<{ value: string }>;
}
