set ZoteroFolder to POSIX file "/path/to/zotero/storage"
set ComparisonDatabase to "your_paper_database"

tell application "Finder"
	
	# iterate over all subfolders of ZoteroFolder
	repeat with RandomFolder in (get every folder of folder ZoteroFolder)
		# iterate over all files within the subfolder
		repeat with PaperFile in (get every file of folder (RandomFolder as alias))
			
			# store the Posix path of the file for import with Devonthink			
			set PosixPaperFile to POSIX path of (PaperFile as alias)
			
			# check if the file contains '.pdf'
			if (PaperFile as string) contains ".pdf" then
				
				tell application "DEVONthink 3"
					# import file from Posix path
					set ImportedFile to (import PosixPaperFile to current group)
					
					# get list of similar files
					set SimilarFiles to compare record ImportedFile
					
					# iterate over similar files
					repeat with Similar in SimilarFiles
						
						# SimilarFiles contains the added file itself (score is 1.0)
						# skip the added file itself (identified by the record ID)
						if id of Similar is not equal to id of ImportedFile then
							
							# if there is at least one record with very high similarity
							# we delete the file we just added and break
							if score of Similar is greater than 0.95 then
								delete record ImportedFile
								exit repeat
							end if
						end if
					end repeat
					
				end tell
				
			end if
			
		end repeat
		
	end repeat
end tell
