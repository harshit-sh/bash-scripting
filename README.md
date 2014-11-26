## Bash Scripts

- sum_five.sh :
```	
	calculates sum of digits of a five digit integer
	Usage ./sum_five.sh number 
```
- home_dir.sh :
```
	Searches /etc/passwd file to find the home directory of a given user
	Usage: ./home_dir.sh username, where username is an existing user
```
- permissions.sh :
```
	displays the file permissions in the form of a matrix
	Usage: ./permissions.sh filepath
	For example : Output of ./permissions.sh permissions.sh
	
	      						READ   WRITE   EXECUTE
						OWNER    X       X       X
						GROUP    X               X
						OTHERS   X               X

```
- digit_words.sh :
```
	Prints output of single digit integer in words
	Usage: ./digit_words.sh num , where num is a single digit integer
```
- line_print.sh :
```
	Prints the name of all the configuration files that have more than 50 lines in the directory /etc/*.conf
	Usage: ./line_print.sh
	Caution: System password needs to be provided to give sudo access to the script
```
- guess_game.sh :
```
	Computer guesses randomly generated number using binary search
	Usage: ./guess_game.sh num, where num is the range till which random number is generated
	range = 1..num
```
