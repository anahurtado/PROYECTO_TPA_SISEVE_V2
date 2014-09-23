use [kataleyabd]
go

insert Usuario values ('USUPRUEBA','123456','0','2016-01-01','12345678','USUARIO','PRUEBA','TPA','A',GETDATE(),'1')
insert Usuario values ('AHURTADO','123456','0','2016-01-01','44238056','HURTADO','MAYHUAY','ANA CECILIA','A',GETDATE(),'1')
insert Usuario values ('ARAMOS','123456','0','2016-01-01','43254621','RAMOS','BUSTAMANTE','ANDY VICTOR','A',GETDATE(),'1')

INSERT INTO tipo_catalogo(nombre, estado, usureg, fecreg) VALUES ('Tipo Documento Identidad', 'A', 1, null);
INSERT INTO catalogo(idTipocatalogo, nombre, abrev, estado, usureg, fecreg) VALUES (1, 'Documento Nacional de Identidad', 'DNI', 'A', 1, null);
INSERT INTO catalogo(idTipocatalogo, nombre, abrev, estado, usureg, fecreg) VALUES (1, 'Registro Unico del Contribuyente', 'RUC', 'A', 1, null);

INSERT INTO tipo_catalogo(nombre, estado, usureg, fecreg) VALUES ('Tipo Documento Identidad', 'A', 1, null);
INSERT INTO catalogo(idTipocatalogo, nombre, abrev, estado, usureg, fecreg) VALUES ( 2, 'Auto', NULL, 'A', 1, NULL);
INSERT INTO catalogo(idTipocatalogo, nombre, abrev, estado, usureg, fecreg) VALUES ( 2, 'Baranda', NULL, 'A', 1, NULL);
INSERT INTO catalogo(idTipocatalogo, nombre, abrev, estado, usureg, fecreg) VALUES ( 2, 'Rural', NULL, 'A', 1, NULL);
INSERT INTO catalogo(idTipocatalogo, nombre, abrev, estado, usureg, fecreg) VALUES ( 2, 'Station Wagon', NULL, 'A', 1, NULL);
INSERT INTO catalogo(idTipocatalogo, nombre, abrev, estado, usureg, fecreg) VALUES ( 2, 'Todos', NULL, 'A', 1, NULL);


INSERT INTO tipo_catalogo(nombre, estado, usureg, fecreg) VALUES ('Categoria Vehiculo', 'A', 1, null);
INSERT INTO catalogo(idTipocatalogo, nombre, abrev, estado, usureg, fecreg) VALUES (3, 'Bajo Riesgo I', 'BRI', 'A', 1, null);
INSERT INTO catalogo(idTipocatalogo, nombre, abrev, estado, usureg, fecreg) VALUES (3, 'Alto Riesgo I', 'ARI', 'A', 1, null);

INSERT INTO tipo_catalogo(nombre, estado, usureg, fecreg) VALUES ('Grupo Impuesto', 'A', 1, null);
INSERT INTO catalogo(idTipocatalogo, nombre, abrev, estado, usureg, fecreg) VALUES (4, 'Impuesto', NULL, 'A', 1, null);
INSERT INTO catalogo(idTipocatalogo, nombre, abrev, estado, usureg, fecreg) VALUES (4, 'Derecho Emision', NULL, 'A', 1,null);

INSERT INTO tipo_catalogo(nombre, estado, usureg, fecreg) VALUES ('Tipo Timon', 'A', 1,null);
INSERT INTO catalogo(idTipocatalogo, nombre, abrev, estado, usureg, fecreg) VALUES (5, 'Original', 'O', 'A', 1, null);
INSERT INTO catalogo(idTipocatalogo, nombre, abrev, estado, usureg, fecreg) VALUES (5, 'Cambiado', 'C', 'A', 1, null);

INSERT INTO tipo_catalogo(nombre, estado, usureg, fecreg) VALUES ('Ramo', 'A', 1, null);
INSERT INTO catalogo(idTipocatalogo, nombre, abrev, estado, usureg, fecreg) VALUES (6, 'Vehicular', NULL, 'A', 1, null);

INSERT INTO tipo_catalogo(nombre, estado, usureg, fecreg) VALUES ('Uso Vehiculo', 'A', 1, null);
INSERT INTO catalogo(idTipocatalogo, nombre, abrev, estado, usureg, fecreg) VALUES (7, 'Particular', NULL, 'A', 1, null);

INSERT INTO tipo_catalogo(nombre, estado, usureg, fecreg) VALUES ('Clase Vehiculo', 'A', 1, null);
INSERT INTO catalogo(idTipocatalogo, nombre, abrev, estado, usureg, fecreg) VALUES (8, 'Automovil', NULL, 'A', 1, null);
INSERT INTO catalogo(idTipocatalogo, nombre, abrev, estado, usureg, fecreg) VALUES (8, 'Camion', NULL, 'A', 1, null);
INSERT INTO catalogo(idTipocatalogo, nombre, abrev, estado, usureg, fecreg) VALUES (8, 'Camioneta', NULL, 'A', 1, null);

INSERT INTO tipo_catalogo(nombre, estado, usureg, fecreg) VALUES ('Tipo Impuesto', 'A', 1, null);
INSERT INTO catalogo(idTipocatalogo, nombre, abrev, estado, usureg, fecreg) VALUES (9, 'IGV', NULL, 'A', 1, null);
INSERT INTO catalogo(idTipocatalogo, nombre, abrev, estado, usureg, fecreg) VALUES (9, 'DE', NULL, 'A', 1, null);

INSERT INTO tipo_catalogo(nombre, estado, usureg, fecreg) VALUES ('Regla de Tarifa', 'A', 1, null);
INSERT INTO catalogo(idTipocatalogo, nombre, abrev, estado, usureg, fecreg) VALUES (10, 'Prima fija', NULL, 'A', 1, null);
INSERT INTO catalogo(idTipocatalogo, nombre, abrev, estado, usureg, fecreg) VALUES (10, 'Prima por tasa', NULL, 'A', 1, null);


--CIA_SEG
INSERT INTO cia_seg (nombre,estado,usureg,fecreg) VALUES ('Rimac Seguros','A',1,NULL);
INSERT INTO cia_seg (nombre,estado,usureg,fecreg) VALUES ('Pacifico Seguros','A',1,NULL);
INSERT INTO cia_seg (nombre,estado,usureg,fecreg) VALUES ('Mapfre Peru','A',1,NULL);

--CANAL
INSERT INTO canal (nombre,estado,usureg,fecreg) VALUES ('Web','A',1,null);
INSERT INTO canal (nombre,estado,usureg,fecreg) VALUES ('Tienda','A',1,null);
INSERT INTO canal (nombre,estado,usureg,fecreg) VALUES ('Feria','A',1,null);


--COBERTURA
INSERT INTO cobertura (nombre,abrev,idCiaseg,estado,usureg,fecreg) VALUES ('Daño Propio','','1','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Responsabilidad Civil','','1','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Responsabilidad Civil de Ocupantes','','1','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Responsabilidad Civil por Ausencia de Control para vehiculos de la empresa o endosadas','','1','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Accidentes de Ocupantes - Muerte / Invalidez Permanente','','1','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Accidentes de Ocupantes - Gastos de Curación','','1','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Accidentes de Ocupantes - Gastos de Sepelio','','1','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Accidentes de Ocupantes - Cirugía Estética','','1','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Accesorios Musicales','','1','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Ausencia de control','','1','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Riesgos de la Naturaleza, incluyendo Maremoto, Terremoto, Huayco, Lluvia, Inundación, Granizo','','1','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Huelgas, Conmoción Civil, Daño Malicioso, Vandalismo, Tumultos Populares, Sabotaje y Terrorismo','','1','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Rehabilitación automática se suma asegurada','','1','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Cobertura automática para nuevas adquisiciones y/o vehículos usados por 30 días','','1','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Uso de vías no autorizadas','','1','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Robo por Asalto de llaves electrónicas','','1','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Grúa por accidente','','1','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Ambulancia por accidente','','1','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Procuraduría','','1','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Auxilio mecánico','','1','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Vehículo de reemplazo (Choque, Vuelco, Incendio)','','1','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Chofer de Reemplazo','','1','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Gastos de Búsqueda, Rescate y/o Traslado','','1','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Gastos de Defensa Jurídica y Penal','','1','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Daño Propio','','2','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Responsabilidad Civil','','2','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Responsabilidad Civil de Ocupantes','','2','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Responsabilidad Civil por Ausencia de Control para vehículos de la empresa o endosadas','','2','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Accidentes de Ocupantes - Muerte / Invalidez Permanente','','2','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Accidentes de Ocupantes - Gastos de Curación','','2','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Accidentes de Ocupantes - Gastos de Sepelio','','2','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Accidentes de Ocupantes - Cirugía Estética','','2','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Accesorios Musicales','','2','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Ausencia de control','','2','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Riesgos de la Naturaleza, incluyendo Maremoto, Terremoto, Huayco, Lluvia, Inundación, Granizo','','2','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Huelgas, Conmoción Civil, Daño Malicioso, Vandalismo, Tumultos Populares, Sabotaje y Terrorismo','','2','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Rehabilitación automática se suma asegurada','','2','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Cobertura automática para nuevas adquisiciones y/o vehículos usados por 30 días','','2','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Uso de vías no autorizadas','','2','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Robo por Asalto de llaves electrónicas','','2','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Grúa por accidente','','2','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Ambulancia por accidente','','2','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Procuraduría','','2','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Auxilio mecánico','','2','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Vehículo de reemplazo (Choque, Vuelco, Incendio)','','2','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Chofer de Reemplazo','','2','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Gastos de Búsqueda, Rescate y/o Traslado','','2','A',1,null);
INSERT INTO cobertura (nombre,abrev,idCiaSeg,estado,usureg,fecreg) VALUES ('Gastos de Defensa Jurídica y Penal','','2','A',1,null);


/*
* =========================
* CONFIGURACION DE PRODUCTO
* =========================
*/

