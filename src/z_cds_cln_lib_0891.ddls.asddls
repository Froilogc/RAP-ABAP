@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes libros'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity Z_CDS_CLN_LIB_0891 as select from ztb_cln_lib_0891
 inner join ztb_cliente_0891 as Cliente on Cliente.id_cliente = ztb_cln_lib_0891.id_cliente 
{
   
    key Cliente.id_cliente as IdCliente,
    key ztb_cln_lib_0891.id_libro as Idlibro,
    Cliente.nombre as Nombre,
    Cliente.apellidos as Apellidos,
    Cliente.email as Email,
    Cliente.url as Url
    
    
}
