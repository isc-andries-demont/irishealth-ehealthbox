Class beehealth.production.EhboxContentFileOperation Extends Ens.BusinessOperation
{

Parameter ADAPTER = "EnsLib.File.OutboundAdapter";

Parameter INVOCATION = "Queue";

Property TransportType As %String(MAXLEN = 256);

Property Extension As %String [ InitialExpression = "unknown" ];

Parameter SETTINGS = "TransportType, Extension";

Method writeContentToFile(pRequest As beehealth.production.ContentRequest, pOutput As Ens.Response) As %Status
{
	set filename = pRequest.FileName _ "." _ ..Extension
	if (..TransportType = "") {
		
		$$$TRACE("write to file "_ filename)
  		Set tSC=..Adapter.PutStream(filename, pRequest.Content.Payload)	
	} 
	elseif (..TransportType = pRequest.Content.TransportType) {
		$$$TRACE("write to file "_ filename)
  		Set tSC=..Adapter.PutStream(filename, pRequest.Content.Payload)	
	}
	else {
		$$$TRACE("no export for transporttype: " _pRequest.Content.TransportType)
		Set tSC = $$$OK
	}

  	Quit tSC
}

XData MessageMap
{
<MapItems>
  <MapItem MessageType="beehealth.production.ContentRequest">
    <Method>writeContentToFile</Method>
  </MapItem>
</MapItems>
}

}
