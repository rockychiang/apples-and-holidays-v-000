require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |key, array|
        array << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    s = season.to_s.capitalize
    puts "#{s}:"
    holiday.each do |day, supply|
      d = day.to_s.capitalize
      if d.include?("_") 
        a = d.split("_")
        a.each{|i| i.capitalize!}
        d = a.join(" ")
      end
      sup = supply.join(", ")
      puts "  #{d}: #{sup}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  with_bbq = []
  holiday_hash.each do |season, holiday|
    holiday.each do |day, supply|
      with_bbq << day if supply.include?("BBQ")
    end
  end
  with_bbq
end