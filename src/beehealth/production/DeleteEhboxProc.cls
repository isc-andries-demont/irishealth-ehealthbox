/// 
Class beehealth.production.DeleteEhboxProc Extends Ens.BusinessProcessBPL [ ClassType = persistent, ProcedureBlock ]
{

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='beehealth.production.DeleteMessagesRequest' response='beehealth.production.DeleteMessagesResponse' height='2000' width='2000' >
<sequence xend='200' yend='350' >
<call name='delete messages' target='ehbox generic' async='0' xpos='200' ypos='250' >
<request type='beehealth.production.DeleteMessagesRequest' >
<assign property="callrequest" value="request" action="set" />
</request>
<response type='beehealth.production.DeleteMessagesResponse' >
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
