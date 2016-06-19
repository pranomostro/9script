#!/bin/rc

for(i){
	if(test -f $i)
		mv $i /usr/glenda/trash
	if(test -d $i)
		tar c $i | @{cd /usr/glenda/trash && tar xT } && rm -r $i
}
