#!/bin/rc

for(i){
	if(test -f $i)
		mv $i $home/trash
	if(test -d $i)
		tar c $i | @{cd $home/trash && tar xT } && rm -r $i
}
