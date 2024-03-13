const fs = require('fs');
const path = require('path');
const pg = require('pg');

const pool = new pg.Pool({
  user: 'postgres',
  database: 'dev-cleaning-service',
  host: 'localhost',
  password: 'root',
  port: 5432,
});

try {
  const filePath = path.resolve(__dirname, 'init-database.sql');
  const sql = fs.readFileSync(filePath, 'utf8');
  pool.query(sql);
  console.log('Data seeded successfully.');
} catch (err) {
  console.error('Error seeding data:', err);
} finally {
  pool.end();
}
