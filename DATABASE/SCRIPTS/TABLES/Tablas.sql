CREATE DATABASE IF NOT EXISTS ChangeTheWorld;

USE changetheworld;

create table if not exists tbl_USUARIOS(
  id_usuario	   	int 			auto_increment,
  rol 				varchar(10) 	not null,
  avatar 			varchar(50) 	null,
  username 			varchar(200) 	not null UNIQUE,
  nombres 			varchar(200) 	not null,
  apellidos 		varchar(200) 	not null,
  correo 			varchar(100) 	not null,
  contraseña		varchar(100) 	not null,
  fecha				date 			not null,
  descripcion		varchar(100) 	null,
  trabajo			int				null,
  
  PRIMARY KEY (id_usuario)
);

create table if not exists tbl_CATEGORIAS(
  id_categoria	   			int 			auto_increment,
  categoria 				varchar(50) 	not null,
  descripcion_categoria 	varchar(100) 	null,

  PRIMARY KEY (id_categoria)
); 

create table if not exists tbl_CURSOS(
  id_curso		   		int 			auto_increment,
  logo 					varchar(100) 	not null,
  titulo 				varchar(50) 	not null,
  descrpcion_corta 		varchar(200) 	null ,
  descripcion 			varchar(200) 	null,
  cant_niveles 			varchar(200) 	not null,
  costo 				varchar(100) 	not null, 
  promedio_cali			varchar(100) 	null,
  fk_categoria			int,
  fk_usuario_creador	int,

  PRIMARY KEY (id_curso),
  FOREIGN KEY(fk_categoria) references tbl_CATEGORIAS(id_categoria),
  FOREIGN KEY(fk_usuario_creador) references tbl_USUARIOS(id_usuario)
);

create table if not exists tbl_NIVELES(
  id_nivel		   		int 			auto_increment,
  video 				varchar(100) 	not null,
  titulo 				varchar(50) 	not null,
  descripcion 			varchar(200) 	null,
  fk_curso				int 			not null,
   		
  PRIMARY KEY (id_nivel),
  FOREIGN KEY(fk_curso) references tbl_CURSOS(id_curso)
);

create table if not exists tbl_COMENTARIOS(
  id_comentario		   	int 			auto_increment,
  mensaje 				varchar(100) 	not null,
  fk_nivel 				int 			not null,
  fk_usuario			int				null,
 
  PRIMARY KEY (id_comentario),
  FOREIGN KEY(fk_nivel) references tbl_NIVELES(id_nivel),
  FOREIGN KEY(fk_usuario) references tbl_USUARIOS(id_usuario)
);

create table if not exists tbl_RECURSOS(
  id_recurso		   	int 			auto_increment,
  link 					varchar(100) 	not null,
  fk_nivel 				int 			not null,
 

  PRIMARY KEY (id_recurso),
  FOREIGN KEY(fk_nivel) references tbl_NIVELES(id_nivel)
);

create table if not exists tbl_VALORACIONES(
  id_valoracion		   	int 			auto_increment,
  mensaje 				varchar(100) 	not null,
  estrellas 			int 			not null,
  fk_curso 				int 			not null,
  fk_usuario			int				null,
 
  PRIMARY KEY (id_valoracion),
  FOREIGN KEY(fk_curso) references tbl_CURSOS(id_curso),
  FOREIGN KEY(fk_usuario) references tbl_USUARIOS(id_usuario)
);


create table if not exists tbl_COMPRAS(
  id_compra		   		int 			auto_increment,
  fecha 				date 			not null,
  fk_curso 				int 			not null,
  fk_usuario			int				null,
 
  PRIMARY KEY (id_compra),
  FOREIGN KEY(fk_curso) references tbl_CURSOS(id_curso),
  FOREIGN KEY(fk_usuario) references tbl_USUARIOS(id_usuario)
);

create table if not exists tbl_VENTAS(
  id_venta		   		int 			auto_increment,
  fecha 				date 			not null,
  fk_curso 				int 			not null,
  fk_usuario			int				null,
 
  PRIMARY KEY (id_venta),
  FOREIGN KEY(fk_curso) references tbl_CURSOS(id_curso),
  FOREIGN KEY(fk_usuario) references tbl_USUARIOS(id_usuario)
);

create table if not exists tbl_PROGRESOS(
  id_progreso		   	int 			auto_increment,
  nivel 				int 			not null,
  fk_curso 				int 			not null,
  fk_usuario			int				null,
 
  PRIMARY KEY (id_progreso),
  FOREIGN KEY(fk_curso) references tbl_CURSOS(id_curso),
  FOREIGN KEY(fk_usuario) references tbl_USUARIOS(id_usuario)
);

create table if not exists tbl_MENSAJES(
  id_venta		   		int 			auto_increment,
  fecha 				date 			not null,
  mensaje				varchar(200)	not null,
  fk_destinatario		int 			not null,
  fk_remitente			int				null,
 
  PRIMARY KEY (id_venta),
  FOREIGN KEY(fk_destinatario) references tbl_USUARIOS(id_usuario),
  FOREIGN KEY(fk_remitente) references tbl_USUARIOS(id_usuario)
);





