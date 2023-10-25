Rails.application.routes.draw do

  get("/", { :controller => "pages", :action => "home" })
  get("/dice/:num_of_dice/:dice_sides", { :controller => "pages", :action => "roll" })

end
