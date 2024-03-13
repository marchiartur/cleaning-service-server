import { Injectable, Inject } from '@nestjs/common';
import { CONSTANTS_DATABASE } from './database/database.constants';
import { DTOUser, UserSchema } from './app.types';
import { Pool } from 'pg';

@Injectable()
export class AppService {
  constructor(@Inject(CONSTANTS_DATABASE.CONNECTION) private conn: Pool) {}

  async createUser(user: DTOUser) {
    const { name, email, phone, coordinates } = user;
    const { x, y } = coordinates;

    const res = await this.conn.query(
      'INSERT INTO users (name, email, phone, coordinate_x, coordinate_y) VALUES ($1, $2, $3, $4, $5) RETURNING *',
      [name, email, phone, x, y],
    );

    return res.rows[0];
  }

  async getUsers(page: number = 1, pageSize: number = 10, filter: string = '') {
    const formattedFilter = filter.toLowerCase();

    let query = {
      name: 'get-users-filtered',
      text: `SELECT * FROM users WHERE (lower(name) like $1) 
      OR (lower(phone) like $1) 
      OR (lower(email) like $1) 
      OR (lower(email) like $1) 
      OR (coordinate_x::text LIKE $1)  
      OR (coordinate_y::text LIKE $1) 
      ORDER BY created_at DESC
      `,
      values: [`%${formattedFilter}%`, pageSize, pageSize * (page - 1)],
    };

    let countQuery = {
      name: 'get-users-count',
      text: `SELECT COUNT(*) FROM users 
      WHERE (lower(name) like $1)  
      OR (lower(phone) like $1) 
      OR (lower(email) like $1) 
      OR (lower(email) like $1) 
      OR (coordinate_x::text LIKE $1)  
      OR (coordinate_y::text LIKE $1)`,
      values: [`%${formattedFilter}%`],
    };

    const countRes = await this.conn.query(countQuery);

    query.text += ` LIMIT $2 OFFSET $3`;

    const res = await this.conn.query(query);

    const totalCount = parseInt(countRes.rows[0].count, 10);
    const totalPages = Math.ceil(totalCount / pageSize);

    return {
      data: res.rows,
      page,
      pageSize,
      totalPages,
      totalCount,
    };
  }

  distance(point1: UserSchema, point2: UserSchema) {
    return Math.sqrt(
      Math.pow(point2.coordinate_x - point1.coordinate_x, 2) +
        Math.pow(point2.coordinate_y - point1.coordinate_y, 2),
    );
  }

  nearestNeighbor(points: UserSchema[]) {
    const visited = new Array(points.length).fill(false);
    const path = [0];
    let current = 0;

    visited[current] = true;

    while (path.length < points.length) {
      let minimumDistance = Infinity;
      let nearestPoint = -1;

      for (let i = 0; i < points.length; i++) {
        if (!visited[i]) {
          const currentDistance = this.distance(points[current], points[i]);

          if (currentDistance < minimumDistance) {
            minimumDistance = currentDistance;
            nearestPoint = i;
          }
        }
      }

      if (nearestPoint !== -1) {
        path.push(nearestPoint);
        visited[nearestPoint] = true;

        current = nearestPoint;
      }
    }

    path.push(0);

    return path.map((index) => points[index]);
  }

  async calculateBestRoute(): Promise<any> {
    let query = {
      name: 'get-users-best-route',
      text: `SELECT * FROM users`,
    };

    const points = await this.conn.query(query);
    const rows: UserSchema[] = points.rows;

    const res = this.nearestNeighbor([
      {
        id: null,
        coordinate_x: 0,
        coordinate_y: 0,
        name: 'Facilita Jurídico',
        email: 'facilita@juridico.com.br',
        phone: '3554-000',
        created_at: null,
      },
      ...rows,
    ]);

    return res;
  }
}
