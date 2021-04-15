Class beehealth.production.DownloadMessagesResponse Extends Ens.Response
{

Property EhealthBoxMessages As list Of beehealth.domain.EhealthboxMessage;

Property Status As %String [ InitialExpression = "999", Required ];

Property Source As %String [ InitialExpression = "INBOX", Required ];

Storage Default
{
<Data name="DownloadMessagesResponseDefaultData">
<Subscript>"DownloadMessagesResponse"</Subscript>
<Value name="1">
<Value>EhealthBoxMessages</Value>
</Value>
<Value name="2">
<Value>Status</Value>
</Value>
<Value name="3">
<Value>Source</Value>
</Value>
</Data>
<DefaultData>DownloadMessagesResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
