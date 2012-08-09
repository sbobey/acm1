                  surgs GET    /surgs(.:format)                   {:action=>"index", :controller=>"surgs"}
                        POST   /surgs(.:format)                   {:action=>"create", :controller=>"surgs"}
               new_surg GET    /surgs/new(.:format)               {:action=>"new", :controller=>"surgs"}
              edit_surg GET    /surgs/:id/edit(.:format)          {:action=>"edit", :controller=>"surgs"}
                   surg GET    /surgs/:id(.:format)               {:action=>"show", :controller=>"surgs"}
                        PUT    /surgs/:id(.:format)               {:action=>"update", :controller=>"surgs"}
                        DELETE /surgs/:id(.:format)               {:action=>"destroy", :controller=>"surgs"}
                   locs GET    /locs(.:format)                    {:action=>"index", :controller=>"locs"}
                        POST   /locs(.:format)                    {:action=>"create", :controller=>"locs"}
                new_loc GET    /locs/new(.:format)                {:action=>"new", :controller=>"locs"}
               edit_loc GET    /locs/:id/edit(.:format)           {:action=>"edit", :controller=>"locs"}
                    loc GET    /locs/:id(.:format)                {:action=>"show", :controller=>"locs"}
                        PUT    /locs/:id(.:format)                {:action=>"update", :controller=>"locs"}
                        DELETE /locs/:id(.:format)                {:action=>"destroy", :controller=>"locs"}
                  addps GET    /addps(.:format)                   {:action=>"index", :controller=>"addps"}
                        POST   /addps(.:format)                   {:action=>"create", :controller=>"addps"}
               new_addp GET    /addps/new(.:format)               {:action=>"new", :controller=>"addps"}
              edit_addp GET    /addps/:id/edit(.:format)          {:action=>"edit", :controller=>"addps"}
                   addp GET    /addps/:id(.:format)               {:action=>"show", :controller=>"addps"}
                        PUT    /addps/:id(.:format)               {:action=>"update", :controller=>"addps"}
                        DELETE /addps/:id(.:format)               {:action=>"destroy", :controller=>"addps"}
                  provs GET    /provs(.:format)                   {:action=>"index", :controller=>"provs"}
                        POST   /provs(.:format)                   {:action=>"create", :controller=>"provs"}
               new_prov GET    /provs/new(.:format)               {:action=>"new", :controller=>"provs"}
              edit_prov GET    /provs/:id/edit(.:format)          {:action=>"edit", :controller=>"provs"}
                   prov GET    /provs/:id(.:format)               {:action=>"show", :controller=>"provs"}
                        PUT    /provs/:id(.:format)               {:action=>"update", :controller=>"provs"}
                        DELETE /provs/:id(.:format)               {:action=>"destroy", :controller=>"provs"}
                  crnas GET    /crnas(.:format)                   {:action=>"index", :controller=>"crnas"}
                        POST   /crnas(.:format)                   {:action=>"create", :controller=>"crnas"}
               new_crna GET    /crnas/new(.:format)               {:action=>"new", :controller=>"crnas"}
              edit_crna GET    /crnas/:id/edit(.:format)          {:action=>"edit", :controller=>"crnas"}
                   crna GET    /crnas/:id(.:format)               {:action=>"show", :controller=>"crnas"}
                        PUT    /crnas/:id(.:format)               {:action=>"update", :controller=>"crnas"}
                        DELETE /crnas/:id(.:format)               {:action=>"destroy", :controller=>"crnas"}
                   axle GET    /axle(.:format)                    {:controller=>"axle", :action=>"grids"}
              axle_text GET    /axle/text(.:format)               {:controller=>"axle", :action=>"text"}
   axle_abstract_colors GET    /axle/abstract_colors(.:format)    {:controller=>"axle", :action=>"abstract_colors"}
   axle_semantic_colors GET    /axle/semantic_colors(.:format)    {:controller=>"axle", :action=>"semantic_colors"}
           axle_widgets GET    /axle/widgets(.:format)            {:controller=>"axle", :action=>"widgets"}
             axle_forms GET    /axle/forms(.:format)              {:controller=>"axle", :action=>"forms"}
           axle_buttons GET    /axle/buttons(.:format)            {:controller=>"axle", :action=>"buttons"}
