@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Ventas libros'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Z_CDS_VENTAS_0891 as select from ztb_libros_0891
left outer join ztb_cln_lib_0891 as ventas on ventas.id_libro = ztb_libros_0891.id_libro
{
    key ztb_libros_0891.id_libro as Id,
   
    count(distinct ventas.id_cliente) as Ventas
    
}
group by  ztb_libros_0891.id_libro
