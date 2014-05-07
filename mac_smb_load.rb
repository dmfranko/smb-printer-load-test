start_time = Time.now

#paths
files_path = File.expand_path File.dirname(__FILE__) + "/files"
word_path = File.join(files_path,"sample_word_document.docx")
excel_path = File.join(files_path,"sample_excel.xlsx")
png_path = File.join(files_path,"rover.png")



10.times do |x|
  # Change the default printer randomly
  `lpoptions -d SMB"#{rand(0..9)}"`
  # Needs a second or so to actually take effect
  sleep rand(1..3)
  
  doc = rand(0..2)
  if doc == 0
    `launch -i com.microsoft.Word -p "#{word_path}"`
  elsif doc == 1
    `launch -i com.apple.Preview -p "#{png_path}"`
  elsif doc == 2
    `launch -i com.microsoft.Excel -p "#{excel_path}"`
  end
end

end_time = Time.now
puts "Start Time #{start_time}"
puts "End Time #{end_time}"
puts "Total Time #{end_time - start_time}"
