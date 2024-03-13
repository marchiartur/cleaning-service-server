import {
  IsString,
  IsEmail,
  IsPhoneNumber,
  IsNumber,
  Min,
  Max,
  ValidateNested,
  MinLength,
  MaxLength,
} from 'class-validator';
import { Type } from 'class-transformer';

export interface Coordinates {
  x: number;
  y: number;
}

export interface UserSchema {
  id: number;
  name: string;
  email: string;
  phone: string;
  coordinate_x: number;
  coordinate_y: number;
  created_at: Date;
}

export interface DTOUser {
  id?: number | string;
  name: string;
  email: string;
  phone: string;
  coordinates: Coordinates;
}

class DTOCoordinates {
  @IsNumber()
  @Min(0)
  @Max(100) // Assuming x and y are within the range 0 to 100
  x: number;

  @IsNumber()
  @Min(0)
  @Max(100)
  y: number;
}

export class DTOCreateUser {
  @IsString()
  @MinLength(1)
  @MaxLength(255)
  name: string;

  @IsEmail()
  @MaxLength(255)
  email: string;

  @IsPhoneNumber('BR')
  @MaxLength(20)
  phone: string;

  @ValidateNested()
  @Type(() => DTOCoordinates)
  coordinates: DTOCoordinates;
}
