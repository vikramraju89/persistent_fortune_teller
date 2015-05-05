Rails.application.routes.draw do
  get("/",        { :controller => "fortunes", :action => "lucky" })

  get("/lucky_numbers",   { :controller => "fortunes", :action => "lucky" })
  get("/unlucky_numbers", { :controller => "fortunes", :action => "unlucky" })

  # VARIABLE ROUTES
  # =======================
  get("/random/:lower/:upper", { :controller => "random", :action => "generate" })
  get("/signs/:the_sign",         { :controller => "zodiacs", :action => "sign" })
  get("/creatures/:the_creature", { :controller => "zodiacs", :action => "creature" })
  get("/zodiacs/new", { :controller => "zodiacs", :action => "new_form" })
  get("/create_zodiac", { :controller => "zodiacs", :action =>"create_row"})
    # if there are two routes that are potentially conflicting, order matters
  get("/show/:the_id", { :controller => "zodiacs", :action => "show"})


  get("/zodiacs", { :controller => "zodiacs", :action => "index"})
  get("/delete_zodiacs/:the_id", {:controller => "zodiacs", :action => "destroy"})

end
