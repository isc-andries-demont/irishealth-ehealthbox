/// 
Class beehealth.domain.EhboxRoutingProcess Extends Ens.BusinessProcessBPL [ ClassType = persistent, ProcedureBlock ]
{

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='beehealth.production.DownloadMessagesRequest' response='beehealth.production.DownloadMessagesResponse' height='2000' width='2000' >
<context>
<property name='DownloadMessagesResponse' type='beehealth.production.DownloadMessagesResponse' instantiate='0' />
<property name='MessageIndex' type='%Integer' instantiate='0' />
<property name='AttachmentIndex' type='%Integer' instantiate='0' />
<property name='TempMessage' type='beehealth.domain.EhealthboxMessage' instantiate='0' />
<property name='TempContent' type='beehealth.domain.Content' instantiate='0' />
<property name='TempFileName' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='1024' />
</parameters>
</property>
</context>
<sequence xend='200' yend='550' >
<trace name='trace start proces' value='"process ehbox export as file"' xpos='200' ypos='250' />
<call name='download ehbox' target='beehealth.production.DownloadEhboxProc' async='0' xpos='200' ypos='350' >
<request type='beehealth.production.DownloadMessagesRequest' >
<assign property="callrequest" value="request" action="set" />
</request>
<response type='beehealth.production.DownloadMessagesResponse' >
<assign property="context.DownloadMessagesResponse" value="callresponse" action="set" />
</response>
</call>
<foreach name='loop over the messages' property='context.DownloadMessagesResponse.EhealthBoxMessages' key='context.MessageIndex' xpos='200' ypos='450' xend='200' yend='450' >
<assign name="assign tempMessage" property="context.TempMessage" value="context.DownloadMessagesResponse.EhealthBoxMessages.GetAt(context.MessageIndex)" action="set" xpos='200' ypos='250' />
<foreach name='loop over the attachments' property='context.TempMessage.ContentList' key='context.AttachmentIndex' xpos='200' ypos='350' xend='200' yend='550' >
<assign name="assign tempContent" property="context.TempContent" value="context.TempMessage.ContentList.GetAt(context.AttachmentIndex)" action="set" xpos='200' ypos='250' />
<assign name="assign fileName" property="context.TempFileName" value="context.TempMessage.Sender.EhboxId_&quot;-&quot;_ $REPLACE($REPLACE($ZDT($H,8,1),&quot; &quot;,&quot;T&quot;),&quot;:&quot;,&quot;&quot;)_ &quot;-&quot; _ context.MessageIndex_ context.AttachmentIndex" action="set" xpos='200' ypos='350' >
<annotation><![CDATA[use ehboxid and the currenttime to create the filename]]></annotation>
</assign>
<call name='export content as file' target='export content as file' async='0' xpos='200' ypos='450' >
<request type='beehealth.production.ContentRequest' >
<assign property="callrequest.Content" value="context.TempContent" action="set" />
<assign property="callrequest.FileName" value="context.TempFileName" action="set" />
</request>
<response type='Ens.Response' />
</call>
</foreach>
</foreach>
</sequence>
</process>
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
