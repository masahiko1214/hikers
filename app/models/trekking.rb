class Trekking < ApplicationRecord
  belongs_to :hiker
  belongs_to :mountain

  def calorie (weight, level, time)
  
    if  level == 2

      if time == 2
       weight*6*0.5

      elsif time == 3
        weight*6*1

      elsif time == 4
        weight*6*1.5

      elsif time == 5
        weight*6*2.5

      elsif time == 6
        weight*6*3.5

      elsif time == 7
        weight*6*4.5

      elsif time == 8
        weight*6*5.5

      elsif time == 9
        weight*6*6.5

      elsif time == 10
        weight*6*7
      end

    elsif level == 3

      if time == 2
        weight*7*0.5
 
        elsif time == 3
         weight*7*1
 
        elsif time == 4
         weight*7*1.5
 
        elsif time == 5
         weight*7*2.5
 
        elsif time == 6
         weight*7*3.5
 
        elsif time == 7
         weight*7*4.5
 
        elsif time == 8
         weight*7*5.5
 
        elsif time == 9
         weight*7*6.5
 
        elsif time == 10
         weight*7*7
       end
 
      elsif level == 4

        if time == 2
          weight*8*0.5
   
        elsif time == 3
           weight*8*1
   
          elsif time == 4
           weight*8*1.5
   
          elsif time == 5
           weight*8*2.5
   
          elsif time == 6
           weight*8*3.5
   
          elsif time == 7
           weight*8*4.5
   
          elsif time == 8
           weight*8*5.5
   
          elsif time == 9
           weight*8*6.5
   
          elsif time == 10
           weight*8*7
         end









    end








    end

end
