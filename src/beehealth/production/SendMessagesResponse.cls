Class beehealth.production.SendMessagesResponse Extends (EnsLib.PEX.Message, %JSON.Adaptor)
{

Property Status As %String;

Property StatusInfo As %String(MAXLEN = 1024);

Property MessageIds As list Of %String;

Method %JSONExportToString(ByRef %export As %String, %mappingName As %String = "") As %Status
{
	set %export = ""
	set res = {}.%Set("Status", ..Status).%Set("StatusInfo", ..StatusInfo).%Set("MessageIds",[])
	
	set ptr = 0
  	for i=1:1:..MessageIds.Count() {
    	do res.MessageIds.%Push(..MessageIds.GetAt(i))
  	}
  	set %export = res.%ToJSON()
  	quit $$$OK
}

Storage Default
{
<Data name="SendMessagesResponseDefaultData">
<Subscript>"SendMessagesResponse"</Subscript>
<Value name="1">
<Value>Status</Value>
</Value>
<Value name="2">
<Value>StatusInfo</Value>
</Value>
<Value name="3">
<Value>MessageIds</Value>
</Value>
</Data>
<DefaultData>SendMessagesResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
