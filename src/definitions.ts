export interface TestCapPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
