Class beehealth.domain.Addressee Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor)
{

Property EhboxId As %String;

Property Quality As %String;

Property ApplicationId As %String;

Storage Default
{
<Data name="AddresseeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>EhboxId</Value>
</Value>
<Value name="3">
<Value>Quality</Value>
</Value>
<Value name="4">
<Value>ApplicationId</Value>
</Value>
<Value name="5">
<Value>EhboxIdType</Value>
</Value>
</Data>
<Data name="AddresseeState">
<Value name="1">
<Value>EhboxId</Value>
</Value>
<Value name="2">
<Value>Quality</Value>
</Value>
<Value name="3">
<Value>ApplicationId</Value>
</Value>
<Value name="4">
<Value>EhboxIdType</Value>
</Value>
</Data>
<DataLocation>^beehealth.domain.AddresseeD</DataLocation>
<DefaultData>AddresseeDefaultData</DefaultData>
<IdLocation>^beehealth.domain.AddresseeD</IdLocation>
<IndexLocation>^beehealth.domain.AddresseeI</IndexLocation>
<State>AddresseeState</State>
<StreamLocation>^beehealth.domain.AddresseeS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
