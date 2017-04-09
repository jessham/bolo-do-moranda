# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160630023506) do

  create_table "bolos", force: true do |t|
    t.string  "nome"
    t.string  "sabor"
    t.string  "mensagem"
    t.string  "descricao"
    t.string  "ingredientes"
    t.decimal "preco"
  end

  create_table "carrinhoitems", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "carrinhos_id"
    t.integer  "bolos_id"
  end

  add_index "carrinhoitems", ["bolos_id"], name: "index_carrinhoitems_on_bolos_id", using: :btree
  add_index "carrinhoitems", ["carrinhos_id"], name: "index_carrinhoitems_on_carrinhos_id", using: :btree

  create_table "carrinhos", force: true do |t|
    t.integer  "porcao"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "bolos_id"
    t.integer  "clientes_id"
  end

  add_index "carrinhos", ["bolos_id"], name: "index_carrinhos_on_bolos_id", using: :btree
  add_index "carrinhos", ["clientes_id"], name: "index_carrinhos_on_clientes_id", using: :btree

  create_table "clientes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nome",            limit: 100, null: false
    t.integer  "telefone",        limit: 8,   null: false
    t.string   "email",           limit: 100, null: false
    t.integer  "id_end"
    t.string   "password_digest"
    t.string   "logradouro",                  null: false
    t.integer  "numero",                      null: false
    t.string   "complemento"
    t.string   "bairro",                      null: false
    t.string   "cidade",                      null: false
    t.string   "estado",                      null: false
    t.integer  "cep",                         null: false
  end

  create_table "enderecos", force: true do |t|
    t.string  "logradouro",  null: false
    t.integer "numero",      null: false
    t.string  "complemento"
    t.string  "bairro",      null: false
    t.string  "cidade",      null: false
    t.string  "estado",      null: false
    t.integer "cep",         null: false
    t.integer "clientes_id"
  end

  add_index "enderecos", ["clientes_id"], name: "index_enderecos_on_clientes_id", using: :btree

  create_table "entrega", force: true do |t|
    t.date    "data_agendada"
    t.integer "periodo_agendado"
    t.integer "vendas_id"
    t.integer "enderecos_id"
  end

  add_index "entrega", ["enderecos_id"], name: "index_entrega_on_enderecos_id", using: :btree
  add_index "entrega", ["vendas_id"], name: "index_entrega_on_vendas_id", using: :btree

  create_table "info_nutricionais", force: true do |t|
    t.integer "valor_energetico"
    t.integer "carboidratos"
    t.integer "proteinas"
    t.integer "gorduras_totais"
    t.integer "gorduras_saturadas"
    t.integer "gorduras_trans"
    t.integer "fibra_alimentar"
    t.integer "sodio"
  end

  create_table "pgto_boleto", force: true do |t|
    t.date    "data_vencimento", null: false
    t.integer "numero_boleto",   null: false
    t.integer "vendas_id"
  end

  add_index "pgto_boleto", ["vendas_id"], name: "index_pgto_boleto_on_vendas_id", using: :btree

  create_table "pgto_cartao", force: true do |t|
    t.integer "numero_cartao",     null: false
    t.string  "nome_titular",      null: false
    t.integer "cod_seguranca",     null: false
    t.integer "val_mes_validade",  null: false
    t.integer "val_ano_validade",  null: false
    t.integer "par_qtd_parcela",   null: false
    t.integer "par_valor_parcela", null: false
    t.integer "vendas_id"
  end

  add_index "pgto_cartao", ["vendas_id"], name: "index_pgto_cartao_on_vendas_id", using: :btree

  create_table "vendabolos", force: true do |t|
    t.integer "porcao"
    t.integer "bolos_id"
    t.integer "vendas_id"
    t.integer "clientes_id"
  end

  add_index "vendabolos", ["bolos_id"], name: "index_vendabolos_on_bolos_id", using: :btree
  add_index "vendabolos", ["clientes_id"], name: "index_vendabolos_on_clientes_id", using: :btree
  add_index "vendabolos", ["vendas_id"], name: "index_vendabolos_on_vendas_id", using: :btree

  create_table "vendas", force: true do |t|
    t.date    "data_confirmacao"
    t.decimal "valor_total",              null: false
    t.boolean "pgto_confirmado",          null: false
    t.boolean "empacotamento_confirmado", null: false
    t.boolean "despache_confirmado",      null: false
    t.boolean "entrega_confirmada",       null: false
    t.integer "clientes_id"
  end

  add_index "vendas", ["clientes_id"], name: "index_vendas_on_clientes_id", using: :btree

end
