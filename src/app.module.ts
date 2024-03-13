import { Module } from '@nestjs/common';
import { AppService } from './app.service';
import { ModuleDatabase } from './database/database.module';
import { AppController } from './app.controller';

@Module({
  imports: [ModuleDatabase],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
