Class beehealth.production.ContentRequest Extends Ens.Request
{

Property Content As beehealth.domain.Content;

Property FileName As %String;

Storage Default
{
<Data name="ContentRequestDefaultData">
<Subscript>"ContentRequest"</Subscript>
<Value name="1">
<Value>Content</Value>
</Value>
<Value name="2">
<Value>FileName</Value>
</Value>
</Data>
<DefaultData>ContentRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
