Class beehealth.production.Production Extends Ens.Production [ Not ProcedureBlock ]
{

XData ProductionDefinition
{
<Production Name="beehealth.production.Production" TestingEnabled="true" LogGeneralTraceEvents="true">
  <Description></Description>
  <ActorPoolSize>1</ActorPoolSize>
  <Item Name="beehealth.production.DownloadEhboxProc" Category="" ClassName="beehealth.production.DownloadEhboxProc" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
  </Item>
  <Item Name="ehbox generic" Category="" ClassName="EnsLib.PEX.BusinessOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="%remoteClassname">com.intersystems.behealth.production.ehbox.EhealthboxOperation</Setting>
    <Setting Target="Host" Name="%remoteSettings">keystoreLocation=NIHII-LABO=88889909 20200427-132009.acc-p12
environment=acc
credentialName=ehealthlabo</Setting>
    <Setting Target="Host" Name="%gatewayPort">10214</Setting>
  </Item>
  <Item Name="EhboxSendService" Category="" ClassName="beehealth.production.EhboxSendService" PoolSize="0" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="EhboxDownloadService" Category="" ClassName="beehealth.production.EhboxDownloadService" PoolSize="0" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="beehealth.domain.EhboxRoutingProcess" Category="" ClassName="beehealth.domain.EhboxRoutingProcess" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
  </Item>
  <Item Name="export content as file" Category="" ClassName="beehealth.production.EhboxContentFileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="ArchiveIO">1</Setting>
    <Setting Target="Adapter" Name="FilePath">C:\ehbox\download</Setting>
    <Setting Target="Host" Name="TransportType">DMA-LAB</Setting>
    <Setting Target="Host" Name="Extension">lab</Setting>
  </Item>
  <Item Name="beehealth.production.EhboxScheduledDownloadService" Category="" ClassName="beehealth.production.EhboxScheduledDownloadService" PoolSize="1" Enabled="false" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="CallInterval">300</Setting>
  </Item>
  <Item Name="beehealth.production.SendEhboxProc" Category="" ClassName="beehealth.production.SendEhboxProc" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="beehealth.production.DeleteEhboxProc" Category="" ClassName="beehealth.production.DeleteEhboxProc" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="EhboxDeleteService" Category="" ClassName="beehealth.production.EhboxDeleteService" PoolSize="0" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
</Production>
}

}
