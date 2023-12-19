/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.up = function (knex) {
  return knex.schema.createTable('confirm_history', function (table) {
    table.increments('id').primary();
    table.integer('student_id').unsigned().references('id').inTable('students');
    table.date('date');
  });
};

/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.down = function (knex) {
  return knex.schema.dropTable('confirm_history');
};
