Class Game.User Extends %RegisteredObject
{

ClassMethod player(sticks)
{
	   w !,"User select 1 or 2 or 3 or 4 sticks:",!
    r "User enter sticks: ",us
    if us>4 {
        w "please select upto 4 Sticks"
        r "User enter sticks: ",us
    }
    s cnt=sticks-us
    s sticks=cnt
    f i=1:1:sticks {
        w " "_i_" "
    }
    s dev=1
    s machine=0
    d:sticks=0 ##Class(Game.Lost).status(dev,machine)
    d ##Class(Game.Machine).level(.sticks,us)
    q
}

}
