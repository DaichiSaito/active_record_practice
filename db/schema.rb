# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  create_table "departments", primary_key: "dept_no", id: :string, limit: 4, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "dept_name", limit: 40, null: false
    t.index ["dept_name"], name: "dept_name", unique: true
  end

  create_table "dept_emp", primary_key: ["emp_no", "dept_no"], options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "emp_no", null: false
    t.string "dept_no", limit: 4, null: false
    t.date "from_date", null: false
    t.date "to_date", null: false
    t.index ["dept_no"], name: "dept_no"
  end

  create_table "dept_manager", primary_key: ["emp_no", "dept_no"], options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "emp_no", null: false
    t.string "dept_no", limit: 4, null: false
    t.date "from_date", null: false
    t.date "to_date", null: false
    t.index ["dept_no"], name: "dept_no"
  end

  create_table "employees", primary_key: "emp_no", id: :integer, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "birth_date", null: false
    t.string "first_name", limit: 14, null: false
    t.string "last_name", limit: 16, null: false
    t.column "gender", "enum('M','F')", null: false
    t.date "hire_date", null: false
  end

  create_table "salaries", primary_key: ["emp_no", "from_date"], options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "emp_no", null: false
    t.integer "salary", null: false
    t.date "from_date", null: false
    t.date "to_date", null: false
  end

  create_table "titles", primary_key: ["emp_no", "title", "from_date"], options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "emp_no", null: false
    t.string "title", limit: 50, null: false
    t.date "from_date", null: false
    t.date "to_date"
  end

  add_foreign_key "dept_emp", "departments", column: "dept_no", primary_key: "dept_no", name: "dept_emp_ibfk_2", on_delete: :cascade
  add_foreign_key "dept_emp", "employees", column: "emp_no", primary_key: "emp_no", name: "dept_emp_ibfk_1", on_delete: :cascade
  add_foreign_key "dept_manager", "departments", column: "dept_no", primary_key: "dept_no", name: "dept_manager_ibfk_2", on_delete: :cascade
  add_foreign_key "dept_manager", "employees", column: "emp_no", primary_key: "emp_no", name: "dept_manager_ibfk_1", on_delete: :cascade
  add_foreign_key "salaries", "employees", column: "emp_no", primary_key: "emp_no", name: "salaries_ibfk_1", on_delete: :cascade
  add_foreign_key "titles", "employees", column: "emp_no", primary_key: "emp_no", name: "titles_ibfk_1", on_delete: :cascade
end
