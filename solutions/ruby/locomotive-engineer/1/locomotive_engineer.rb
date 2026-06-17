class LocomotiveEngineer
  def self.generate_list_of_wagons(*list) = list

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    a, b, *c = each_wagons_id
    each_wagons_id = *c, *a, *b
    a, *b = each_wagons_id
    final = *a, *missing_wagons, *b
  end

  def self.add_missing_stops(a, **b) 
    stop = {"stops": b.values}
    final = {**a, **stop}
  end

  def self.extend_route_information(route, more_route_information)
    return {**route, **more_route_information}
  end
end
