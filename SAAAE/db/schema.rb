# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170706215845) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alunos", force: :cascade do |t|
    t.integer  "aluno_ra"
    t.string   "aluno_curso"
    t.date     "aluno_data_ingresso"
    t.integer  "aluno_periodo"
    t.float    "aluno_frequencia"
    t.float    "aluno_coeficiente"
    t.integer  "pessoa_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["pessoa_id"], name: "index_alunos_on_pessoa_id", using: :btree
  end

  create_table "atendimentos", force: :cascade do |t|
    t.integer  "aluno_id"
    t.string   "area"
    t.integer  "funcionario_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "telefone"
    t.index ["aluno_id"], name: "index_atendimentos_on_aluno_id", using: :btree
    t.index ["funcionario_id"], name: "index_atendimentos_on_funcionario_id", using: :btree
  end

  create_table "documentos", force: :cascade do |t|
    t.string   "doc_rg"
    t.string   "doc_cpf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "funcionarios", force: :cascade do |t|
    t.integer  "funcionario_rf"
    t.string   "funcionario_area"
    t.integer  "pessoa_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["pessoa_id"], name: "index_funcionarios_on_pessoa_id", using: :btree
  end

  create_table "objetivos", force: :cascade do |t|
    t.string   "motivo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pessoas", force: :cascade do |t|
    t.string   "pessoa_nome"
    t.string   "pessoa_sexo"
    t.string   "pessoa_endereco"
    t.string   "pessoa_cidade"
    t.string   "pessoa_estado"
    t.string   "pessoa_cep"
    t.integer  "documento_id"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["documento_id"], name: "index_pessoas_on_documento_id", using: :btree
    t.index ["user_id"], name: "index_pessoas_on_user_id", using: :btree
  end

  create_table "relatorio_assistente_socials", force: :cascade do |t|
    t.text     "ras_motivo"
    t.text     "ras_entrevista"
    t.integer  "relatorio_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["relatorio_id"], name: "index_relatorio_assistente_socials_on_relatorio_id", using: :btree
  end

  create_table "relatorio_gerals", force: :cascade do |t|
    t.text     "rg_objetivo"
    t.text     "rg_atendimento"
    t.integer  "relatorio_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["relatorio_id"], name: "index_relatorio_gerals_on_relatorio_id", using: :btree
  end

  create_table "relatorio_pedagogicos", force: :cascade do |t|
    t.text     "rpe_objetivo"
    t.text     "rpe_atendimento"
    t.integer  "relatorio_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["relatorio_id"], name: "index_relatorio_pedagogicos_on_relatorio_id", using: :btree
  end

  create_table "relatorio_psicologicos", force: :cascade do |t|
    t.text     "rp_objetivo"
    t.text     "rp_atendimento"
    t.integer  "relatorio_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["relatorio_id"], name: "index_relatorio_psicologicos_on_relatorio_id", using: :btree
  end

  create_table "relatorios", force: :cascade do |t|
    t.date     "relatorio_data"
    t.integer  "aluno_id"
    t.integer  "funcionario_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["aluno_id"], name: "index_relatorios_on_aluno_id", using: :btree
    t.index ["funcionario_id"], name: "index_relatorios_on_funcionario_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "role",                   default: 99
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "alunos", "pessoas"
  add_foreign_key "atendimentos", "alunos"
  add_foreign_key "atendimentos", "funcionarios"
  add_foreign_key "funcionarios", "pessoas"
  add_foreign_key "pessoas", "documentos"
  add_foreign_key "pessoas", "users"
  add_foreign_key "relatorio_assistente_socials", "relatorios"
  add_foreign_key "relatorio_gerals", "relatorios"
  add_foreign_key "relatorio_pedagogicos", "relatorios"
  add_foreign_key "relatorio_psicologicos", "relatorios"
  add_foreign_key "relatorios", "alunos"
  add_foreign_key "relatorios", "funcionarios"
end
