require 'pp'

def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data.each do |key, value|
    value.each do |v, names|
      names.each do |names|
        # if !pigeon_list[names]
        #   pigeon_list[names] = {}
        # end
          
        if !pigeon_list[names][key]
          pigeon_list[names][key] = []
        end
        
        pigeon_list[names][key].push(v.to_s)
        
      end
    end
  end
  pp pigeon_list
end