--PRODUCTO
INSERT INTO producto (nombre,descripcion,idCiaSeg,idRamo,moneda,diasVigencia,marcaderemi,marcaimpuesto,diascarencia,diasgracia,estado,usureg,fecreg) VALUES ('Corporativo','Corporativo Autos','1','14','DOL','365','A','A',15,15,'A',1,null);
INSERT INTO producto (nombre,descripcion,idCiaSeg,idRamo,moneda,diasvigencia,marcaderemi,marcaimpuesto,diascarencia,diasgracia,estado,usureg,fecreg) VALUES ('Inka','Inka autos','2','14','DOL','365','A','A',15,15,'A',1,null);
INSERT INTO producto (nombre,descripcion,idCiaSeg,idRamo,moneda,diasvigencia,marcaderemi,marcaimpuesto,diascarencia,diasgracia,estado,usureg,fecreg) VALUES ('Limautos','Todo autos','3','14','DOL','365','A','A',15,15,'A',1,null);
INSERT INTO producto (nombre,descripcion,idCiaSeg,idRamo,moneda,diasvigencia,marcaderemi,marcaimpuesto,diascarencia,diasgracia,estado,usureg,fecreg) VALUES ('Corporativo 2','Corporativo Autos','1','14','DOL','365','A','A',15,15,'A',1,null);


--PLAN
INSERT INTO [PLAN] (nombre,descripcion,idProducto,tipovigencia,sumaasegmin,sumaasegmax,estado,usureg,fecreg) VALUES ('Corporativo','Corporativo','1','A',3000,60000,'A',1,null);
INSERT INTO [PLAN] (nombre,descripcion,idProducto,tipovigencia,sumaasegmin,sumaasegmax,estado,usureg,fecreg) VALUES ('Todo Riesgo','todo riesgo','2','A',4000,80000,'A',1,null);
INSERT INTO [PLAN] (nombre,descripcion,idProducto,tipovigencia,sumaasegmin,sumaasegmax,estado,usureg,fecreg) VALUES ('Inka Seguro','Corporativo','3','A',3500,70000,'A',1,null);


--GRUPO VEHICULO
INSERT INTO grupo_vehiculo(idPlan, idClaseveh, idTipotimon, idCategoriaveh, idUsoveh,grupoveh, estado, usureg, fecreg) VALUES (1,'16', '12','8','15','1','A',1,null);
INSERT INTO grupo_vehiculo(idPlan, idClaseveh, idTipotimon, idCategoriaveh, idUsoveh,grupoveh, estado, usureg, fecreg) VALUES (1,'18', '12','8','15','1','A',1,null);
INSERT INTO grupo_vehiculo(idPlan, idClaseveh, idTipotimon, idCategoriaveh, idUsoveh,grupoveh, estado, usureg, fecreg) VALUES (1,'18', '12','9','15','2','A',1,null);
INSERT INTO grupo_vehiculo(idPlan, idClaseveh, idTipotimon, idCategoriaveh, idUsoveh,grupoveh, estado, usureg, fecreg) VALUES (2,'16', '12','8','15','1','A',1,null);
INSERT INTO grupo_vehiculo(idPlan, idClaseveh, idTipotimon, idCategoriaveh, idUsoveh,grupoveh, estado, usureg, fecreg) VALUES (3,'18', '12','9','15','2','A',1,null);

--sp_help COBERTURA_PLAN
--COBERTURA POR PLAN
INSERT INTO cobertura_plan (idPlan,idCobertura,marcaPrincipal,idReglaTarifa,sumaAsegurada,deducible,descripcion,orden,estado,usureg,fecreg) VALUES (1,1,'S',22,1000,'Hasta Valor Comercial','Hasta Valor Comercial',1,'A',1,null);
INSERT INTO cobertura_plan (idPlan,idCobertura,marcaPrincipal,idReglaTarifa,sumaAsegurada,deducible,descripcion,orden,estado,usureg,fecreg) VALUES (1,2,'N',22,1000,'Hasta Valor Comercial','Hasta Valor Comercial',1,'A',1,null);
INSERT INTO cobertura_plan (idPlan,idCobertura,marcaPrincipal,idReglaTarifa,sumaAsegurada,deducible,descripcion,orden,estado,usureg,fecreg) VALUES (1,3,'N',22,1000,'Hasta Valor Comercial','Hasta Valor Comercial',1,'A',1,null);
INSERT INTO cobertura_plan (idPlan,idCobertura,marcaPrincipal,idReglaTarifa,sumaAsegurada,deducible,descripcion,orden,estado,usureg,fecreg) VALUES (1,4,'N',22,1000,'Hasta Valor Comercial','Hasta Valor Comercial',1,'A',1,null);
INSERT INTO cobertura_plan (idPlan,idCobertura,marcaPrincipal,idReglaTarifa,sumaAsegurada,deducible,descripcion,orden,estado,usureg,fecreg) VALUES (1,5,'N',22,1000,'Hasta Valor Comercial','Hasta Valor Comercial',1,'A',1,null);
INSERT INTO cobertura_plan (idPlan,idCobertura,marcaPrincipal,idReglaTarifa,sumaAsegurada,deducible,descripcion,orden,estado,usureg,fecreg) VALUES (1,6,'N',22,1000,'Hasta Valor Comercial','Hasta Valor Comercial',1,'A',1,null);
INSERT INTO cobertura_plan (idPlan,idCobertura,marcaPrincipal,idReglaTarifa,sumaAsegurada,deducible,descripcion,orden,estado,usureg,fecreg) VALUES (1,7,'N',22,1000,'Hasta Valor Comercial','Hasta Valor Comercial',1,'A',1,null);
INSERT INTO cobertura_plan (idPlan,idCobertura,marcaPrincipal,idReglaTarifa,sumaAsegurada,deducible,descripcion,orden,estado,usureg,fecreg) VALUES (1,8,'N',22,1000,'Hasta Valor Comercial','Hasta Valor Comercial',1,'A',1,null);
INSERT INTO cobertura_plan (idPlan,idCobertura,marcaPrincipal,idReglaTarifa,sumaAsegurada,deducible,descripcion,orden,estado,usureg,fecreg) VALUES (1,9,'N',22,1000,'Hasta Valor Comercial','Hasta Valor Comercial',1,'A',1,null);
INSERT INTO cobertura_plan (idPlan,idCobertura,marcaPrincipal,idReglaTarifa,sumaAsegurada,deducible,descripcion,orden,estado,usureg,fecreg) VALUES (1,10,'N',22,1000,'Hasta Valor Comercial','Hasta Valor Comercial',1,'A',1,null);
INSERT INTO cobertura_plan (idPlan,idCobertura,marcaPrincipal,idReglaTarifa,sumaAsegurada,deducible,descripcion,orden,estado,usureg,fecreg) VALUES (1,11,'N',22,1000,'Hasta Valor Comercial','Hasta Valor Comercial',1,'A',1,null);
INSERT INTO cobertura_plan (idPlan,idCobertura,marcaPrincipal,idReglaTarifa,sumaAsegurada,deducible,descripcion,orden,estado,usureg,fecreg) VALUES (1,12,'N',22,1000,'Hasta Valor Comercial','Hasta Valor Comercial',1,'A',1,null);
INSERT INTO cobertura_plan (idPlan,idCobertura,marcaPrincipal,idReglaTarifa,sumaAsegurada,deducible,descripcion,orden,estado,usureg,fecreg) VALUES (1,13,'N',22,1000,'Hasta Valor Comercial','Hasta Valor Comercial',1,'A',1,null);
INSERT INTO cobertura_plan (idPlan,idCobertura,marcaPrincipal,idReglaTarifa,sumaAsegurada,deducible,descripcion,orden,estado,usureg,fecreg) VALUES (1,14,'N',22,1000,'Hasta Valor Comercial','Hasta Valor Comercial',1,'A',1,null);
INSERT INTO cobertura_plan (idPlan,idCobertura,marcaPrincipal,idReglaTarifa,sumaAsegurada,deducible,descripcion,orden,estado,usureg,fecreg) VALUES (1,15,'N',22,1000,'Hasta Valor Comercial','Hasta Valor Comercial',1,'A',1,null);
INSERT INTO cobertura_plan (idPlan,idCobertura,marcaPrincipal,idReglaTarifa,sumaAsegurada,deducible,descripcion,orden,estado,usureg,fecreg) VALUES (1,16,'N',22,1000,'Hasta Valor Comercial','Hasta Valor Comercial',1,'A',1,null);
INSERT INTO cobertura_plan (idPlan,idCobertura,marcaPrincipal,idReglaTarifa,sumaAsegurada,deducible,descripcion,orden,estado,usureg,fecreg) VALUES (1,17,'N',22,1000,'Hasta Valor Comercial','Hasta Valor Comercial',1,'A',1,null);
INSERT INTO cobertura_plan (idPlan,idCobertura,marcaPrincipal,idReglaTarifa,sumaAsegurada,deducible,descripcion,orden,estado,usureg,fecreg) VALUES (1,18,'N',22,1000,'Hasta Valor Comercial','Hasta Valor Comercial',1,'A',1,null);
INSERT INTO cobertura_plan (idPlan,idCobertura,marcaPrincipal,idReglaTarifa,sumaAsegurada,deducible,descripcion,orden,estado,usureg,fecreg) VALUES (1,19,'N',22,1000,'Hasta Valor Comercial','Hasta Valor Comercial',1,'A',1,null);
INSERT INTO cobertura_plan (idPlan,idCobertura,marcaPrincipal,idReglaTarifa,sumaAsegurada,deducible,descripcion,orden,estado,usureg,fecreg) VALUES (1,21,'N',22,1000,'Hasta Valor Comercial','Hasta Valor Comercial',1,'A',1,null);
INSERT INTO cobertura_plan (idPlan,idCobertura,marcaPrincipal,idReglaTarifa,sumaAsegurada,deducible,descripcion,orden,estado,usureg,fecreg) VALUES (1,22,'N',22,1000,'Hasta Valor Comercial','Hasta Valor Comercial',1,'A',1,null);
INSERT INTO cobertura_plan (idPlan,idCobertura,marcaPrincipal,idReglaTarifa,sumaAsegurada,deducible,descripcion,orden,estado,usureg,fecreg) VALUES (1,23,'N',22,1000,'Hasta Valor Comercial','Hasta Valor Comercial',1,'A',1,null);
INSERT INTO cobertura_plan (idPlan,idCobertura,marcaPrincipal,idReglaTarifa,sumaAsegurada,deducible,descripcion,orden,estado,usureg,fecreg) VALUES (1,24,'N',22,1000,'Hasta Valor Comercial','Hasta Valor Comercial',1,'A',1,null);
INSERT INTO cobertura_plan (idPlan,idCobertura,marcaPrincipal,idReglaTarifa,sumaAsegurada,deducible,descripcion,orden,estado,usureg,fecreg) VALUES (2,1,'S',22,1000,'Hasta Valor Comercial','Hasta Valor Comercial',1,'A',1,null);
INSERT INTO cobertura_plan (idPlan,idCobertura,marcaPrincipal,idReglaTarifa,sumaAsegurada,deducible,descripcion,orden,estado,usureg,fecreg) VALUES (2,2,'N',22,1000,'Hasta Valor Comercial','Hasta Valor Comercial',1,'A',1,null);
INSERT INTO cobertura_plan (idPlan,idCobertura,marcaPrincipal,idReglaTarifa,sumaAsegurada,deducible,descripcion,orden,estado,usureg,fecreg) VALUES (2,3,'N',22,1000,'Hasta Valor Comercial','Hasta Valor Comercial',1,'A',1,null);
INSERT INTO cobertura_plan (idPlan,idCobertura,marcaPrincipal,idReglaTarifa,sumaAsegurada,deducible,descripcion,orden,estado,usureg,fecreg) VALUES (2,4,'N',22,1000,'Hasta Valor Comercial','Hasta Valor Comercial',1,'A',1,null);
INSERT INTO cobertura_plan (idPlan,idCobertura,marcaPrincipal,idReglaTarifa,sumaAsegurada,deducible,descripcion,orden,estado,usureg,fecreg) VALUES (2,5,'N',22,1000,'Hasta Valor Comercial','Hasta Valor Comercial',1,'A',1,null);
INSERT INTO cobertura_plan (idPlan,idCobertura,marcaPrincipal,idReglaTarifa,sumaAsegurada,deducible,descripcion,orden,estado,usureg,fecreg) VALUES (2,6,'N',22,1000,'Hasta Valor Comercial','Hasta Valor Comercial',1,'A',1,null);
INSERT INTO cobertura_plan (idPlan,idCobertura,marcaPrincipal,idReglaTarifa,sumaAsegurada,deducible,descripcion,orden,estado,usureg,fecreg) VALUES (2,7,'N',22,1000,'Hasta Valor Comercial','Hasta Valor Comercial',1,'A',1,null);
INSERT INTO cobertura_plan (idPlan,idCobertura,marcaPrincipal,idReglaTarifa,sumaAsegurada,deducible,descripcion,orden,estado,usureg,fecreg) VALUES (2,8,'N',22,1000,'Hasta Valor Comercial','Hasta Valor Comercial',1,'A',1,null);
INSERT INTO cobertura_plan (idPlan,idCobertura,marcaPrincipal,idReglaTarifa,sumaAsegurada,deducible,descripcion,orden,estado,usureg,fecreg) VALUES (2,9,'N',22,1000,'Hasta Valor Comercial','Hasta Valor Comercial',1,'A',1,null);

