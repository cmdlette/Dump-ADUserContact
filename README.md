# Dump_ADUserContact
This script will pull basic contact information for Active Directory user accounts and spit everything out into a .csv file.

# What you need to do
Read and edit the script carefully before executing. You'll need to fill in your environment's:

0. output filepath and name in the $file variable
1. relevant property and filter information after -Filter
2. domain structure information after -Searchbase

There are comments to remind you where to look and what to change.

As-is, it will pull username, description, email address, and phone number. If you wish to remove or add properties, make sure to repeat the change all the way down the endless line of pipes so the output matches your expectations.

# Other notes
This script will need to be run elevated (as Administrator) so that the ActiveDirectory module will import successfully.

This script, as shared, is not signed.
