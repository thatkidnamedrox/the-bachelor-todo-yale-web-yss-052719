def get_first_name_of_season_winner(data, season)
  # code here
  name = ""
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      name = contestant["name"]
      break
    end
  end

  first_name = name.split(" ").first
  first_name

end

def get_contestant_name(data, occupation)
  # code here

  contestants = data.values.flatten

  person =
    contestants.find do |contestant|
      contestant["occupation"] == occupation
    end

  person["name"]
end

def count_contestants_by_hometown(data, hometown)
  # code here
  contestants = data.values.flatten
  hometown_people = contestants.select { |c| c["hometown"] == hometown }
  hometown_people.length
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
