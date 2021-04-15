Class beehealth.production.EhboxScheduledDownloadService Extends Ens.BusinessService
{

Parameter ADAPTER = "Ens.InboundAdapter";

Method OnProcessInput(pInput As %RegisteredObject, Output pOutput As %RegisteredObject) As %Status
{
	
	SET msg = ##class(beehealth.production.DownloadMessagesRequest).%New()
	SET msg.Source = "INBOX"
	SET msg.DeleteAfterDownload = 0
	SET status = ..SendRequestAsync("beehealth.domain.EhboxRoutingProcess", msg, .messagesResponse)
	$$$TRACE(messagesResponse)
	return status
}

}
