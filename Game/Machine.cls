Class Game.Machine Extends %RegisteredObject
{

ClassMethod level(sticks, us)
{
 	w !,"Machine select 1 or 2 or 3 or 4 sticks: ",!
    s ms=5- us
    w "machine Pick the Sticks:"_ms
    hang 1
    s cnt=sticks-ms
    s sticks=cnt
    f i=1:1:sticks {
        w " "_i_" "
    }
	s dev=0
    s machine=1
    i sticks<=0 D ##Class(Game.Lost).status(dev,machine)
    q:sticks=0
    d:'(sticks<=0) ##Class(Game.User).player(.sticks)
    q
}

}
