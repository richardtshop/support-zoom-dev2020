module CreateAlliances
  attr_reader :allies

  def add_ally(ally)
    @allies ||= []
    @allies << ally if ally.instance_variable_defined?(:@name)
  end

  def see_allies
    return puts "No current allies" if allies.nil? || allies.empty?
    puts "Current allies: "
    allies.each { |ally| puts ally.name }
  end
end

module Transmutate
  attr_reader :disguise

  def phase(object)
    puts "#{name || self.class} phased through the #{object.downcase}, there's no escaping them now!"
  end

  def disguise=(disguise)
    @disguise = disguise
    puts "#{name || self.class} has added a #{disguise} as disguise. Better be on the lookout!"
  end
end

module PowerUp
  def strengthen
    puts "#{name || self.class} increases their physical strength! Nothing can stop them now."
  end
end
