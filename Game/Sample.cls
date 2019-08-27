Class Game.Sample Extends %Persistent
{

Property UserName As %String [ Required ];

Property MachineName As %String [ Required ];

Property Time As %String;

Property Status As %String;

Property DevelopmentName As %String [ Required ];

ClassMethod sample()
{
	s obj=##Class(Game.Sample).%New()
	r "Enter the User Name:",n,!
	s obj.UserName=n
	w "Total No.Of Sticks:21",!
    s sticks=21
    r "enter machine name: ",a,!
   	s obj.MachineName=a
    r "enter dev name: ",b,!
    s obj.DevelopmentName=b
    s obj.Time=$zdatetime($HOROLOG)
    d obj.%Save()
    w "Display 1 to 21 sticks",!
    s i=""
    f i=1:1:21{
        w " "_i_" "
    }
    d ##Class(Game.User).player(sticks)
}

Storage Default
{
<Data name="SampleDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>UserName</Value>
</Value>
<Value name="3">
<Value>MachineName</Value>
</Value>
<Value name="4">
<Value>Status</Value>
</Value>
<Value name="5">
<Value>DevelopmentName</Value>
</Value>
<Value name="6">
<Value>Time</Value>
</Value>
</Data>
<DataLocation>^Game.SampleD</DataLocation>
<DefaultData>SampleDefaultData</DefaultData>
<IdLocation>^Game.SampleD</IdLocation>
<IndexLocation>^Game.SampleI</IndexLocation>
<StreamLocation>^Game.SampleS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