--TARIFA
INSERT INTO tarifa (idPlan,idCobertura,rangoIni,rangoFin,grupo1,grupo2,grupo3,tipoValor,valor,estado,usureg,fecreg) VALUES (1,1,0,0,'1',null,null,'T',0.038,'A',1,null);
INSERT INTO tarifa (idPlan,idCobertura,rangoIni,rangoFin,grupo1,grupo2,grupo3,tipoValor,valor,estado,usureg,fecreg) VALUES (1,1,1,1,'1',null,null,'T',0.039,'A',1,null);
INSERT INTO tarifa (idPlan,idCobertura,rangoIni,rangoFin,grupo1,grupo2,grupo3,tipoValor,valor,estado,usureg,fecreg) VALUES (1,1,2,2,'1',null,null,'T',0.0405,'A',1,null);
INSERT INTO tarifa (idPlan,idCobertura,rangoIni,rangoFin,grupo1,grupo2,grupo3,tipoValor,valor,estado,usureg,fecreg) VALUES (1,1,3,3,'1',null,null,'T',0.0425,'A',1,null);
INSERT INTO tarifa (idPlan,idCobertura,rangoIni,rangoFin,grupo1,grupo2,grupo3,tipoValor,valor,estado,usureg,fecreg) VALUES (1,1,4,4,'1',null,null,'T',0.0450,'A',1,null);
INSERT INTO tarifa (idPlan,idCobertura,rangoIni,rangoFin,grupo1,grupo2,grupo3,tipoValor,valor,estado,usureg,fecreg) VALUES (1,1,5,5,'1',null,null,'T',0.0475,'A',1,null);
INSERT INTO tarifa (idPlan,idCobertura,rangoIni,rangoFin,grupo1,grupo2,grupo3,tipoValor,valor,estado,usureg,fecreg) VALUES (1,1,6,6,'1',null,null,'T',0.0500,'A',1,null);
INSERT INTO tarifa (idPlan,idCobertura,rangoIni,rangoFin,grupo1,grupo2,grupo3,tipoValor,valor,estado,usureg,fecreg) VALUES (1,1,7,7,'1',null,null,'T',0.0530,'A',1,null);
INSERT INTO tarifa (idPlan,idCobertura,rangoIni,rangoFin,grupo1,grupo2,grupo3,tipoValor,valor,estado,usureg,fecreg) VALUES (1,1,8,8,'1',null,null,'T',0.0570,'A',1,null);
INSERT INTO tarifa (idPlan,idCobertura,rangoIni,rangoFin,grupo1,grupo2,grupo3,tipoValor,valor,estado,usureg,fecreg) VALUES (1,1,9,9,'1',null,null,'T',0.0600,'A',1,null);
INSERT INTO tarifa (idPlan,idCobertura,rangoIni,rangoFin,grupo1,grupo2,grupo3,tipoValor,valor,estado,usureg,fecreg) VALUES (1,1,10,10,'1',null,null,'T',0.0630,'A',1,null);
INSERT INTO tarifa (idPlan,idCobertura,rangoIni,rangoFin,grupo1,grupo2,grupo3,tipoValor,valor,estado,usureg,fecreg) VALUES (1,1,11,11,'1',null,null,'T',0.0660,'A',1,null);
INSERT INTO tarifa (idPlan,idCobertura,rangoIni,rangoFin,grupo1,grupo2,grupo3,tipoValor,valor,estado,usureg,fecreg) VALUES (1,1,12,12,'1',null,null,'T',0.0660,'A',1,null);
INSERT INTO tarifa (idPlan,idCobertura,rangoIni,rangoFin,grupo1,grupo2,grupo3,tipoValor,valor,estado,usureg,fecreg) VALUES (1,1,13,15,'1',null,null,'T',0.0660,'A',1,null);
INSERT INTO tarifa (idPlan,idCobertura,rangoIni,rangoFin,grupo1,grupo2,grupo3,tipoValor,valor,estado,usureg,fecreg) VALUES (1,1,0,0,'2',null,null,'T',0.0321,'A',1,null);
INSERT INTO tarifa (idPlan,idCobertura,rangoIni,rangoFin,grupo1,grupo2,grupo3,tipoValor,valor,estado,usureg,fecreg) VALUES (1,1,1,1,'2',null,null,'T',0.0338,'A',1,null);
INSERT INTO tarifa (idPlan,idCobertura,rangoIni,rangoFin,grupo1,grupo2,grupo3,tipoValor,valor,estado,usureg,fecreg) VALUES (1,1,2,2,'2',null,null,'T',0.0352,'A',1,null);
INSERT INTO tarifa (idPlan,idCobertura,rangoIni,rangoFin,grupo1,grupo2,grupo3,tipoValor,valor,estado,usureg,fecreg) VALUES (1,1,3,3,'2',null,null,'T',0.0371,'A',1,null);
INSERT INTO tarifa (idPlan,idCobertura,rangoIni,rangoFin,grupo1,grupo2,grupo3,tipoValor,valor,estado,usureg,fecreg) VALUES (1,1,4,4,'2',null,null,'T',0.0395,'A',1,null);
INSERT INTO tarifa (idPlan,idCobertura,rangoIni,rangoFin,grupo1,grupo2,grupo3,tipoValor,valor,estado,usureg,fecreg) VALUES (1,1,5,5,'2',null,null,'T',0.0421,'A',1,null);
INSERT INTO tarifa (idPlan,idCobertura,rangoIni,rangoFin,grupo1,grupo2,grupo3,tipoValor,valor,estado,usureg,fecreg) VALUES (1,1,6,6,'2',null,null,'T',0.0442,'A',1,null);
INSERT INTO tarifa (idPlan,idCobertura,rangoIni,rangoFin,grupo1,grupo2,grupo3,tipoValor,valor,estado,usureg,fecreg) VALUES (1,1,7,7,'2',null,null,'T',0.0475,'A',1,null);
INSERT INTO tarifa (idPlan,idCobertura,rangoIni,rangoFin,grupo1,grupo2,grupo3,tipoValor,valor,estado,usureg,fecreg) VALUES (1,1,8,8,'2',null,null,'T',0.0515,'A',1,null);
INSERT INTO tarifa (idPlan,idCobertura,rangoIni,rangoFin,grupo1,grupo2,grupo3,tipoValor,valor,estado,usureg,fecreg) VALUES (1,1,9,9,'2',null,null,'T',0.0525,'A',1,null);
INSERT INTO tarifa (idPlan,idCobertura,rangoIni,rangoFin,grupo1,grupo2,grupo3,tipoValor,valor,estado,usureg,fecreg) VALUES (1,1,10,10,'2',null,null,'T',0.0570,'A',1,null);
INSERT INTO tarifa (idPlan,idCobertura,rangoIni,rangoFin,grupo1,grupo2,grupo3,tipoValor,valor,estado,usureg,fecreg) VALUES (1,1,11,11,'2',null,null,'T',0.0645,'A',1,null);
INSERT INTO tarifa (idPlan,idCobertura,rangoIni,rangoFin,grupo1,grupo2,grupo3,tipoValor,valor,estado,usureg,fecreg) VALUES (1,1,12,12,'2',null,null,'T',0.0650,'A',1,null);
INSERT INTO tarifa (idPlan,idCobertura,rangoIni,rangoFin,grupo1,grupo2,grupo3,tipoValor,valor,estado,usureg,fecreg) VALUES (1,1,13,15,'2',null,null,'T',0.0670,'A',1,null);
INSERT INTO tarifa (idPlan,idCobertura,rangoIni,rangoFin,grupo1,grupo2,grupo3,tipoValor,valor,estado,usureg,fecreg) VALUES (2,1,0,0,'1',null,null,'T',0.034,'A',1,null);
INSERT INTO tarifa (idPlan,idCobertura,rangoIni,rangoFin,grupo1,grupo2,grupo3,tipoValor,valor,estado,usureg,fecreg) VALUES (2,1,1,1,'1',null,null,'T',0.035,'A',1,null);
INSERT INTO tarifa (idPlan,idCobertura,rangoIni,rangoFin,grupo1,grupo2,grupo3,tipoValor,valor,estado,usureg,fecreg) VALUES (2,1,2,2,'1',null,null,'T',0.0409,'A',1,null);
INSERT INTO tarifa (idPlan,idCobertura,rangoIni,rangoFin,grupo1,grupo2,grupo3,tipoValor,valor,estado,usureg,fecreg) VALUES (2,1,3,3,'1',null,null,'T',0.0432,'A',1,null);
INSERT INTO tarifa (idPlan,idCobertura,rangoIni,rangoFin,grupo1,grupo2,grupo3,tipoValor,valor,estado,usureg,fecreg) VALUES (2,1,4,4,'1',null,null,'T',0.0456,'A',1,null);

