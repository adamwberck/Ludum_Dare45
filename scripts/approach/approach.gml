///@description approach (val,goal,rate);
var val = argument0;
var goal = argument1;
var rate = abs(argument2);

if(val>goal){
	return max(goal,val-rate);
}else{
	return min(goal,val+rate);
}