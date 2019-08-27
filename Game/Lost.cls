Class Game.Lost Extends %RegisteredObject
{

ClassMethod status(dev, machine)
{
	 if dev=1 {
        w "User Lost",!
    }else { 
        w "machine Lost",!
    }
    r "restart your game Yes(Y)or No(N)",res
    if res="Y" {
        d ##Class(Game.Sample).sample()
    }else{
        q
    }
}
