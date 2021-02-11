#!/bin/bash

echo hello
exit
echo bye

##exit command stop stop the script if it is encountered, No more commands will execute
## simple exit command returns 0 as the text status.
# and gives 0 when we give $?

#Output for the above syntax is -> hello and we have exit in second line.

echo hello
exit 19
echo bye

#Output for the above syntax is -> hello and it has exits because we have exit command in second line.
# and gives 19 when we give $?