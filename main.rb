require_relative "analyze"
file_name = "mddrive.xml"
xml_file = File.readlines(file_name)
xml_file.delete_at(0)

analyze = Analayze.new(xml_file)
analyze.parse
analyze.save_to_file(file_name + "analyzed")
analyze.read_from_file(file_name + "analyzed")