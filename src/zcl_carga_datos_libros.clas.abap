CLASS zcl_carga_datos_libros DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_CARGA_DATOS_LIBROS IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
      DATA: lt_ACC_CAT   TYPE TABLE OF ztb_acc_cat_0891,
            lt_CATEGORIAS     TYPE TABLE OF ZTB_CATEGO_0891,
            lt_CLIENTES TYPE TABLE OF ZTB_CLIENTE_0891,
            lt_cLIENTE_LIBROS TYPE TABLE OF ZTB_CLN_LIB_0891,
            lt_LIBROS TYPE TABLE OF ZTB_LIBROS_0891.

** CATEGORIA ACCESOS**

 lt_ACC_CAT = VALUE #(
                       ( bi_cat = '1' tipo_acceso = '1' )
                       ( bi_cat = '2' tipo_acceso = '2' )
                       ( bi_cat = '3' tipo_acceso = '3' )
                       ( bi_cat = '4' tipo_acceso = '4' ) ).



    DELETE FROM ztb_acc_cat_0891.
    INSERT ztb_acc_cat_0891 FROM TABLE @lt_ACC_CAT.

    SELECT *
      FROM ztb_acc_cat_0891
      INTO TABLE @lt_ACC_CAT.

    out->write( sy-dbcnt ).
    out->write( 'ztb_acc_cat_0891 data inserted successfully!' ).

** CATEGORIAS**


lt_CATEGORIAS = VALUE #(
                        ( bi_categ  = '1'  descripcion = 'Categoria 1' )
                        ( bi_categ  = '2'  descripcion = 'Categoria 2' )
                        ( bi_categ  = '3'  descripcion = 'Categoria 3' )
                        ( bi_categ  = '4'  descripcion = 'Categoria 4' ) ).



    DELETE FROM ZTB_CATEGO_0891.
    INSERT ZTB_CATEGO_0891 FROM TABLE @lt_CATEGORIAS.

    SELECT *
      FROM ZTB_CATEGO_0891
      INTO TABLE @lt_CATEGORIAS.

    out->write( sy-dbcnt ).
    out->write( 'ZTB_CATEGO_08911 data inserted successfully!' ).



