class PagesController < ApplicationController

  def home

    render ({ :template => "actions/homepage"})
  end 

  def roll 
    @num_of_dice = params.fetch("num_of_dice").to_i
    @sides = params.fetch("dice_sides").to_i
  
    @rolls = []
  
    @num_of_dice.times do
      die = rand(1..@sides)
  
      @rolls.push(die)
    end  

    render ({ :template => "actions/dice" })
  end 

end 
