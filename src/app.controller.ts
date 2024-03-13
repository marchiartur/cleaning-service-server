import { Controller, Post, Get, Query, Body } from '@nestjs/common';
import { AppService } from './app.service';
import { DTOCreateUser } from './app.types';

@Controller('users')
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Post()
  async createUser(@Body() user: DTOCreateUser) {
    return await this.appService.createUser(user);
  }

  @Get()
  async getUsers(
    @Query('page') page: number,
    @Query('pageSize') pageSize: number,
    @Query('filter') filter: string,
  ) {
    return await this.appService.getUsers(page, pageSize, filter);
  }

  @Get('/best-route')
  async calculateBestRoute() {
    return await this.appService.calculateBestRoute();
  }
}
