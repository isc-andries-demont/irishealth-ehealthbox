Class beehealth.production.EhboxDeleteService Extends Ens.BusinessService
{

/*
delete messages given source and messageids. The deletion will only take place when ALL message our found on ehealthbox.
*/
Method OnProcessInput(pInput As %RegisteredObject, Output pOutput As %RegisteredObject) As %Status
{
	//read the body from the rest request and put it in a dynamic object
	SET body = {}.%FromJSON(pInput.Content.Read())
	
	SET msg = ##class(beehealth.production.DeleteMessagesRequest).%New()
	
	SET msg.Source = body.source
	
	set iter = body.messageids.%GetIterator()
    while iter.%GetNext(.key , .value ) {
	   $$$LOGINFO(key _ " " _value)
	   set status =  msg.MessageIds.Insert(value)
    }
	
	
	
	SET status = ..SendRequestSync( "beehealth.production.DeleteEhboxProc", msg, .response)
	
	$$$LOGINFO("status process result: " _ status)
	$$$LOGINFO(response)
	
	                      
	Set status = response.%JSONExportToString(.responseAsJson)
	set pOutput = "[" _ responseAsJson _ "]"
	
	$$$TRACE(responseAsJson)
	
	
	return status
}

}
