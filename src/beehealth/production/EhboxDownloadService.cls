Class beehealth.production.EhboxDownloadService Extends Ens.BusinessService
{

Method OnProcessInput(pInput As %RegisteredObject, Output pOutput As %RegisteredObject) As %Status
{

	//read the body from the rest request and put it in a dynamic object
	SET body = {}.%FromJSON(pInput.Content.Read())
	SET msg = ##class(beehealth.production.DownloadMessagesRequest).%New()
	SET msg.Source = body.source
	SET msg.DeleteAfterDownload = body.deleteAfterDownload
	
	

	SET status = ..SendRequestSync( "beehealth.production.DownloadEhboxProc", msg, .messagesResponse)
	
	$$$TRACE(messagesResponse)
	
	set pOutput = "["
	 
	for i=1:1:messagesResponse.EhealthBoxMessages.Count() {
		if i>1 set pOutput = pOutput _ ","
			
		set tSC = messagesResponse.EhealthBoxMessages.GetAt(i).%JSONExportToString(.ehboxMessageAsJSON)
		
		
		set pOutput = pOutput _ ehboxMessageAsJSON
	}
	
	set pOutput = pOutput _ "]"
	
	return status
	Quit $$$ERROR($$$NotImplemented)
}

}
