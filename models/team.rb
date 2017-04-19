require_relative "./team_data"

class Team
  attr_accessor :alliteration_name, :roster

  def initialize(alliteration_name, roster)
    @alliteration_name = alliteration_name
    @roster = roster
  end

  def self.all
    @roster = []
    @roster = TeamData::ROLL_CALL
    @roster.each do |alliteration_name|
      @roster << Team.new(alliteration_name)
    end
    @roster
  end

end 
