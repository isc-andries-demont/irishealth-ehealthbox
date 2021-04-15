Class beehealth.domain.EhealthboxMessage Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor)
{

Property MessageId As %String;

Property Sender As Addressee;

Property ReceiverList As list Of Addressee;

Property Patient As %String;

Property ContentList As list Of Content;

Property MetadataList As list Of Metadata;

Property IsEncrypted As %Boolean [ InitialExpression = 1, Required ];

Property IsImportant As %Boolean [ InitialExpression = 0, Required ];

Property UseReceiveAck As %Boolean [ InitialExpression = 0, Required ];

Property UsePublishAck As %Boolean [ InitialExpression = 0, Required ];

Property UseReadAck As %Boolean [ InitialExpression = 0, Required ];

Property PublicationDate As %DateTime;

Property DownloadDate As %DateTime;

Storage Default
{
<Data name="EhealthboxMessageState">
<Value name="1">
<Value>Sender</Value>
</Value>
<Value name="2">
<Value>ReceiverList</Value>
</Value>
<Value name="3">
<Value>Patient</Value>
</Value>
<Value name="4">
<Value>ContentList</Value>
</Value>
<Value name="5">
<Value>MetadataList</Value>
</Value>
<Value name="6">
<Value>IsEncrypted</Value>
</Value>
<Value name="7">
<Value>IsImportant</Value>
</Value>
<Value name="8">
<Value>UseReceiveAck</Value>
</Value>
<Value name="9">
<Value>UsePublishAck</Value>
</Value>
<Value name="10">
<Value>UseReadAck</Value>
</Value>
<Value name="11">
<Value>PublicationDate</Value>
</Value>
<Value name="12">
<Value>DownloadDate</Value>
</Value>
<Value name="13">
<Value>MessageId</Value>
</Value>
</Data>
<State>EhealthboxMessageState</State>
<StreamLocation>^beehealth72E2.EhealthboxM2341S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
