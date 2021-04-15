Class beehealth.production.DeleteMessagesResponse Extends (EnsLib.PEX.Message, %JSON.Adaptor)
{

Property Status As %String;

Property StatusInfo As %String(MAXLEN = 1024);

Method %JSONExportToString(ByRef %export As %String, %mappingName As %String = "") As %Status
{
	set %export = ""
	set res = {}.%Set("Status", ..Status).%Set("StatusInfo", ..StatusInfo)
	
	
  	set %export = res.%ToJSON()
  	quit $$$OK
}

Storage Default
{
<Data name="DeleteMessagesResponseDefaultData">
<Subscript>"DeleteMessagesResponse"</Subscript>
<Value name="1">
<Value>Status</Value>
</Value>
<Value name="2">
<Value>StatusInfo</Value>
</Value>
</Data>
<DefaultData>DeleteMessagesResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
