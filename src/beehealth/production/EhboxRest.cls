Class beehealth.production.EhboxRest Extends %CSP.REST
{

XData UrlMap [ XMLNamespace = "http://www.intersystems.com/urlmap" ]
{
<Routes>
<Route Url="/send" Method="POST" Call="Send2Ehbox" />
<Route Url="/download" Method="POST" Call="DownloadFromEhbox" />
<Route Url="/delete" Method="POST" Call="DeleteFromEhbox" />
</Routes>
}

ClassMethod Send2Ehbox() As %Status
{
  	set tSC = ##class(Ens.Director).CreateBusinessService("EhboxSendService",.tService)
  	
  	do %response.SetHeader("Content-Type", "application/json")
  	
  	If 'tSC {
		w "make sure the service is running",!
		do 
	}
	Else {
		set tSC=tService.ProcessInput(%request,.output)
		
		If 'tSC {
			write "make sure the service is running",!
		}
		
		w output , !
		
		
	
	}
	
	return tSC
}

ClassMethod DownloadFromEhbox() As %Status
{
	set tSC = ##class(Ens.Director).CreateBusinessService("EhboxDownloadService",.tService)
	do %response.SetHeader("Content-Type", "application/json")
	
		
	If 'tSC {
		w "{""message"":""Make sure the service is running""}",!
		do 
	}
	Else {
		set ^ab = %request
		set tSC=tService.ProcessInput(%request,.output)
		
		If 'tSC {
			write "{""message"":""Make sure the service is running""}",!
		}
		
		w output , !
		
	
	}
	
	return tSC
}

ClassMethod DeleteFromEhbox() As %Status
{
	set tSC = ##class(Ens.Director).CreateBusinessService("EhboxDeleteService",.tService)
	do %response.SetHeader("Content-Type", "application/json")
	
		
	If 'tSC {
		w "{""message"":""Make sure the service is running""}",!
		do 
	}
	Else {
		set ^ab = %request
		set tSC=tService.ProcessInput(%request,.output)
		
		If 'tSC {
			write "{""message"":""Make sure the service is running""}",!
		}
		
		w output , !
		
	
	}
	
	return tSC
}

}
