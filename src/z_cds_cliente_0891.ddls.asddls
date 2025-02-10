@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity Z_CDS_CLIENTE_0891 as select from ztb_cliente_0891
{
    key id_cliente as IdCliente,
    key tipo_acceso as TipoAcceso,
    nombre as Nombre,
    apellidos as Apellidos,
    email as Email,
    url as Url
}
