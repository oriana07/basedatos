        ## ventaaaaaaaaa
   
   DROP TABLE IF EXISTS `venta`; 
   CREATE TABLE `venta` (
  `id_venta` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `ven_id_usuario_venta` int(11),
  `ven_id_cliente` int(11),
  `ven_n_pedido` varchar(45) DEFAULT NULL,
  `ven_igv` double(5,2) DEFAULT NULL ,
  `ven_estado` int(1) DEFAULT NULL COMMENT '0: registro eliminado\n1: registro activado\n',
  FOREIGN KEY (`ven_id_cliente`) REFERENCES `cliente` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
 );
 
 DROP TABLE IF EXISTS `detalle_venta`;  
 CREATE TABLE `detalle_venta` (
  `id_detalle_venta` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `de_ve_id_venta` int(11),
  `de_ve_id_usuario_venta` int(11),
  `de_ve_fecha` date,
  `de_ve_hora` time,
  `de_ve_total` double(5,2) DEFAULT NULL ,
  `de_ve_estado` int(1) DEFAULT NULL COMMENT '0: registro eliminado\n1: registro activado\n',
   FOREIGN KEY (`de_ve_id_venta`) REFERENCES `venta` (`id_venta`) ON DELETE NO ACTION ON UPDATE NO ACTION
   );
   
    DROP TABLE IF EXISTS `producto`;  
CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `pro_nombre` varchar(45) DEFAULT NULL,
  `pro_precio` double(5,2) DEFAULT NULL ,
  `pro_stock` int(3) DEFAULT NULL,
  `pro_estado` int(1) DEFAULT NULL COMMENT '0: registro eliminado\n1: registro activado\n'
   );
   
   
   DROP TABLE IF EXISTS `venta_producto`; 
      CREATE TABLE `venta_producto` (
  `id_venta_producto` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `ve_pro_id_producto` int(11),
  `ve_pro_id_venta` int(11),
  `ve_pro_cantidad` int(2) DEFAULT NULL ,
  `ve_pro_sub_total` double(5,2) DEFAULT NULL,
  `ve_pro_estado` int(1) DEFAULT NULL COMMENT '0: registro eliminado\n1: registro activado\n',
  FOREIGN KEY (`ve_pro_id_producto`) REFERENCES `producto` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY (`ve_pro_id_venta`) REFERENCES `venta` (`id_venta`) ON DELETE NO ACTION ON UPDATE NO ACTION
   );
 
 

   
 
   
 DROP TABLE IF EXISTS `usuario_venta`;   
 CREATE TABLE `usuario_venta` (
  `id_usuario_venta` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `us_ve_id_usuario` int(11),
  `us_ve_id_detalle_venta` int(11),
  ` us_ve_estado` int(1) DEFAULT NULL COMMENT '0: registro eliminado\n1: registro activado\n',
  FOREIGN KEY (`us_ve_id_detalle_venta`) REFERENCES `detalle_venta` (`id_detalle_venta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY (`us_ve_id_usuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
 );
  
 
   

   
 
   
   
   
   