Class beehealth.domain.Metadata Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor)
{

Property Key As %String [ Required ];

Property Value As %String [ Required ];

Storage Default
{
<Data name="MetadataState">
<Value name="1">
<Value>Key</Value>
</Value>
<Value name="2">
<Value>Value</Value>
</Value>
</Data>
<State>MetadataState</State>
<StreamLocation>^beehealth.domain.MetadataS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
