export interface TestCapPlugin {
  // echo(options: { value: string }): Promise<{ value: string }>;
  showAlert(options: { message: string }): Promise<void>;
}
