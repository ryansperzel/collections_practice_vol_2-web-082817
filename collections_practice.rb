# your code goes here
def begins_with_r(array)
  answer = true
  array.each do |element|
    if element[0] != "r".downcase
      answer = false
    end
  end
  answer
end

def contain_a(array)
  new_array = []
  array.each do |element|
    if element.include?("a")
      new_array << element
    end
  end
  new_array
end

def first_wa(array)
  answer = ""
  array.each do |element|
    if element.match(/wa/)
      answer = element
      break
    end
  end
  answer
end

def remove_non_strings(array)
  new_array = []
  array.each do |element|
    if element.is_a?(String)
      new_array << element
    end
  end
  new_array
end

def count_elements(array)
  array.each do |original_hash|
      original_hash[:count] = 0
      name = original_hash[:name]
      array.each do |hash|
        if hash[:name] == name
          original_hash[:count] += 1
        end
      end
    end.uniq
  end

def merge_data(keys, data)
  merged = []
  keys.each do |person_name|
    name = person_name[:first_name]
    data.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        merged << merged_person
      end
    end
  end
  merged
end

def find_cool(array)
  answer = []
  array.each do |element|
    if element[:temperature] == "cool"
      answer << element
    end
  end
  answer
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end
