@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Listado de libros'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity Z_CDS_LIBROS_0891 as select from ztb_libros_0891
association [0..1] to Z_CDS_VENTAS_0891 as Ventas on $projection.IdLibro = Ventas.Id
association [0..*] to Z_CDS_CLN_LIB_0891 as Clientes on $projection.IdLibro = Clientes.Idlibro
association [0..1] to Z_CDS_CATEGO_0891 as Categorias on $projection.BiCateg = Categorias.BiCateg

{
    key id_libro as IdLibro,
    key bi_categ as BiCateg,
    titulo as Titulo,
    autor as Autor,
    editoral as Editoral,
    idioma as Idioma,
    paginas as Paginas,
  @Semantics.amount.currencyCode : 'moneda'
    precio as Precio,
    moneda as Moneda,
    formato as Formato,
    url as Url,
    Ventas.Ventas as Ventas,
    case
//    Si Ventas
    when Ventas.Ventas = 0 
    then '0'
//    Con ventas pocas
    when Ventas.Ventas between 1 and 4
    then '1'
//   Con ventas moderadas
   when Ventas.Ventas between 5 and 6
    then '2'
//    Con Muchas ventas
    else '3'
    end as estado,
    Clientes 
    
}
