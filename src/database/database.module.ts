import { Pool } from 'pg';
import { Module } from '@nestjs/common';
import { CONSTANTS_DATABASE } from './database.constants';

const PROVIDER_DATABASE = {
  provide: CONSTANTS_DATABASE.CONNECTION,
  useValue: new Pool({
    user: 'postgres',
    password: 'root',
    host: 'localhost',
    database: 'dev-cleaning-service',
    port: 5432,
  }),
};

@Module({
  providers: [PROVIDER_DATABASE],
  exports: [PROVIDER_DATABASE],
})
export class ModuleDatabase {}
