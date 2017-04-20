Rails.application.routes.draw do
  get("/flexible/square/:number", {:controller => "calculations", :action => "flexible_square_5"})
  get("/flexible/square_root/:number", {:controller => "calculations", :action => "flexible_square_root_5"})
  get("/flexible/payment/:rate/:term/:principal", {:controller => "calculations", :action => "flexible_payment"})
end
