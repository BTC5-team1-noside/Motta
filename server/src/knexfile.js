// Update with your config settings.
require('dotenv').config();
// console.log(process.env);
/**
 * @type { Object.<string, import("knex").Knex.Config> }
 */
module.exports = {
  development: {
    client: 'pg',
    connection: {
      user: process.env.DB_USER || 'user',
      database: process.env.DB_NAME || 'motta',
    },
    migrations: {
      directory: './db/migrations',
    },
    seeds: {
      directory: './db/seeds',
    },
  },

  production: {
    client: 'pg',
    connection: process.env.DATABASE_URL,
    migrations: {
      directory: './db/migrations',
    },

    seeds: { directory: './db/seeds' },
  },
};
