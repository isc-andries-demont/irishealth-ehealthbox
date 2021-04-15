Class beehealth.production.SendMessagesRequest Extends Ens.Request
{

Property EhealthBoxMessages As list Of beehealth.domain.EhealthboxMessage [ Required ];

Storage Default
{
<Data name="EhealthboxMessagesRequestDefaultData">
<Subscript>"EhealthboxMessagesRequest"</Subscript>
<Value name="1">
<Value>EhealthBoxMessages</Value>
</Value>
</Data>
<DefaultData>EhealthboxMessagesRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
