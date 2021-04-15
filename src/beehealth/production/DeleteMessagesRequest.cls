Class beehealth.production.DeleteMessagesRequest Extends Ens.Request
{

Property Source As %String [ InitialExpression = "INBOX", Required ];

Property MessageIds As list Of %String;

Storage Default
{
<Data name="DeleteMessagesRequestDefaultData">
<Subscript>"DeleteMessagesRequest"</Subscript>
<Value name="1">
<Value>Source</Value>
</Value>
<Value name="2">
<Value>DeletedMessageIds</Value>
</Value>
<Value name="3">
<Value>MessageIds</Value>
</Value>
</Data>
<DefaultData>DeleteMessagesRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
