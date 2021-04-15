Class beehealth.production.EhboxSendService Extends Ens.BusinessService
{

Method OnProcessInput(pInput As %RegisteredObject, Output pOutput As %RegisteredObject) As %Status
{

	//read the body from the rest request and put it in a dynamic object
	SET body = {}.%FromJSON(pInput.Content.Read())
	//SET ehboxmessages = body.Messages
	
	//SET ^ab= ehboxmessages
	
	SET msg = ##class(beehealth.production.SendMessagesRequest).%New()
	
	 set iter = body.%GetIterator()
     while iter.%GetNext(.key , .ehboxMessageDo ) {
	    SET ehboxMessage = ##class(beehealth.domain.EhealthboxMessage).%New()
	    SET status = ehboxMessage.%JSONImport(ehboxMessageDo)
	    $$$LOGINFO("status jsonimport: "_status)
	    //SET ^ab= ehboxMessage.Patient
	    SET status = msg.EhealthBoxMessages.Insert(ehboxMessage)
     }
	

	SET status = ..SendRequestSync( "beehealth.production.SendEhboxProc", msg, .messagesResponse)
	$$$LOGINFO("status process result: " _ status)
	$$$LOGINFO(messagesResponse)
	
	
	
	Set status = messagesResponse.%JSONExportToString(.messagesResponseAsJson)
	set pOutput = "[" _ messagesResponseAsJson _ "]"
	
	$$$TRACE(messagesResponseAsJson)
	
	
	return status
}

}
