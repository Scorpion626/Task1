class Analayze

  def initialize(str)
    @xml = str
  end
    @@xml_final = Array.new
  def parse

    @xml.each {|i|
      index = /<template name="([-zA-z"]+)/ =~ i
      unless index.nil?
        name_start = i[index, i.size].scan(/name="([-zA-z"]+)"/)
        @@xml_final += name_start
      end
    }
     return @@xml_final
  end

  def save_to_file(name)
    File.open(name, 'w') do |f|
      @@xml_final.each {|i| f.puts"#{i}"}
    end
  end

  def read_from_file(name)
    return unless File.exists?(name)
    xml_nodes = File.readlines(name)
    puts xml_nodes
  end

end