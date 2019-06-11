# Import new PDFs from Zotero into DEVONthink

This AppleScript adds PDFs from Zotero to DEVONthink (only when they are not in the database yet).

It imports into the current group and compares to a specific database.

## Zotero PDFs
Zotero stores PDF in subfolders with random names. The subfolders are located in the user defined Zotero root -> storage. This setting cannot be changed as far as I know.

Note that the stored PDFs are mixed with other stored data from Zotero.

```
…/zotero_base_path/storage/A4KJSLAJ/file1.pdf
…/zotero_base_path/storage/AKJ7HHAH/file2.pdf
…/zotero_base_path/storage/34jh5lhj/file3.pdf
…/zotero_base_path/storage/KSJFH6KS/something.html (!)
```

## Adding new PDFs

This Apple script does the following:

1. iterate over all subfolders
2. add only PDF files to DEVONthink
3. check if there is a similar file in DEVONthink already
4. if yes delete the added file


## Install

### Adapt the script to your machine
- Add the path to your Zotero `storage` folder in POSIX form ("/path/to/folder")
- Add the name of the database where your papers are stored

### Install
- Copy the AppleScript to your scripts folder (Scripts -> open script folder)
- You can choose either the Menu or the Toolbar

## Usage
Run the script from menubar or toolbar.

**NOTE**
- The script imports files into the *current group*
- It compares only to files in the *defined database*
- If you store papers in database A but compare to a database B you will import duplicates
- I use a specific 'import' group in my paper library

## Todo
- add bibliographic metadata

## Issues
- The script always adds all PDFs. Comparison happens after adding a PDF and if it exists already the file is deleted from DEVONthink again. Thus, run time grows with number of papers and might be to slow for very large databases. For hundreds of papers it finishes within seconds though.
