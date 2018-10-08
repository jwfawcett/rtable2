#!/bin/bash
clear
echo "The routing table is: "
netstat -r

# Insert a new blank line
echo

# You can execute this command in a subshell using 
# this ` ` or this $( )
# The $( ) method is the preferred method and is the newest.
# You may find older scripts using the ` ` method.

echo "Another way to output the same result:"

# Notice the use of single quotes here...try to figure out
# what single vs double quotes does.
echo 'echo "The routing table is: `netstat -r`"'
echo "The routing table is: `netstat -r`" 

echo
echo "And yet another way to output the same result:"
echo 'echo "The routing table is: $(netstat -r)"'
echo "The routing table is: $(netstat -r)"


# What if we have the same command we want to run in multiple places?
# What happens if we need to change that command?  
# We would need to change the command in multiple places and 
# risk the chance of missing one.
# We can solve this by setting the command in a variable.
# Now we have one place to update the command and its automatically updated 
# everywhere we've used it.

echo
listening_ports="netstat -tnl"
echo "The listening ports on this host are $($listening_ports)"

