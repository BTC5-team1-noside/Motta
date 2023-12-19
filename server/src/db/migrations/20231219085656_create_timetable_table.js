/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.up = function (knex) {
  return knex.schema.createTable('timetable', function (table) {
    table.increments('id').primary();
    table.integer('subject_id').unsigned().references('id').inTable('subjects');
    table.string('day');
    table.integer('period');
  });
};

/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.down = function (knex) {
  return knex.schema.dropTable('timetable');
};