--IMPUESTO
INSERT INTO impuesto (idPlan,orden,idGrupoImpuesto,idTipoImpuesto,tipoValor,valor,marcaIncluirSuma,marcaSobreSuma,estado,usureg,fecreg) VALUES (1,1,11,20,'T',0.03,'S','S','A',1,null);
INSERT INTO impuesto (idPlan,orden,idGrupoImpuesto,idTipoImpuesto,tipoValor,valor,marcaIncluirSuma,marcaSobreSuma,estado,usureg,fecreg) VALUES (1,2,10,19,'T',0.18,'S','S','A',1,null);
INSERT INTO impuesto (idPlan,orden,idGrupoImpuesto,idTipoImpuesto,tipoValor,valor,marcaIncluirSuma,marcaSobreSuma,estado,usureg,fecreg) VALUES (2,1,11,20,'T',0.03,'S','S','A',1,null);
INSERT INTO impuesto (idPlan,orden,idGrupoImpuesto,idTipoImpuesto,tipoValor,valor,marcaIncluirSuma,marcaSobreSuma,estado,usureg,fecreg) VALUES (3,2,10,19,'T',0.18,'S','S','A',1,null);

--PRODUCTO POR CANAL
INSERT INTO producto_canal (idCanal,idProducto,estado,usureg,fecreg) VALUES (1,1,'A',1,null);
INSERT INTO producto_canal (idCanal,idProducto,estado,usureg,fecreg) VALUES (2,1,'A',1,null);
INSERT INTO producto_canal (idCanal,idProducto,estado,usureg,fecreg) VALUES (3,2,'A',1,null);


--SCORING
INSERT INTO scoring (idPlan, rangoIni,rangoFin,grupo1,grupo2,grupo3,tipoValor,valor,estado,usureg,fecreg) VALUES (1,1,90,null,null,null,'A',1.08,'A',1,null);
INSERT INTO scoring (idPlan, rangoIni,rangoFin,grupo1,grupo2,grupo3,tipoValor,valor,estado,usureg,fecreg) VALUES (2,1,90,null,null,null,'A',1.09,'A',1,null);
INSERT INTO scoring (idPlan, rangoIni,rangoFin,grupo1,grupo2,grupo3,tipoValor,valor,estado,usureg,fecreg) VALUES (3,1,90,null,null,null,'A',1.10,'A',1,null);

/*
* =========================
* VEHICULOS
* =========================
*/

--MARCA
INSERT INTO marca(nombre, estado, usureg, fecreg) VALUES ('CHEVROLET','A',1,null);
INSERT INTO marca(nombre, estado, usureg, fecreg) VALUES ('HONDA','A',1,null);
INSERT INTO marca(nombre, estado, usureg, fecreg) VALUES ('HYUNDAI','A',1,null);
INSERT INTO marca(nombre, estado, usureg, fecreg) VALUES ('KIA','A',1,null);
INSERT INTO marca(nombre, estado, usureg, fecreg) VALUES ('MITSUBISHI','A',1,null);
INSERT INTO marca(nombre, estado, usureg, fecreg) VALUES ('NISSAN','A',1,null);
INSERT INTO marca(nombre, estado, usureg, fecreg) VALUES ('PEUGEOT','A',1,null);
INSERT INTO marca(nombre, estado, usureg, fecreg) VALUES ('RENAULT','A',1,null);
INSERT INTO marca(nombre, estado, usureg, fecreg) VALUES ('SEAT','A',1,null);
INSERT INTO marca(nombre, estado, usureg, fecreg) VALUES ('SSANGYONG','A',1,null);
INSERT INTO marca(nombre, estado, usureg, fecreg) VALUES ('SUBARU','A',1,null);
INSERT INTO marca(nombre, estado, usureg, fecreg) VALUES ('SUZUKI','A',1,null);
INSERT INTO marca(nombre, estado, usureg, fecreg) VALUES ('TOYOTA','A',1,null);
INSERT INTO marca(nombre, estado, usureg, fecreg) VALUES ('VOLKSWAGEN','A',1,null);

