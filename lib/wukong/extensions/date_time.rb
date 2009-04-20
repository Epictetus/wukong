DateTime.class_eval do
  def self.parse_safely dt
    begin
      parse(dt, true)
    rescue
      nil
    end
  end


  def self.parse_and_flatten str
    parse_safely(str).to_flat
  end
end
