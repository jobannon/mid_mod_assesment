class ResultsFacade
    
  def initialize(house)
    @house = house 
  end

  def get_house
    raw_data = PotterService.new(@house).get_house
    raw_data.map do |mem|
      mem[:members].each do |sub_mem|
        Member.new(sub_mem[:_id], sub_mem[:name])
      end
    end
  end
end
