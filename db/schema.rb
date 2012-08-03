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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 8) do

  create_table "addps", :force => true do |t|
    t.string   "addcode",    :limit => 50
    t.string   "cptcode",    :limit => 50
    t.string   "Desc",       :limit => 50
    t.string   "units",      :limit => 10
    t.string   "fee",        :limit => 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cases", :force => true do |t|
    t.string   "caseid",             :limit => 50
    t.string   "patid1",             :limit => 50
    t.string   "plname",             :limit => 50
    t.string   "pfname",             :limit => 50
    t.string   "pmname",             :limit => 50
    t.string   "psortname",          :limit => 100
    t.date     "pdob"
    t.string   "psex",               :limit => 10
    t.string   "patid3",             :limit => 50
    t.string   "procedure"
    t.string   "diagnosis"
    t.string   "position",           :limit => 50
    t.string   "physical_state",     :limit => 50
    t.string   "cpt_surg",           :limit => 50
    t.string   "cpt_anes",           :limit => 50
    t.string   "diag1",              :limit => 50
    t.string   "diag2",              :limit => 50
    t.string   "diag3",              :limit => 50
    t.string   "diag4",              :limit => 50
    t.string   "ins_cat",            :limit => 50
    t.string   "start_time",         :limit => 50
    t.string   "end_time",           :limit => 50
    t.string   "postop_block",       :limit => 10
    t.string   "postop_block_req",   :limit => 50
    t.string   "interscalene",       :limit => 10
    t.string   "interscalene_cat",   :limit => 10
    t.string   "interscalene_sense", :limit => 10
    t.string   "supraclav",          :limit => 10
    t.string   "supraclav_cat",      :limit => 10
    t.string   "supraclav_sense",    :limit => 10
    t.string   "infraclav",          :limit => 10
    t.string   "infraclav_cat",      :limit => 10
    t.string   "infraclav_sense",    :limit => 10
    t.string   "femoral",            :limit => 10
    t.string   "femoral_cat",        :limit => 10
    t.string   "femoral_sense",      :limit => 10
    t.string   "sciatic",            :limit => 10
    t.string   "sciatic_cat",        :limit => 10
    t.string   "sciatic_sense",      :limit => 10
    t.string   "axillary",           :limit => 10
    t.string   "axillary_sense",     :limit => 10
    t.string   "block_res1",         :limit => 10
    t.string   "block_res1_cat",     :limit => 10
    t.string   "block_res1_sense",   :limit => 10
    t.string   "block_res2",         :limit => 10
    t.string   "block_res2_cat",     :limit => 10
    t.string   "block_res2_sense",   :limit => 10
    t.string   "block_res3",         :limit => 10
    t.string   "block_res3_cat",     :limit => 10
    t.string   "block_res3_sense",   :limit => 10
    t.string   "addproc1",           :limit => 50
    t.string   "addproc2",           :limit => 50
    t.string   "addproc3",           :limit => 50
    t.string   "addproc4",           :limit => 50
    t.string   "addproc5",           :limit => 50
    t.string   "addproc6",           :limit => 50
    t.string   "addproc7",           :limit => 50
    t.string   "addproc8",           :limit => 50
    t.string   "addproc9",           :limit => 50
    t.string   "addproc10",          :limit => 50
    t.string   "addproc11",          :limit => 50
    t.string   "addproc12",          :limit => 50
    t.string   "addproc13",          :limit => 50
    t.string   "addproc14",          :limit => 50
    t.string   "addproc15",          :limit => 50
    t.string   "addproc16",          :limit => 50
    t.string   "addproc17",          :limit => 50
    t.string   "addproc18",          :limit => 50
    t.string   "addproc19",          :limit => 50
    t.string   "addproc20",          :limit => 50
    t.string   "surg_anes_mode",     :limit => 50
    t.string   "baseic_units",       :limit => 50
    t.string   "time_units",         :limit => 50
    t.string   "mod_units",          :limit => 50
    t.string   "line_units",         :limit => 50
    t.string   "total_units",        :limit => 50
    t.string   "surgical_amount",    :limit => 50
    t.string   "addproc14_days",     :limit => 50
    t.string   "otherproc",          :limit => 50
    t.string   "otherproc_desc",     :limit => 50
    t.string   "otherproc_cpt",      :limit => 50
    t.string   "otherproc_amount",   :limit => 50
    t.string   "otherproc2",         :limit => 50
    t.string   "otherproc2_desc",    :limit => 50
    t.string   "otherproc2_cpt",     :limit => 50
    t.string   "otherproc2_amount",  :limit => 50
    t.string   "total_amount",       :limit => 50
    t.string   "loc",                :limit => 50
    t.date     "servdt"
    t.string   "status",             :limit => 50
    t.string   "exported",           :limit => 50
    t.string   "status2",            :limit => 50
    t.string   "status3",            :limit => 50
    t.string   "patid2",             :limit => 50
    t.integer  "total_minutes"
    t.string   "total_time",         :limit => 50
    t.string   "surg_provider",      :limit => 50
    t.string   "anes_provider",      :limit => 50
    t.string   "crna_provider",      :limit => 50
    t.string   "surg_sid",           :limit => 50
    t.string   "anes_sid",           :limit => 50
    t.string   "crna_sid",           :limit => 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "crnas", :force => true do |t|
    t.string   "code",       :limit => 50
    t.string   "lname",      :limit => 50
    t.string   "fname",      :limit => 50
    t.string   "mname",      :limit => 10
    t.string   "cat1",       :limit => 50
    t.string   "cat2",       :limit => 50
    t.string   "cat3",       :limit => 50
    t.string   "cat4",       :limit => 50
    t.string   "cat5",       :limit => 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locs", :force => true do |t|
    t.string   "code",       :limit => 10
    t.string   "name",       :limit => 50
    t.string   "cat1",       :limit => 50
    t.string   "cat2",       :limit => 50
    t.string   "cat3",       :limit => 50
    t.string   "cat4",       :limit => 50
    t.string   "cat5",       :limit => 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "provs", :force => true do |t|
    t.string   "code",       :limit => 50
    t.string   "lname",      :limit => 50
    t.string   "fname",      :limit => 50
    t.string   "mname",      :limit => 10
    t.string   "cat1",       :limit => 50
    t.string   "cat2",       :limit => 50
    t.string   "cat3",       :limit => 50
    t.string   "cat4",       :limit => 50
    t.string   "cat5",       :limit => 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scans", :force => true do |t|
    t.string   "caseid",         :limit => 50
    t.string   "time_sqequence", :limit => 50
    t.string   "orig_filename",  :limit => 100
    t.string   "final_filename", :limit => 100
    t.string   "patid",          :limit => 50
    t.string   "plname",         :limit => 50
    t.string   "pfname",         :limit => 50
    t.string   "avitar",         :limit => 100
    t.string   "res1",           :limit => 50
    t.string   "res2",           :limit => 50
    t.string   "res3",           :limit => 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "surgs", :force => true do |t|
    t.string   "code",       :limit => 50
    t.string   "lname",      :limit => 50
    t.string   "fname",      :limit => 50
    t.string   "mname",      :limit => 10
    t.string   "cat1",       :limit => 50
    t.string   "cat2",       :limit => 50
    t.string   "cat3",       :limit => 50
    t.string   "cat4",       :limit => 50
    t.string   "cat5",       :limit => 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "userid",          :limit => 50
    t.string   "password",        :limit => 50
    t.string   "name",            :limit => 50
    t.string   "customer_code",   :limit => 50
    t.string   "prac_access",     :limit => 50
    t.string   "allow_all_pracs", :limit => 10
    t.string   "revoked",         :limit => 10
    t.string   "email",           :limit => 50
    t.string   "res3",            :limit => 50
    t.string   "res4",            :limit => 50
    t.string   "res5",            :limit => 50
    t.string   "res6",            :limit => 50
    t.string   "res7",            :limit => 50
    t.string   "res8",            :limit => 50
    t.string   "res9",            :limit => 10
    t.string   "res10",           :limit => 10
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
