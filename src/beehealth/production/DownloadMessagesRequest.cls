Class beehealth.production.DownloadMessagesRequest Extends Ens.Request
{

Property Source As %String [ InitialExpression = "INBOX", Required ];

Property DeleteAfterDownload As %Boolean [ InitialExpression = 0 ];

Storage Default
{
<Data name="DownloadMessagesRequestDefaultData">
<Subscript>"DownloadMessagesRequest"</Subscript>
<Value name="1">
<Value>Source</Value>
</Value>
<Value name="2">
<Value>DeleteAfterDownload</Value>
</Value>
</Data>
<DefaultData>DownloadMessagesRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
