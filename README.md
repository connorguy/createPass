# createPass
Bash script to create and store unique secure passwords that can be stored encrypted. 

Check if a createPass file is available, if not create one and encrypt it (planning to use vim).
Ask user what website the password is for so that it can be stored in createPass file.
Use “openssl rand -base64 20”.
Convert to base58 encoding.
Store password in createPass file and output password to shell.
Close encrypted file. 
Ask if user is done with password, clean screen.

createPass should ideally be stored in a backed up location. Alias can be used to expedite usage (cut out the cd sh commands).

****This project is incomplete!