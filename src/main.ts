import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);

  // configure http port 8080 in your DO config.
  // also bind to http, not https - digital ocean
  // handles all HTTPs and passes traffic to your app via HTTP,
  // so binding to HTTPs will not work
  await app.listen(8080);
}
bootstrap();
