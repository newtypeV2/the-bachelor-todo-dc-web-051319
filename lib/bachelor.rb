require "pry"


def get_first_name_of_season_winner(data, season)
  # code here
  nameWinner=""
  data.each{ |key, value| 
  if key==season
	  value.each{ |array| 
	   if array["status"]=="Winner"
	   nameWinner=array["name"]
	   end
	  }	
	 end
  }
  nameWinner.split(" ").first
  #data.fetch(season).find{|profile| profile["status"]=="Winner"}.fetch("name").split(" ").first
end

def get_contestant_name(data, occupation)
  # code here
  #data.values.flatten!.find{|x| x.fetch("occupation")==occupation}.fetch("name")
end

def count_contestants_by_hometown(data, hometown)
  # code here
  hometownCount=0
  data.each{ |key, value| 
	  value.each{ |array| 
		  array.each{|k,v|
		  if k=="hometown" && v==hometown
		  hometownCount+=1
		  end
		  } 
	  }	
  }
hometownCount
end

def get_occupation(data, hometown)
  dOccupation = []
  data.each{ |key, value| 
	  value.each{ |array| 
	    if array["hometown"]==hometown
	      dOccupation << array["occupation"]
	    end
		  #array.each{|k,v|
		  #if k=="hometown" && v==hometown
		  #hometownCount+=1
		  #end
		  #} 
	  }	
  }
dOccupation.first
end

def get_average_age_for_season(data, season)
  # code here
  ageTotal=0.0
  indvTotal=0.0
  data.each{ |key, value| 
  if key==season
	  value.each{ |array| 
	    ageTotal+=array["age"].to_f
	    indvTotal+=1
	  }	
	 end
  }
(ageTotal/indvTotal).round
end
