Class beehealth.domain.Content Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor)
{

Property MimeType As %String(MAXLEN = 256) [ InitialExpression = "text/plain", Required ];

Property Title As %String(MAXLEN = 1024) [ InitialExpression = "title example", Required ];

Property Payload As %Stream.GlobalBinary;

Property TransportType As %String(MAXLEN = 256);

Storage Default
{
<Data name="ContentState">
<Value name="1">
<Value>MimeType</Value>
</Value>
<Value name="2">
<Value>Title</Value>
</Value>
<Value name="3">
<Value>Payload</Value>
</Value>
<Value name="4">
<Value>TransportType</Value>
</Value>
</Data>
<State>ContentState</State>
<StreamLocation>^beehealth.domain.ContentS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