--MODELO
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (1,'AVEO','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (1,'AVEO LT','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (1,'AVEO HB SR AT','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (1,'AVEO HATCHBACK','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (2,'CR-V 2.4 LX','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (2,'CR-V 2.4 EX','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (2,'CR-V 2.0','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (2,'CR-V','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (2,'CRV-RD175WJ-KK-8V','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (2,'CRV-2.0','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (2,'CRV LX -SE','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (2,'CRV LX AT 4X4','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (2,'CRV EX','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (2,'CRV DE LUXE','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (2,'CRV 4X2 L','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (2,'CRV 2000','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (2,'CRV 200','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (2,'CRV 2.4','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (2,'CRV','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (2,'CR-VL','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (2,'CR-V LX 4X2','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (2,'CR-V LX-SE 4X2','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (2,'CR-V EX SE 2.4','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (2,'CR-V ACTIVE SCAPE','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (2,'CR-V 4X4 EX MT','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (3,'ELANTRA GLS','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (3,'ELANTRA','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (3,'NEW ELANTRA  1.8 GLS AT FULL','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (3,'NEW ELANTRA','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (3,'ELANTRA SV','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (3,'ELANTRA GLS/96','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (3,'ELANTRA GLS 1.6','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (3,'ELANTRA / 99','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (4,'RIO 1.4 MT','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (4,'RIO 1.5','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (4,'RIO HB','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (4,'RIO LX 1.4','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (4,'RIO NB','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (4,'CERATO','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (4,'CERATO 1.6','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (4,'NEW CERATO','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (4,'NEW CERATO FORTE','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (4,'NEW PICANTO','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (4,'PICANTO','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (4,'NEW RIO','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (4,'RIO','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (4,'RIO 1.4 EX MT','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (5,'LANCER MX','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (5,'LANCER EVOLUTION','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (5,'LANCER CG','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (5,'LANCER CEDIA','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (5,'LANCER CARGO','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (5,'ALL NEW LANCER','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (5,'LANCER','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (5,'LANCER 1.3','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (5,'LANCER 1.3 GL','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (5,'LANCER 1.3 SEDAN','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (5,'LANCER 1.3 SW','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (5,'LANCER 1.5 SW','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (5,'LANCER 1.6 GLX (NUEVO MODELO)','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (5,'LANCER 1.6 GLXI','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (5,'LANCER 1.6GL','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (5,'LANCER 2.0 EVO V','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (5,'LANCER 2.0 GSR EVO VI','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (5,'LANCER x 2.0 GLS CVT','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (5,'LANCER SW GLX','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (5,'LANCER ST','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (5,'LANCER GLX','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (5,'LANCER X 2.0 GT CVT','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (5,'SUPER LANCER','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (6,'ALMERA','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (6,'QASHQAI TEKNA 4X2 CVT 2.0 GSL','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (6,'QASHQAI','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (6,'QASHQAI TEKNA','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (7,'207 SEDAN','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (7,'206','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (7,'206 1.4XT','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (7,'206 S16','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (7,'206 X-DESINGN','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (7,'206 X-LINE','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (7,'206 XR 2001','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (7,'206 XR CONFORT','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (7,'206 XS','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (7,'206 XT','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (7,'207','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (7,'207 ALLURE','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (7,'207 COMPACT','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (7,'207 VE PREMIUM','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (7,'307','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (7,'307 1.4 XN 5P','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (7,'307 XT SW','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (8,'STEPWAY DYNAMIQUE 4X2','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (8,'FLUENCE','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (8,'FLUENCE DYNAMIQUE 2.0,','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (8,'FLUENCE EXPRESSION 2.0','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (8,'KOLEOS','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (8,'LOGAN','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (8,'LOGAN DYNAMIQUE','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (8,'LOGAN1.6','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (8,'SANDERO','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (8,'SANDERO 1.6','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (8,'STEPWAY','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (9,'LEON STYLANCE','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (9,'LEON TOP','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (9,'LEON STYLE','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (9,'LEON REFERENCE','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (9,'LEON MASTER','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (9,'LEON FR 2.0','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (9,'LEON FR 1.8 T','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (9,'LEON','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (10,'ACTYON 4X2','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (10,'ACTYON 2.3 4X2','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (10,'ACTYON 2.3','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (10,'ACTYON SPORTS MEC 2.0D 4X4','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (10,'ACTYON SPORTS 2.0','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (10,'ACTYON SPORTS','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (10,'ACTYON SP MEC 2.0D 4X4','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (10,'ACTYON','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (10,'ACTYON SP','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (10,'ACTYON SP MEC 2.0D 4X2','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (10,'ACTYON MEC 2.3G 4X2','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (10,'ACTYON 2.0','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (10,'ACTYON MEC 2.0D 4X4','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (10,'ACTYON G 4X2 MEC','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (11,'LEGACY L','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (11,'FORESTER','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (11,'FORESTER 2','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (11,'FORESTER 2.0 5D AT AWD XS','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (11,'FORESTER 2.0 5D AWD AT','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (11,'FORESTER 2.0 AWD','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (11,'FORESTER 2.0 AWD AT XS','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (11,'FORESTER 2.0 L AWD / 98','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (11,'FORESTER 5D 2.0X TURBO 4 AT AWD RK','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (11,'ALL NEW LEGACY','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (11,'ALL NEW LEGACY 2.0I','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (11,'LEGACY','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (11,'LEGACY 2.0 4D GL AT','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (11,'LEGACY 4D','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (11,'LEGACY GL 2.0','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (11,'LEGACY TW2.5L OUTBACK AT AWD','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (11,'NEW LEGACY 2.0I 4D AWD','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (11,'OUTBACK LEGACY 2.5 LT','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (11,'ALL NEW OUTBACK','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (11,'NEW OUTBACK','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (11,'OUTBACK','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (11,'OUTBACK 2.5','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (11,'OUTBACK 2.5 AWD','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (12,'NOMADE','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (12,'GRAND NOMADE','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (12,'SWIFT','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (12,'B02 ALTO','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (12,'ALTO 800CC','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (12,'ALTO 800','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (12,'ALTO 1.1 GL','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (12,'ALTO 0.800','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (12,'ALTO 0.8','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (12,'ALTO','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (12,'GRAND NOMADE XL7','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (13,'RAV','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (13,'RAV 42.05P','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (13,'RAV4','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (13,'RAV4 2.4 GX','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (13,'RAV4 GL 2.0','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (13,'RAV4 GX 2.0','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (13,'RAV4 GX 2.4 4X2 GLS','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (13,'RAV4 GX 2.4 GSL','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (13,'FJ CRUISER','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (13,'FJ CRUISER 4.0 GSL','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (13,'LAND CRUISER','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (13,'LAND CRUISER 100 4.5','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (13,'LAND CRUISER 200 VX GSL','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (13,'LAND CRUISER 4.0 CORTA','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (13,'LAND CRUISER 4.0 HT','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (13,'LAND CRUISER 4.0 LARGA','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (13,'LAND CRUISER 70 4.5','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (13,'LAND CRUISER 80 4.5','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (13,'LAND CRUISER 90 PRADO 3.0 TDI CORTA','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (13,'LAND CRUISER 90 PRADO 3.0 TDI LARGA','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (13,'LAND CRUISER PRADO 2.7','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (13,'LAND CRUISER PRADO 2.7 M/T','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (13,'LAND CRUISER PRADO 2.7 GX','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (13,'LAND CRUISER PRADO 3.0 GX TD','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (13,'LAND CRUISER PRADO 3.0 TDI','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (13,'LAND CRUISER PRADO 4.0 V6','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (13,'LAND CRUISER PRADO 4.0 VX','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (13,'LAND CRUISER PRADO BAS AMB','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (13,'LAND CRUISER PRADO GX G','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (13,'LAND CRUISER PRADO TURBO','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (13,'LAND CRUISER PRADO TX','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (13,'LAND CRUISER PRADO VX','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (13,'LAND CRUISIER','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'373-GOL','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'GOL 305','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'GOL COMFORT 1.6','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'GOL CONCEPT','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'GOL CONCEPT 1.63P','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'GOL CONFORT','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'GOL CROSSOVER','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'GOL CROSSOVER 1.8','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'GOL ESTILO','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'GOL MI','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'GOL POWER','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'GOL POWER 1.6','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'GOL POWER 1.8','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'GOL SEDAN','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'GOL SEDAN COMFORT 1.6','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'GOL SEDAN CONFORT','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'GOL SEDAN POWER 1.6/2010','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'GOL STATION','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'GOL STATION COMFORT','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'GOL STATION CROSSOVER','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'GOL STATION CROSSOVER 1.6','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'GOL STATION POWER','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'GOL STATION POWER 1.6','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'GOL STATION WAGON','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'BORA','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'BORA 2.0','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'BORA 2.0 EUROPA TIP','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'BORA 2.0 TRENDLINE TIP','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'BORA EUROPA 2.0','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'BORA EUROPA A4 MEC','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'GOL 1.8 3p','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'GOL 1.8','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'GOL 1.6 COMFORT','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'GOL 1.6','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'GOL','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'377 GOL GLI','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'377 GOL CLI','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'377 GOL CL 1.8','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'377 GOL 1.6','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'377 GOL','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'GOL 1.8 SW','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'373 GOL CL','A',1,null);
INSERT INTO modelo(idMarca, nombre, estado, usureg, fecreg) VALUES (14,'308 GOL GL','A',1,null);

--SUBMODELO
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (1,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (2,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (3,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (4,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (5,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (6,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (7,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (8,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (9,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (10,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (11,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (12,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (13,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (14,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (15,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (16,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (17,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (18,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (19,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (20,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (21,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (22,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (23,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (24,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (25,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (26,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (27,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (28,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (29,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (30,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (31,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (32,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (33,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (34,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (35,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (36,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (37,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (38,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (39,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (40,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (41,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (42,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (43,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (44,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (45,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (46,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (47,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (48,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (49,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (50,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (51,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (52,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (53,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (54,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (55,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (56,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (57,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (58,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (59,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (60,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (61,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (62,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (63,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (64,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (65,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (66,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (67,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (68,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (69,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (70,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (71,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (72,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (73,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (74,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (75,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (76,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (77,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (78,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (79,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (80,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (81,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (82,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (83,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (84,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (85,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (86,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (87,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (88,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (89,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (90,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (91,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (92,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (93,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (94,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (95,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (96,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (97,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (98,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (99,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (100,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (101,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (102,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (103,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (104,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (105,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (106,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (107,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (108,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (109,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (110,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (111,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (112,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (113,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (114,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (115,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (116,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (117,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (118,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (119,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (120,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (121,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (122,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (123,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (124,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (125,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (126,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (127,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (128,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (129,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (130,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (131,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (132,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (133,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (134,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (135,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (136,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (137,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (138,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (139,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (140,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (141,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (142,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (143,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (144,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (145,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (146,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (147,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (148,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (149,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (150,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (151,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (152,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (153,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (154,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (155,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (156,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (157,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (158,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (159,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (160,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (161,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (162,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (163,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (164,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (165,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (166,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (167,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (168,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (169,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (170,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (171,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (172,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (173,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (174,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (175,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (176,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (177,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (178,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (179,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (180,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (181,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (182,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (183,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (184,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (185,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (186,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (187,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (188,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (189,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (190,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (191,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (192,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (193,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (194,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (195,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (196,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (197,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (198,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (199,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (200,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (201,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (202,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (203,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (204,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (205,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (206,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (207,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (208,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (209,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (210,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (211,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (212,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (213,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (214,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (215,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (216,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (217,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (218,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (219,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (220,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (221,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (222,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (223,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (224,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (225,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (226,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (227,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (228,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (229,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (230,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (231,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (232,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (233,'','A',1,null);
INSERT INTO submodelo(idModelo, nombre, estado, usureg, fecreg) VALUES (234,'','A',1,null);

--VEHICULO
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,1,2,2,'CHEVROLET AVEO LT',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,1,1,1,'CHEVROLET AVEO',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,1,3,3,'CHEVROLET AVEO HB SR AT',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,1,4,4,'CHEVROLET AVEO HATCHBACK',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,2,5,5,'HONDA CR-V 2.4 LX',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,2,6,6,'HONDA CR-V 2.4 EX',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,2,7,7,'HONDA CR-V 2.0',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,2,8,8,'HONDA CR-V',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,2,9,9,'HONDA CRV-RD175WJ-KK-8V',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,2,10,10,'HONDA CRV-2.0',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,2,11,11,'HONDA CRV LX -SE',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,2,12,12,'HONDA CRV LX AT 4X4',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,2,13,13,'HONDA CRV EX',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,2,14,14,'HONDA CRV DE LUXE',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,2,15,15,'HONDA CRV 4X2 L',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,2,16,16,'HONDA CRV 2000',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,2,17,17,'HONDA CRV 200',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,2,18,18,'HONDA CRV 2.4',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,2,19,19,'HONDA CRV',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,2,20,20,'HONDA CR-VL',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,2,21,21,'HONDA CR-V LX 4X2',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,2,22,22,'HONDA CR-V LX-SE 4X2',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,2,23,23,'HONDA CR-V EX SE 2.4',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,2,24,24,'HONDA CR-V ACTIVE SCAPE',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,2,25,25,'HONDA CR-V 4X4 EX MT',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,3,26,26,'HYUNDAI ELANTRA GLS',18,6,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,3,27,27,'HYUNDAI ELANTRA',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,3,28,28,'HYUNDAI NEW ELANTRA  1.8 GLS AT FULL',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,3,29,29,'HYUNDAI NEW ELANTRA',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,3,30,30,'HYUNDAI ELANTRA SV',18,5,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,3,31,31,'HYUNDAI ELANTRA GLS/96',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,3,32,32,'HYUNDAI ELANTRA GLS 1.6',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,3,33,33,'HYUNDAI ELANTRA / 99',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,4,34,34,'KIA RIO 1.4 MT',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,4,35,35,'KIA RIO 1.5',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,4,36,36,'KIA RIO HB',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,4,37,37,'KIA RIO LX 1.4',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,4,38,38,'KIA RIO NB',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,4,39,39,'KIA CERATO',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,4,40,40,'KIA CERATO 1.6',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,4,41,41,'KIA NEW CERATO',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,4,42,42,'KIA NEW CERATO FORTE',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,4,43,43,'KIA NEW PICANTO',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,4,44,44,'KIA PICANTO',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,4,45,45,'KIA NEW RIO',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,4,46,46,'KIA RIO',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,4,47,47,'KIA RIO 1.4 EX MT',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,5,48,48,'MITSUBISHI LANCER MX',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,5,49,49,'MITSUBISHI LANCER EVOLUTION',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,5,50,50,'MITSUBISHI LANCER CG',18,6,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,5,51,51,'MITSUBISHI LANCER CEDIA',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,5,52,52,'MITSUBISHI LANCER CARGO',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,5,53,53,'MITSUBISHI ALL NEW LANCER',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,5,54,54,'MITSUBISHI LANCER',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,5,55,55,'MITSUBISHI LANCER 1.3',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,5,56,56,'MITSUBISHI LANCER 1.3 GL',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,5,57,57,'MITSUBISHI LANCER 1.3 SEDAN',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,5,58,58,'MITSUBISHI LANCER 1.3 SW',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,5,59,59,'MITSUBISHI LANCER 1.5 SW',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,5,60,60,'MITSUBISHI LANCER 1.6 GLX (NUEVO MODELO)',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,5,61,61,'MITSUBISHI LANCER 1.6 GLXI',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,5,62,62,'MITSUBISHI LANCER 1.6GL',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,5,63,63,'MITSUBISHI LANCER 2.0 EVO V',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,5,64,64,'MITSUBISHI LANCER 2.0 GSR EVO VI',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,5,65,65,'MITSUBISHI LANCER x 2.0 GLS CVT',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,5,66,66,'MITSUBISHI LANCER SW GLX',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,5,67,67,'MITSUBISHI LANCER ST',18,6,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,5,68,68,'MITSUBISHI LANCER GLX',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,5,69,69,'MITSUBISHI LANCER X 2.0 GT CVT',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,5,70,70,'MITSUBISHI SUPER LANCER',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,6,71,71,'NISSAN ALMERA',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,6,72,72,'NISSAN QASHQAI TEKNA 4X2 CVT 2.0 GSL',18,5,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,6,73,73,'NISSAN QASHQAI',18,5,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,6,74,74,'NISSAN QASHQAI TEKNA',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,7,75,75,'PEUGEOT 207 SEDAN',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,7,76,76,'PEUGEOT 206',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,7,77,77,'PEUGEOT 206 1.4XT',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,7,78,78,'PEUGEOT 206 S16',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,7,79,79,'PEUGEOT 206 X-DESINGN',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,7,80,80,'PEUGEOT 206 X-LINE',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,7,81,81,'PEUGEOT 206 XR 2001',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,7,82,82,'PEUGEOT 206 XR CONFORT',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,7,83,83,'PEUGEOT 206 XS',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,7,84,84,'PEUGEOT 206 XT',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,7,85,85,'PEUGEOT 207',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,7,86,86,'PEUGEOT 207 ALLURE',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,7,87,87,'PEUGEOT 207 COMPACT',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,7,88,88,'PEUGEOT 207 VE PREMIUM',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,7,89,89,'PEUGEOT 307',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,7,90,90,'PEUGEOT 307 1.4 XN 5P',18,6,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,7,91,91,'PEUGEOT 307 XT SW',18,6,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,8,92,92,'RENAULT STEPWAY DYNAMIQUE 4X2',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,8,93,93,'RENAULT FLUENCE',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,8,94,94,'RENAULT FLUENCE DYNAMIQUE 2.0,',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,8,95,95,'RENAULT FLUENCE EXPRESSION 2.0',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,8,96,96,'RENAULT KOLEOS',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,8,97,97,'RENAULT LOGAN',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,8,98,98,'RENAULT LOGAN DYNAMIQUE',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,8,99,99,'RENAULT LOGAN1.6',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,8,100,100,'RENAULT SANDERO',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,8,101,101,'RENAULT SANDERO 1.6',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,8,102,102,'RENAULT STEPWAY',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,9,103,103,'SEAT LEON STYLANCE',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,9,104,104,'SEAT LEON TOP',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,9,105,105,'SEAT LEON STYLE',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,9,106,106,'SEAT LEON REFERENCE',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,9,107,107,'SEAT LEON MASTER',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,9,108,108,'SEAT LEON FR 2.0',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,9,109,109,'SEAT LEON FR 1.8 T',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,9,110,110,'SEAT LEON',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,10,111,111,'SSANGYONG ACTYON 4X2',18,5,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,10,112,112,'SSANGYONG ACTYON 2.3 4X2',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,10,113,113,'SSANGYONG ACTYON 2.3',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,10,114,114,'SSANGYONG ACTYON SPORTS MEC 2.0D 4X4',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,10,115,115,'SSANGYONG ACTYON SPORTS 2.0',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,10,116,116,'SSANGYONG ACTYON SPORTS',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,10,117,117,'SSANGYONG ACTYON SP MEC 2.0D 4X4',18,5,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,10,118,118,'SSANGYONG ACTYON',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,10,119,119,'SSANGYONG ACTYON SP',17,4,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,10,120,120,'SSANGYONG ACTYON SP MEC 2.0D 4X2',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,10,121,121,'SSANGYONG ACTYON MEC 2.3G 4X2',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,10,122,122,'SSANGYONG ACTYON 2.0',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,10,123,123,'SSANGYONG ACTYON MEC 2.0D 4X4',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,10,124,124,'SSANGYONG ACTYON G 4X2 MEC',18,5,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,11,125,125,'SUBARU LEGACY L',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,11,126,126,'SUBARU FORESTER',18,5,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,11,127,127,'SUBARU FORESTER 2',18,5,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,11,128,128,'SUBARU FORESTER 2.0 5D AT AWD XS',18,5,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,11,129,129,'SUBARU FORESTER 2.0 5D AWD AT',18,5,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,11,130,130,'SUBARU FORESTER 2.0 AWD',18,5,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,11,131,131,'SUBARU FORESTER 2.0 AWD AT XS',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,11,132,132,'SUBARU FORESTER 2.0 L AWD / 98',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,11,133,133,'SUBARU FORESTER 5D 2.0X TURBO 4 AT AWD RK',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,11,134,134,'SUBARU ALL NEW LEGACY',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,11,135,135,'SUBARU ALL NEW LEGACY 2.0I',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,11,136,136,'SUBARU LEGACY',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,11,137,137,'SUBARU LEGACY 2.0 4D GL AT',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,11,138,138,'SUBARU LEGACY 4D',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,11,139,139,'SUBARU LEGACY GL 2.0',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,11,140,140,'SUBARU LEGACY TW2.5L OUTBACK AT AWD',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,11,141,141,'SUBARU NEW LEGACY 2.0I 4D AWD',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,11,142,142,'SUBARU OUTBACK LEGACY 2.5 LT',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,11,143,143,'SUBARU ALL NEW OUTBACK',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,11,144,144,'SUBARU NEW OUTBACK',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,11,145,145,'SUBARU OUTBACK',18,6,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,11,146,146,'SUBARU OUTBACK 2.5',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,11,147,147,'SUBARU OUTBACK 2.5 AWD',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,12,148,148,'SUZUKI NOMADE',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,12,149,149,'SUZUKI GRAND NOMADE',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,12,150,150,'SUZUKI SWIFT',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,12,151,151,'SUZUKI B02 ALTO',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,12,152,152,'SUZUKI ALTO 800CC',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,12,153,153,'SUZUKI ALTO 800',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,12,154,154,'SUZUKI ALTO 1.1 GL',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,12,155,155,'SUZUKI ALTO 0.800',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,12,156,156,'SUZUKI ALTO 0.8',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,12,157,157,'SUZUKI ALTO',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,12,158,158,'SUZUKI GRAND NOMADE XL7',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,13,159,159,'TOYOTA RAV',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,13,160,160,'TOYOTA RAV 42.05P',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,13,161,161,'TOYOTA RAV4',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,13,162,162,'TOYOTA RAV4 2.4 GX',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,13,163,163,'TOYOTA RAV4 GL 2.0',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,13,164,164,'TOYOTA RAV4 GX 2.0',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,13,165,165,'TOYOTA RAV4 GX 2.4 4X2 GLS',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,13,166,166,'TOYOTA RAV4 GX 2.4 GSL',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,13,167,167,'TOYOTA FJ CRUISER',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,13,168,168,'TOYOTA FJ CRUISER 4.0 GSL',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,13,169,169,'TOYOTA LAND CRUISER',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,13,170,170,'TOYOTA LAND CRUISER 100 4.5',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,13,171,171,'TOYOTA LAND CRUISER 200 VX GSL',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,13,172,172,'TOYOTA LAND CRUISER 4.0 CORTA',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,13,173,173,'TOYOTA LAND CRUISER 4.0 HT',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,13,174,174,'TOYOTA LAND CRUISER 4.0 LARGA',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,13,175,175,'TOYOTA LAND CRUISER 70 4.5',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,13,176,176,'TOYOTA LAND CRUISER 80 4.5',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,13,177,177,'TOYOTA LAND CRUISER 90 PRADO 3.0 TDI CORTA',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,13,178,178,'TOYOTA LAND CRUISER 90 PRADO 3.0 TDI LARGA',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,13,179,179,'TOYOTA LAND CRUISER PRADO 2.7',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,13,180,180,'TOYOTA LAND CRUISER PRADO 2.7 M/T',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,13,181,181,'TOYOTA LAND CRUISER PRADO 2.7 GX',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,13,182,182,'TOYOTA LAND CRUISER PRADO 3.0 GX TD',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,13,183,183,'TOYOTA LAND CRUISER PRADO 3.0 TDI',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,13,184,184,'TOYOTA LAND CRUISER PRADO 4.0 V6',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,13,185,185,'TOYOTA LAND CRUISER PRADO 4.0 VX',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,13,186,186,'TOYOTA LAND CRUISER PRADO BAS AMB',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,13,187,187,'TOYOTA LAND CRUISER PRADO GX G',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,13,188,188,'TOYOTA LAND CRUISER PRADO TURBO',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,13,189,189,'TOYOTA LAND CRUISER PRADO TX',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,13,190,190,'TOYOTA LAND CRUISER PRADO VX',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,13,191,191,'TOYOTA LAND CRUISIER',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,192,192,'VOLKSWAGEN 373-GOL',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,193,193,'VOLKSWAGEN GOL 305',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,194,194,'VOLKSWAGEN GOL COMFORT 1.6',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,195,195,'VOLKSWAGEN GOL CONCEPT',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,196,196,'VOLKSWAGEN GOL CONCEPT 1.63P',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,197,197,'VOLKSWAGEN GOL CONFORT',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,198,198,'VOLKSWAGEN GOL CROSSOVER',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,199,199,'VOLKSWAGEN GOL CROSSOVER 1.8',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,200,200,'VOLKSWAGEN GOL ESTILO',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,201,201,'VOLKSWAGEN GOL MI',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,202,202,'VOLKSWAGEN GOL POWER',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,203,203,'VOLKSWAGEN GOL POWER 1.6',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,204,204,'VOLKSWAGEN GOL POWER 1.8',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,205,205,'VOLKSWAGEN GOL SEDAN',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,206,206,'VOLKSWAGEN GOL SEDAN COMFORT 1.6',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,207,207,'VOLKSWAGEN GOL SEDAN CONFORT',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,208,208,'VOLKSWAGEN GOL SEDAN POWER 1.6/2010',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,209,209,'VOLKSWAGEN GOL STATION',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,210,210,'VOLKSWAGEN GOL STATION COMFORT',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,211,211,'VOLKSWAGEN GOL STATION CROSSOVER',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,212,212,'VOLKSWAGEN GOL STATION CROSSOVER 1.6',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,213,213,'VOLKSWAGEN GOL STATION POWER',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,214,214,'VOLKSWAGEN GOL STATION POWER 1.6',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,215,215,'VOLKSWAGEN GOL STATION WAGON',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,216,216,'VOLKSWAGEN BORA',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,217,217,'VOLKSWAGEN BORA 2.0',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,218,218,'VOLKSWAGEN BORA 2.0 EUROPA TIP',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,219,219,'VOLKSWAGEN BORA 2.0 TRENDLINE TIP',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,220,220,'VOLKSWAGEN BORA EUROPA 2.0',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,221,221,'VOLKSWAGEN BORA EUROPA A4 MEC',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,222,222,'VOLKSWAGEN GOL 1.8 3p',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,223,223,'VOLKSWAGEN GOL 1.8',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,224,224,'VOLKSWAGEN GOL 1.6 COMFORT',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,225,225,'VOLKSWAGEN GOL 1.6',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,226,226,'VOLKSWAGEN GOL',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,227,227,'VOLKSWAGEN 377 GOL GLI',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,228,228,'VOLKSWAGEN 377 GOL CLI',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,229,229,'VOLKSWAGEN 377 GOL CL 1.8',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,230,230,'VOLKSWAGEN 377 GOL 1.6',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,231,231,'VOLKSWAGEN 377 GOL',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,232,232,'VOLKSWAGEN GOL 1.8 SW',18,6,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,233,233,'VOLKSWAGEN 373 GOL CL',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (1,14,234,234,'VOLKSWAGEN 308 GOL GL',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,1,1,1,'CHEVROLET AVEO',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,1,2,2,'CHEVROLET AVEO LT',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,1,3,3,'CHEVROLET AVEO HB SR AT',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,1,4,4,'CHEVROLET AVEO HATCHBACK',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,2,5,5,'HONDA CR-V 2.4 LX',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,2,6,6,'HONDA CR-V 2.4 EX',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,2,7,7,'HONDA CR-V 2.0',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,2,8,8,'HONDA CR-V',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,2,9,9,'HONDA CRV-RD175WJ-KK-8V',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,2,10,10,'HONDA CRV-2.0',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,2,11,11,'HONDA CRV LX -SE',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,2,12,12,'HONDA CRV LX AT 4X4',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,2,13,13,'HONDA CRV EX',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,2,14,14,'HONDA CRV DE LUXE',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,2,15,15,'HONDA CRV 4X2 L',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,2,16,16,'HONDA CRV 2000',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,2,17,17,'HONDA CRV 200',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,2,18,18,'HONDA CRV 2.4',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,2,19,19,'HONDA CRV',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,2,20,20,'HONDA CR-VL',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,2,21,21,'HONDA CR-V LX 4X2',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,2,22,22,'HONDA CR-V LX-SE 4X2',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,2,23,23,'HONDA CR-V EX SE 2.4',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,2,24,24,'HONDA CR-V ACTIVE SCAPE',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,2,25,25,'HONDA CR-V 4X4 EX MT',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,3,26,26,'HYUNDAI ELANTRA GLS',18,6,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,3,27,27,'HYUNDAI ELANTRA',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,3,28,28,'HYUNDAI NEW ELANTRA  1.8 GLS AT FULL',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,3,29,29,'HYUNDAI NEW ELANTRA',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,3,30,30,'HYUNDAI ELANTRA SV',18,5,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,3,31,31,'HYUNDAI ELANTRA GLS/96',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,3,32,32,'HYUNDAI ELANTRA GLS 1.6',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,3,33,33,'HYUNDAI ELANTRA / 99',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,4,34,34,'KIA RIO 1.4 MT',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,4,35,35,'KIA RIO 1.5',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,4,36,36,'KIA RIO HB',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,4,37,37,'KIA RIO LX 1.4',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,4,38,38,'KIA RIO NB',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,4,39,39,'KIA CERATO',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,4,40,40,'KIA CERATO 1.6',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,4,41,41,'KIA NEW CERATO',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,4,42,42,'KIA NEW CERATO FORTE',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,4,43,43,'KIA NEW PICANTO',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,4,44,44,'KIA PICANTO',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,4,45,45,'KIA NEW RIO',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,4,46,46,'KIA RIO',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,4,47,47,'KIA RIO 1.4 EX MT',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,5,48,48,'MITSUBISHI LANCER MX',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,5,49,49,'MITSUBISHI LANCER EVOLUTION',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,5,50,50,'MITSUBISHI LANCER CG',18,6,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,5,51,51,'MITSUBISHI LANCER CEDIA',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,5,52,52,'MITSUBISHI LANCER CARGO',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,5,53,53,'MITSUBISHI ALL NEW LANCER',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,5,54,54,'MITSUBISHI LANCER',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,5,55,55,'MITSUBISHI LANCER 1.3',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,5,56,56,'MITSUBISHI LANCER 1.3 GL',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,5,57,57,'MITSUBISHI LANCER 1.3 SEDAN',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,5,58,58,'MITSUBISHI LANCER 1.3 SW',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,5,59,59,'MITSUBISHI LANCER 1.5 SW',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,5,60,60,'MITSUBISHI LANCER 1.6 GLX (NUEVO MODELO)',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,5,61,61,'MITSUBISHI LANCER 1.6 GLXI',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,5,62,62,'MITSUBISHI LANCER 1.6GL',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,5,63,63,'MITSUBISHI LANCER 2.0 EVO V',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,5,64,64,'MITSUBISHI LANCER 2.0 GSR EVO VI',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,5,65,65,'MITSUBISHI LANCER x 2.0 GLS CVT',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,5,66,66,'MITSUBISHI LANCER SW GLX',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,5,67,67,'MITSUBISHI LANCER ST',18,6,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,5,68,68,'MITSUBISHI LANCER GLX',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,5,69,69,'MITSUBISHI LANCER X 2.0 GT CVT',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,5,70,70,'MITSUBISHI SUPER LANCER',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,6,71,71,'NISSAN ALMERA',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,6,72,72,'NISSAN QASHQAI TEKNA 4X2 CVT 2.0 GSL',18,5,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,6,73,73,'NISSAN QASHQAI',18,5,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,6,74,74,'NISSAN QASHQAI TEKNA',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,7,75,75,'PEUGEOT 207 SEDAN',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,7,76,76,'PEUGEOT 206',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,7,77,77,'PEUGEOT 206 1.4XT',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,7,78,78,'PEUGEOT 206 S16',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,7,79,79,'PEUGEOT 206 X-DESINGN',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,7,80,80,'PEUGEOT 206 X-LINE',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,7,81,81,'PEUGEOT 206 XR 2001',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,7,82,82,'PEUGEOT 206 XR CONFORT',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,7,83,83,'PEUGEOT 206 XS',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,7,84,84,'PEUGEOT 206 XT',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,7,85,85,'PEUGEOT 207',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,7,86,86,'PEUGEOT 207 ALLURE',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,7,87,87,'PEUGEOT 207 COMPACT',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,7,88,88,'PEUGEOT 207 VE PREMIUM',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,7,89,89,'PEUGEOT 307',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,7,90,90,'PEUGEOT 307 1.4 XN 5P',18,6,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,7,91,91,'PEUGEOT 307 XT SW',18,6,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,8,92,92,'RENAULT STEPWAY DYNAMIQUE 4X2',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,8,93,93,'RENAULT FLUENCE',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,8,94,94,'RENAULT FLUENCE DYNAMIQUE 2.0,',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,8,95,95,'RENAULT FLUENCE EXPRESSION 2.0',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,8,96,96,'RENAULT KOLEOS',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,8,97,97,'RENAULT LOGAN',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,8,98,98,'RENAULT LOGAN DYNAMIQUE',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,8,99,99,'RENAULT LOGAN1.6',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,8,100,100,'RENAULT SANDERO',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,8,101,101,'RENAULT SANDERO 1.6',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,8,102,102,'RENAULT STEPWAY',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,9,103,103,'SEAT LEON STYLANCE',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,9,104,104,'SEAT LEON TOP',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,9,105,105,'SEAT LEON STYLE',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,9,106,106,'SEAT LEON REFERENCE',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,9,107,107,'SEAT LEON MASTER',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,9,108,108,'SEAT LEON FR 2.0',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,9,109,109,'SEAT LEON FR 1.8 T',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,9,110,110,'SEAT LEON',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,10,111,111,'SSANGYONG ACTYON 4X2',18,5,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,10,112,112,'SSANGYONG ACTYON 2.3 4X2',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,10,113,113,'SSANGYONG ACTYON 2.3',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,10,114,114,'SSANGYONG ACTYON SPORTS MEC 2.0D 4X4',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,10,115,115,'SSANGYONG ACTYON SPORTS 2.0',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,10,116,116,'SSANGYONG ACTYON SPORTS',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,10,117,117,'SSANGYONG ACTYON SP MEC 2.0D 4X4',18,5,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,10,118,118,'SSANGYONG ACTYON',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,10,119,119,'SSANGYONG ACTYON SP',17,4,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,10,120,120,'SSANGYONG ACTYON SP MEC 2.0D 4X2',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,10,121,121,'SSANGYONG ACTYON MEC 2.3G 4X2',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,10,122,122,'SSANGYONG ACTYON 2.0',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,10,123,123,'SSANGYONG ACTYON MEC 2.0D 4X4',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,10,124,124,'SSANGYONG ACTYON G 4X2 MEC',18,5,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,11,125,125,'SUBARU LEGACY L',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,11,126,126,'SUBARU FORESTER',18,5,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,11,127,127,'SUBARU FORESTER 2',18,5,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,11,128,128,'SUBARU FORESTER 2.0 5D AT AWD XS',18,5,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,11,129,129,'SUBARU FORESTER 2.0 5D AWD AT',18,5,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,11,130,130,'SUBARU FORESTER 2.0 AWD',18,5,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,11,131,131,'SUBARU FORESTER 2.0 AWD AT XS',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,11,132,132,'SUBARU FORESTER 2.0 L AWD / 98',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,11,133,133,'SUBARU FORESTER 5D 2.0X TURBO 4 AT AWD RK',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,11,134,134,'SUBARU ALL NEW LEGACY',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,11,135,135,'SUBARU ALL NEW LEGACY 2.0I',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,11,136,136,'SUBARU LEGACY',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,11,137,137,'SUBARU LEGACY 2.0 4D GL AT',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,11,138,138,'SUBARU LEGACY 4D',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,11,139,139,'SUBARU LEGACY GL 2.0',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,11,140,140,'SUBARU LEGACY TW2.5L OUTBACK AT AWD',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,11,141,141,'SUBARU NEW LEGACY 2.0I 4D AWD',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,11,142,142,'SUBARU OUTBACK LEGACY 2.5 LT',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,11,143,143,'SUBARU ALL NEW OUTBACK',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,11,144,144,'SUBARU NEW OUTBACK',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,11,145,145,'SUBARU OUTBACK',18,6,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,11,146,146,'SUBARU OUTBACK 2.5',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,11,147,147,'SUBARU OUTBACK 2.5 AWD',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,12,148,148,'SUZUKI NOMADE',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,12,149,149,'SUZUKI GRAND NOMADE',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,12,150,150,'SUZUKI SWIFT',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,12,151,151,'SUZUKI B02 ALTO',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,12,152,152,'SUZUKI ALTO 800CC',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,12,153,153,'SUZUKI ALTO 800',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,12,154,154,'SUZUKI ALTO 1.1 GL',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,12,155,155,'SUZUKI ALTO 0.800',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,12,156,156,'SUZUKI ALTO 0.8',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,12,157,157,'SUZUKI ALTO',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,12,158,158,'SUZUKI GRAND NOMADE XL7',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,13,159,159,'TOYOTA RAV',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,13,160,160,'TOYOTA RAV 42.05P',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,13,161,161,'TOYOTA RAV4',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,13,162,162,'TOYOTA RAV4 2.4 GX',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,13,163,163,'TOYOTA RAV4 GL 2.0',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,13,164,164,'TOYOTA RAV4 GX 2.0',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,13,165,165,'TOYOTA RAV4 GX 2.4 4X2 GLS',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,13,166,166,'TOYOTA RAV4 GX 2.4 GSL',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,13,167,167,'TOYOTA FJ CRUISER',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,13,168,168,'TOYOTA FJ CRUISER 4.0 GSL',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,13,169,169,'TOYOTA LAND CRUISER',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,13,170,170,'TOYOTA LAND CRUISER 100 4.5',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,13,171,171,'TOYOTA LAND CRUISER 200 VX GSL',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,13,172,172,'TOYOTA LAND CRUISER 4.0 CORTA',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,13,173,173,'TOYOTA LAND CRUISER 4.0 HT',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,13,174,174,'TOYOTA LAND CRUISER 4.0 LARGA',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,13,175,175,'TOYOTA LAND CRUISER 70 4.5',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,13,176,176,'TOYOTA LAND CRUISER 80 4.5',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,13,177,177,'TOYOTA LAND CRUISER 90 PRADO 3.0 TDI CORTA',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,13,178,178,'TOYOTA LAND CRUISER 90 PRADO 3.0 TDI LARGA',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,13,179,179,'TOYOTA LAND CRUISER PRADO 2.7',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,13,180,180,'TOYOTA LAND CRUISER PRADO 2.7 M/T',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,13,181,181,'TOYOTA LAND CRUISER PRADO 2.7 GX',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,13,182,182,'TOYOTA LAND CRUISER PRADO 3.0 GX TD',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,13,183,183,'TOYOTA LAND CRUISER PRADO 3.0 TDI',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,13,184,184,'TOYOTA LAND CRUISER PRADO 4.0 V6',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,13,185,185,'TOYOTA LAND CRUISER PRADO 4.0 VX',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,13,186,186,'TOYOTA LAND CRUISER PRADO BAS AMB',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,13,187,187,'TOYOTA LAND CRUISER PRADO GX G',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,13,188,188,'TOYOTA LAND CRUISER PRADO TURBO',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,13,189,189,'TOYOTA LAND CRUISER PRADO TX',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,13,190,190,'TOYOTA LAND CRUISER PRADO VX',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,13,191,191,'TOYOTA LAND CRUISIER',18,5,9,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,192,192,'VOLKSWAGEN 373-GOL',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,193,193,'VOLKSWAGEN GOL 305',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,194,194,'VOLKSWAGEN GOL COMFORT 1.6',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,195,195,'VOLKSWAGEN GOL CONCEPT',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,196,196,'VOLKSWAGEN GOL CONCEPT 1.63P',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,197,197,'VOLKSWAGEN GOL CONFORT',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,198,198,'VOLKSWAGEN GOL CROSSOVER',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,199,199,'VOLKSWAGEN GOL CROSSOVER 1.8',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,200,200,'VOLKSWAGEN GOL ESTILO',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,201,201,'VOLKSWAGEN GOL MI',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,202,202,'VOLKSWAGEN GOL POWER',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,203,203,'VOLKSWAGEN GOL POWER 1.6',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,204,204,'VOLKSWAGEN GOL POWER 1.8',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,205,205,'VOLKSWAGEN GOL SEDAN',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,206,206,'VOLKSWAGEN GOL SEDAN COMFORT 1.6',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,207,207,'VOLKSWAGEN GOL SEDAN CONFORT',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,208,208,'VOLKSWAGEN GOL SEDAN POWER 1.6/2010',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,209,209,'VOLKSWAGEN GOL STATION',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,210,210,'VOLKSWAGEN GOL STATION COMFORT',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,211,211,'VOLKSWAGEN GOL STATION CROSSOVER',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,212,212,'VOLKSWAGEN GOL STATION CROSSOVER 1.6',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,213,213,'VOLKSWAGEN GOL STATION POWER',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,214,214,'VOLKSWAGEN GOL STATION POWER 1.6',18,7,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,215,215,'VOLKSWAGEN GOL STATION WAGON',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,216,216,'VOLKSWAGEN BORA',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,217,217,'VOLKSWAGEN BORA 2.0',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,218,218,'VOLKSWAGEN BORA 2.0 EUROPA TIP',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,219,219,'VOLKSWAGEN BORA 2.0 TRENDLINE TIP',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,220,220,'VOLKSWAGEN BORA EUROPA 2.0',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,221,221,'VOLKSWAGEN BORA EUROPA A4 MEC',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,222,222,'VOLKSWAGEN GOL 1.8 3p',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,223,223,'VOLKSWAGEN GOL 1.8',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,224,224,'VOLKSWAGEN GOL 1.6 COMFORT',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,225,225,'VOLKSWAGEN GOL 1.6',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,226,226,'VOLKSWAGEN GOL',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,227,227,'VOLKSWAGEN 377 GOL GLI',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,228,228,'VOLKSWAGEN 377 GOL CLI',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,229,229,'VOLKSWAGEN 377 GOL CL 1.8',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,230,230,'VOLKSWAGEN 377 GOL 1.6',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,231,231,'VOLKSWAGEN 377 GOL',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,232,232,'VOLKSWAGEN GOL 1.8 SW',18,6,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,233,233,'VOLKSWAGEN 373 GOL CL',16,3,8,5,'A',1,null);
INSERT INTO vehiculo(idCiaSeg, idMarca, idModelo, idSubmodelo, nombre, idClaseVeh, idTipoVeh, idCategoriaVeh, nroAsientos, estado, usureg, fecreg) VALUES (2,14,234,234,'VOLKSWAGEN 308 GOL GL',18,7,8,5,'A',1,null);

--select * from CIA_SEG
--sp_help catalogo_vehiculo

INSERT catalogo_vehiculo
select '1' AS idCiaSeg ,idVehiculo AS idVehiculo,'2015' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '2' AS idCiaSeg ,idVehiculo AS idVehiculo,'2015' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '1' AS idCiaSeg ,idVehiculo AS idVehiculo,'2014' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '2' AS idCiaSeg ,idVehiculo AS idVehiculo,'2014' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '1' AS idCiaSeg ,idVehiculo AS idVehiculo,'2013' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '2' AS idCiaSeg ,idVehiculo AS idVehiculo,'2013' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '1' AS idCiaSeg ,idVehiculo AS idVehiculo,'2012' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '2' AS idCiaSeg ,idVehiculo AS idVehiculo,'2012' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '1' AS idCiaSeg ,idVehiculo AS idVehiculo,'2011' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '2' AS idCiaSeg ,idVehiculo AS idVehiculo,'2011' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '1' AS idCiaSeg ,idVehiculo AS idVehiculo,'2010' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '2' AS idCiaSeg ,idVehiculo AS idVehiculo,'2010' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '1' AS idCiaSeg ,idVehiculo AS idVehiculo,'2009' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '2' AS idCiaSeg ,idVehiculo AS idVehiculo,'2009' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '1' AS idCiaSeg ,idVehiculo AS idVehiculo,'2008' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '2' AS idCiaSeg ,idVehiculo AS idVehiculo,'2008' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '1' AS idCiaSeg ,idVehiculo AS idVehiculo,'2007' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '2' AS idCiaSeg ,idVehiculo AS idVehiculo,'2007' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '1' AS idCiaSeg ,idVehiculo AS idVehiculo,'2006' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '2' AS idCiaSeg ,idVehiculo AS idVehiculo,'2006' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '1' AS idCiaSeg ,idVehiculo AS idVehiculo,'2005' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '2' AS idCiaSeg ,idVehiculo AS idVehiculo,'2005' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '1' AS idCiaSeg ,idVehiculo AS idVehiculo,'2004' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '2' AS idCiaSeg ,idVehiculo AS idVehiculo,'2004' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '1' AS idCiaSeg ,idVehiculo AS idVehiculo,'2003' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '2' AS idCiaSeg ,idVehiculo AS idVehiculo,'2003' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '1' AS idCiaSeg ,idVehiculo AS idVehiculo,'2002' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '2' AS idCiaSeg ,idVehiculo AS idVehiculo,'2002' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '1' AS idCiaSeg ,idVehiculo AS idVehiculo,'2001' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '2' AS idCiaSeg ,idVehiculo AS idVehiculo,'2001' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '1' AS idCiaSeg ,idVehiculo AS idVehiculo,'2000' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '2' AS idCiaSeg ,idVehiculo AS idVehiculo,'2000' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '1' AS idCiaSeg ,idVehiculo AS idVehiculo,'1999' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '2' AS idCiaSeg ,idVehiculo AS idVehiculo,'1999' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '1' AS idCiaSeg ,idVehiculo AS idVehiculo,'1998' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '2' AS idCiaSeg ,idVehiculo AS idVehiculo,'1998' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo


INSERT catalogo_vehiculo
select '1' AS idCiaSeg ,idVehiculo AS idVehiculo,'1997' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '2' AS idCiaSeg ,idVehiculo AS idVehiculo,'1997' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '1' AS idCiaSeg ,idVehiculo AS idVehiculo,'1996' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '2' AS idCiaSeg ,idVehiculo AS idVehiculo,'1996' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '1' AS idCiaSeg ,idVehiculo AS idVehiculo,'1995' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo

INSERT catalogo_vehiculo
select '2' AS idCiaSeg ,idVehiculo AS idVehiculo,'1995' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo


INSERT catalogo_vehiculo
select '1' AS idCiaSeg ,idVehiculo AS idVehiculo,'1994' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo


INSERT catalogo_vehiculo
select '2' AS idCiaSeg ,idVehiculo AS idVehiculo,'1994' as anio, 'DOL' AS MONEDA,16000 AS VALOR_COMERCIAL,'A' AS ESTADO,usureg AS usureg,NULL AS fecreg from vehiculo
