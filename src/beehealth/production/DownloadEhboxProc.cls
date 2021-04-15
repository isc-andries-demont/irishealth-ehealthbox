/// 
Class beehealth.production.DownloadEhboxProc Extends Ens.BusinessProcessBPL
{

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='beehealth.production.DownloadMessagesRequest' response='beehealth.production.DownloadMessagesResponse' height='2000' width='2000' >
<sequence xend='200' yend='550' >
<call name='DownloadEhbox' target='ehbox generic' async='0' xpos='200' ypos='250' >
<request type='beehealth.production.DownloadMessagesRequest' >
<assign property="callrequest.Source" value="request.Source" action="set" />
<assign property="callrequest.DeleteAfterDownload" value="request.DeleteAfterDownload" action="set" />
</request>
<response type='beehealth.production.DownloadMessagesResponse' >
<assign property="response" value="callresponse" action="set" />
</response>
</call>
</sequence>
</process>
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