** Clientes**
lt_CLIENTES = VALUE #(
                        ( id_cliente  = '234567890123456789012345678901'  tipo_acceso = '1'   nombre = 'Antoni'  apellidos = 'Ramirez Perez'
                         email = 'an1@prueba1.com'  url = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBsbzMLn1z02F7TUU4ImU9rGiRTpGuKtK-jQ&s' )
                        ( id_cliente  = '234567890123456789012345678902'  tipo_acceso = '1'   nombre = 'Pedro'   apellidos = 'Guzman Martinez'
                        email = 'an2@prueba1.com' url = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBsbzMLn1z02F7TUU4ImU9rGiRTpGuKtK-jQ&s'  )
                        ( id_cliente  = '234567890123456789012345678903'  tipo_acceso = '3'   nombre = 'Juan'   apellidos = 'Gomez Castillo'
                        email = 'an3@prueba1.com'  url = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBsbzMLn1z02F7TUU4ImU9rGiRTpGuKtK-jQ&s'  )
                        ( id_cliente  = '234567890123456789012345678904'  tipo_acceso = '2'   nombre = 'Jean'   apellidos = 'Perez Rodriguez'
                         email = 'an4@prueba1.com'  url = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBsbzMLn1z02F7TUU4ImU9rGiRTpGuKtK-jQ&s'  ) ).



    DELETE FROM ZTB_CLIENTE_0891.
    INSERT ZTB_CLIENTE_0891 FROM TABLE @lt_CLIENTES.

    SELECT *
      FROM ZTB_CLIENTE_0891
      INTO TABLE @lt_CLIENTES.

    out->write( sy-dbcnt ).
    out->write( 'ZTB_CLIENTE_0891 data inserted successfully!' ).


**lt_LIBROS**

lt_LIBROS = VALUE #(
                        ( id_libro  = '1234567890'   bi_categ = '1'    titulo  = 'El principito'  autor = 'Desconocido'
                          editoral  = 'Editoral universal'  idioma = 'S' paginas = '200'  precio = '23.2' moneda = 'USD' formato = 'A'  url =
'https://images.vexels.com/media/users/3/255333/isolated/preview/1ab1c05d2e8b34c0b0688b0de27fa540-dibujos-animados-de-libros-escolares.png' )
                            ( id_libro  = '1234567891'   bi_categ = '1'    titulo  = 'El Monje'  autor = 'Ramirez'
                          editoral  = 'Editoral universal'  idioma = 'E' paginas = '1000'  precio = '1000' moneda = 'DOP' formato = 'B'  url =
'https://images.vexels.com/media/users/3/255333/isolated/preview/1ab1c05d2e8b34c0b0688b0de27fa540-dibujos-animados-de-libros-escolares.png' )
                            ( id_libro  = '1234567892'   bi_categ = '2'    titulo  = 'El Millonario'  autor = 'Ramirez Perez'
                          editoral  = 'Editoral universal' idioma = 'S' paginas = '56'  precio = '300' moneda = 'USD' formato = 'A'  url =
'https://images.vexels.com/media/users/3/255333/isolated/preview/1ab1c05d2e8b34c0b0688b0de27fa540-dibujos-animados-de-libros-escolares.png' )
                            ( id_libro  = '1234567893'   bi_categ = '4'    titulo  = 'Don Quijote'  autor = 'Tanto'
                          editoral  = 'Editoral'  idioma = 'E' paginas = '487'  precio = '200' moneda = 'USD' formato = 'T'  url =
'https://images.vexels.com/media/users/3/255333/isolated/preview/1ab1c05d2e8b34c0b0688b0de27fa540-dibujos-animados-de-libros-escolares.png' )
                          ( id_libro  = '1234567894'   bi_categ = '4'    titulo  = 'El Gavilan'  autor = 'Tantost'
                          editoral  = 'Editoral'  idioma = 'E' paginas = '48'  precio = '200' moneda = 'USD' formato = 'T'  url =
'https://images.vexels.com/media/users/3/255333/isolated/preview/1ab1c05d2e8b34c0b0688b0de27fa540-dibujos-animados-de-libros-escolares.png' ) ).



    DELETE FROM ZTB_LIBROS_0891.
    INSERT ZTB_LIBROS_0891 FROM TABLE @lt_LIBROS.

    SELECT *
      FROM ZTB_LIBROS_0891
      INTO TABLE @lt_LIBROS.

    out->write( sy-dbcnt ).
    out->write( 'ZTB_LIBROS_0891 data inserted successfully!' ).

*Clientes libros


lt_cLIENTE_LIBROS = VALUE #(
                           ( id_cliente  = '234567890123456789012345678901'   id_libro = '1234567890'  )
                           ( id_cliente  = '234567890123456789012345678901'   id_libro = '1234567891'  )
                           ( id_cliente  = '234567890123456789012345678902'   id_libro = '1234567890'  )
                           ( id_cliente  = '234567890123456789012345678902'   id_libro = '1234567893'  )
                           ( id_cliente  = '234567890123456789012345678904'   id_libro = '1234567892'  )
                           ( id_cliente  = '234567890123456789012345678904'   id_libro = '1234567890'  )
                           ( id_cliente  = '234567890123456789012345678904'   id_libro = '1234567893'  )
                           ( id_cliente  = '234567890123456789012345678904'   id_libro = '1234567891'  )
                           ( id_cliente  = '234567890123456789012345678903'   id_libro = '1234567890'  )  ).




    DELETE FROM ZTB_CLN_LIB_0891.
    INSERT ZTB_CLN_LIB_0891 FROM TABLE @lt_cLIENTE_LIBROS.

    SELECT *
      FROM ZTB_CLN_LIB_0891
      INTO TABLE @lt_cLIENTE_LIBROS.

    out->write( sy-dbcnt ).
    out->write( 'ZTB_CLN_LIB_0891 data inserted successfully!' ).

  ENDMETHOD.
ENDCLASS.
