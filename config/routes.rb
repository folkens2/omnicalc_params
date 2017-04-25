Rails.application.routes.draw do
  get("/flexible/square/:number", {:controller => "calculations", :action => "flexible_square_5"})
  get("/flexible/square_root/:number", {:controller => "calculations", :action => "flexible_square_root_5"})
  get("/flexible/payment/:rate/:term/:principal", {:controller => "calculations", :action => "flexible_payment"})

  get("/square/new", {:controller => "calculations", :action => "square_form"})
  get("/square/results", {:controller => "calculations", :action => "square"})

  get("/square_root/new", {:controller => "calculations", :action => "square_root_form"})
  get("/square_root/results", {:controller => "calculations", :action => "square_root"})

end
