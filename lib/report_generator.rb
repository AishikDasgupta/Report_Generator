#######################AISHIK########################################report_generator.rb ##################################DASGUPTA####################################

class ReportGenerator
  def initialize(output_dir = '/home/malfoy2003/Desktop/Report_Generator/Reports')
    @output_dir = output_dir
    Dir.mkdir(output_dir) unless File.directory?(@output_dir)
  end

  def generate_report(title, content)
    timestamp = Time.now.strftime('%Y-%m-%d_%H-%M-%S')
    filename = "#{timestamp}_report.docx"
    file_path = File.join(@output_dir, filename)

    File.open(file_path, 'w') do |file|
      file.puts("Report Title: #{title}")
      file.puts("\n")
      file.puts(content)
    end

    puts "Report saved to #{file_path}"
  end
end


