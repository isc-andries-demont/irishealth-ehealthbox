/// 
Class beehealth.production.SendEhboxProc Extends Ens.BusinessProcessBPL [ ClassType = persistent, ProcedureBlock ]
{

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='beehealth.production.SendMessagesRequest' response='beehealth.production.SendMessagesResponse' height='2000' width='2000' >
<sequence xend='200' yend='350' >
<call name='call ehbox send operation' target='ehbox generic' async='0' xpos='200' ypos='250' >
<request type='beehealth.production.SendMessagesRequest' >
<assign property="callrequest" value="request" action="set" />
</request>
<response type='beehealth.production.SendMessagesResponse' >
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
