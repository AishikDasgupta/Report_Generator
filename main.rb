# main.rb
require_relative 'lib/report_generator'

# Initialize the report generator
report_generator = ReportGenerator.new

# Prompt the user for report details
print "Enter report title: "
title = gets.chomp

print "Enter report content:\n"
content = gets.chomp

# Generate and save the report
report_generator.generate_report(title, content)

