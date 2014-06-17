dim fso
set fso = CreateObject("Scripting.FileSystemObject")

Dim oShell
Set oShell = WScript.CreateObject ("WScript.Shell")

'Get the current directory
directory = fso.GetAbsolutePathName(".")
'Set it to the files path
directory = directory & "\files\"

randomize

'Print our files
select case int(rnd * 4) + 1
	case 1
	  'Print and image.
		oShell.run "mspaint /pt " &  directory & "rover.png"
	case 2
		'Print a text file
		oShell.run "notepad /p " & directory & "test_doc.txt"
	case 3
	  'Print an excel document
		set excel = CreateObject("Excel.Application")
		set excelDocument = excel.Workbooks.Open(directory & "sample_excel.xlsx")
		excelDocument.PrintOut
		excel.Application.Quit
	case 4
	  'print a word document
		set word = CreateObject("Word.Application")
		set document = word.Documents.Open(directory & "sample_word_document.docx")
		document.PrintOut
		document.Application.Quit
	end select
Set oShell = Nothing
