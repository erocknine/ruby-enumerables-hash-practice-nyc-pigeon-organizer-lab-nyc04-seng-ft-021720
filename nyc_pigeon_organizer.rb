

def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data.each do |key, value|
    value.each do |v, names|
      names.each do
        if !pigeon_list[names]
          pigeon_list[names] = {}
        end
        if !pigeon_list[names][key]
          pigeon_list[names][key] = []
        end
        pigeon_list[names][key].push(value.to_s)
      end
    end
  end
  pigeon_list
end






