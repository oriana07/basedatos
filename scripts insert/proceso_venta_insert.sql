# insercion de tablas

 #insert into tipo_usuario();
  INSERT INTO `proceso_venta1`.`tipo_usuario`(`usu_rol`,`per_estado`) VALUES('vendedor',1);
  INSERT INTO `proceso_venta1`.`tipo_usuario`(`usu_rol`,`per_estado`) VALUES('cajero',2);
  INSERT INTO `proceso_venta1`.`tipo_usuario`(`usu_rol`,`per_estado`) VALUES('administrador',3);
  
#insert into persona();
  INSERT INTO `proceso_venta1`.`persona`(`per_nombre`,`per_apellido`,`per_edad`,`per_direccion`,`per_estado`,`per_dni`) VALUES('rene jose','ruiz more',26,'jr.la arena 973',1,'47888804');
  INSERT INTO `proceso_venta1`.`persona`(`per_nombre`,`per_apellido`,`per_edad`,`per_direccion`,`per_estado`,`per_dni`) VALUES('briggeth','ramirez monteza',22,'ca. los geraneos 2',1,'56432189');INSERT INTO `proceso_venta1`.`cliente`

#insert into cliente();
 INSERT INTO `proceso_venta1`.`cliente`(`cli_razon_social`,`cli_tipo_cliente`,`cli_numero_ruc`,`cli_estado`,`cli_id_persona`) VALUES('IngenioSoft',2,'89765321567',1,1);

#insert into tipo_usuario();
 INSERT INTO `proceso_venta1`.`usuario`(`usu_login`,`usu_password`,`usu_id_persona`,`usu_tipo_usuario`,`usu_estado`) VALUES('brillo','123',2,1,1);