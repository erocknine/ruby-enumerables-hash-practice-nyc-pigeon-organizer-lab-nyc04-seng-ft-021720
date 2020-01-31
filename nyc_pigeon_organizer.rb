require 'pp'


def pull_names (data)
  new_pigeon_data = []
  data.each do |top_keys, attributes|
    attributes.each do |attributes, values|
      new_pigeon_data << values
    end
  end
  new_pigeon_data = new_pigeon_data.flatten
  names = new_pigeon_data.uniq
  return names
end


def extract_keys (data)
  key_group = []
  data.each do |top_layer, attributes|
    key_group << top_layer
  end
  return key_group
end


def names_to_keys (names, main_keys)
  hash_keys = Hash[main_keys.collect {|key| [key, []]}]
  pigeon_list = Hash[names.collect {|name| [name, hash_keys]}]
  return pigeon_list
end
  
# def retrieve_key (data)
#   pigeon_list.each do |x, y|
#     data.each do |k, v| 
#     h.push(v.key(x))
#     end
# end

def nyc_pigeon_organizer(data)

  names = pull_names(data)
  main_keys = extract_keys(data)
  pigeon_list = names_to_keys(names, main_keys)
  n = {}
  h = {}
  data.each do |k, v|
    v.each do |x, y|
      h[y] = x.to_s
    end
  end
  
  n = h.inject({}) do |memo, (name), attribute|
    (memo[name] ||= {})[attribute.to_s]
    memo
  end
  
   n
  pp h
  pigeon_list
end