axle_widgets_srp_header GET    /axle/widgets/srp_header(.:format) {:controller=>"axle", :action=>"widgets_srpheader"}
            users_login        /users/login(.:format)             {:controller=>"users", :action=>"login"}
             users_auth        /users/auth(.:format)              {:controller=>"users", :action=>"auth"}
           users_logout        /users/logout(.:format)            {:controller=>"users", :action=>"logout"}
          users_destroy        /users/destroy(.:format)           {:controller=>"users", :action=>"destroy"}
             cases_menu        /cases/menu(.:format)              {:controller=>"cases", :action=>"menu"}
          cases_addcase        /cases/addcase(.:format)           {:controller=>"cases", :action=>"addcase"}
            cases_admin        /cases/admin(.:format)             {:controller=>"cases", :action=>"admin"}
          cases_setuser        /cases/setuser(.:format)           {:controller=>"cases", :action=>"setuser"}
          cases_setsurg        /cases/setsurg(.:format)           {:controller=>"cases", :action=>"setsurg"}
          cases_setprov        /cases/setprov(.:format)           {:controller=>"cases", :action=>"setprov"}
          cases_setcrna        /cases/setcrna(.:format)           {:controller=>"cases", :action=>"setcrna"}
           cases_setloc        /cases/setloc(.:format)            {:controller=>"cases", :action=>"setloc"}
          cases_setview        /cases/setview(.:format)           {:controller=>"cases", :action=>"setview"}
         cases_viewcase        /cases/viewcase(.:format)          {:controller=>"cases", :action=>"viewcase"}
             cases_edit        /cases/edit(.:format)              {:controller=>"cases", :action=>"edit"}
           cases_update        /cases/update(.:format)            {:controller=>"cases", :action=>"update"}
          scans_addscan        /scans/addscan(.:format)           {:controller=>"scans", :action=>"addscan"}
        scans_saveaspdf        /scans/saveaspdf(.:format)         {:controller=>"scans", :action=>"saveaspdf"}
          scans_setscan        /scans/setscan(.:format)           {:controller=>"scans", :action=>"setscan"}
         scans_viewscan        /scans/viewscan(.:format)          {:controller=>"scans", :action=>"viewscan"}
                  cases GET    /cases(.:format)                   {:action=>"index", :controller=>"cases"}
                        POST   /cases(.:format)                   {:action=>"create", :controller=>"cases"}
               new_case GET    /cases/new(.:format)               {:action=>"new", :controller=>"cases"}
              edit_case GET    /cases/:id/edit(.:format)          {:action=>"edit", :controller=>"cases"}
                   case GET    /cases/:id(.:format)               {:action=>"show", :controller=>"cases"}
                        PUT    /cases/:id(.:format)               {:action=>"update", :controller=>"cases"}
                        DELETE /cases/:id(.:format)               {:action=>"destroy", :controller=>"cases"}
                  scans GET    /scans(.:format)                   {:action=>"index", :controller=>"scans"}
                        POST   /scans(.:format)                   {:action=>"create", :controller=>"scans"}
               new_scan GET    /scans/new(.:format)               {:action=>"new", :controller=>"scans"}
              edit_scan GET    /scans/:id/edit(.:format)          {:action=>"edit", :controller=>"scans"}
                   scan GET    /scans/:id(.:format)               {:action=>"show", :controller=>"scans"}
                        PUT    /scans/:id(.:format)               {:action=>"update", :controller=>"scans"}
                        DELETE /scans/:id(.:format)               {:action=>"destroy", :controller=>"scans"}
                  users GET    /users(.:format)                   {:action=>"index", :controller=>"users"}
                        POST   /users(.:format)                   {:action=>"create", :controller=>"users"}
               new_user GET    /users/new(.:format)               {:action=>"new", :controller=>"users"}
              edit_user GET    /users/:id/edit(.:format)          {:action=>"edit", :controller=>"users"}
                   user GET    /users/:id(.:format)               {:action=>"show", :controller=>"users"}
                        PUT    /users/:id(.:format)               {:action=>"update", :controller=>"users"}
                        DELETE /users/:id(.:format)               {:action=>"destroy", :controller=>"users"}
                   root        /(.:format)                        {:controller=>"users", :action=>"login"}
