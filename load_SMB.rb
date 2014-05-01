require 'win32ole'
files_path = File.expand_path File.dirname(__FILE__) + "\\files"
files_path.gsub!('/','\\')

# Open word
word = WIN32OLE.new('Word.Application')
document = word.Documents.Open(File.join(files_path,"sample_word_document.docx"),0,1)

#Open excel
excel = WIN32OLE.new('Excel.Application')
excelDocument = excel.workbooks.Open(File.join(files_path,"sample_excel.xlsx"))

# Set paths for pdf,images, and notepad

image_path = File.join(files_path,"rover.png").gsub!('/','\\')
pdf_path = File.join(files_path,"yale-web-colors.pdf").gsub!('/','\\')
note_path = File.join(files_path,"test_doc.txt").gsub!('/','\\')

10.times do
	type = ["image","text","word","excel","pdf"].sample
	puts "Printing #{type}"
	case type
	when "image"
		`mspaint /pt "#{image_path}"`
	when "text"
		`notepad /p "#{note_path}"`
	when "word"
		document.PrintOut
	when "excel"
		excelDocument.PrintOut
	when "pdf"
		spawn('"C:/Program Files (x86)/Adobe/Acrobat 10.0/Acrobat/Acrobat.exe" /t /o /h /s /n ' + pdf_path)
	end
	sleep 2
end

document.close
excelDocument.close
word.quit
excel.quit