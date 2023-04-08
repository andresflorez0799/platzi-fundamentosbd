create database blogs_bd;

select * from pg_extension; -- If uuid-ossp is not in the returned list then execute: CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

create table categorias 
(
    id serial primary key,
    categoria char(50) not null unique,
    estado boolean not null default(true)
);

create table etiquetas 
(
    id serial primary key,
    etiqueta char(50) not null unique,
    estado boolean not null default(true)
);

create table usuarios 
(
    id serial primary key,
    correo varchar(150) not null unique,
    usuario char(30) not null unique,
    contrasena char(16) not null,
    apodo char(20) not null unique,
    estado boolean not null default(true),
    fecha_creacion TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

create table posts
(
    id serial primary key,
    id_usuario integer,
    id_etiqueta integer,
    fecha timestamp not null,
    titulo char(50) not null,
    contenido text not null,
    estado boolean not null default(true),
    fecha_creacion TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    foreign key (id_usuario) references usuarios(id),
    foreign key (id_etiqueta) references etiquetas(id)
);

create table posts_categorias
(
    id serial primary key,
    id_post integer not null,
    id_categoria integer not null,
    foreign key (id_post) references posts(id),
    foreign key (id_categoria) references categorias(id)
);

create table comentarios
(
    id serial primary key,
    id_usuario integer not null,
    id_post integer not null,
    fecha timestamp,
    comentario text not null,
    estado boolean not null default(true),
    fecha_creacion TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    foreign key (id_usuario) references usuarios(id),
    foreign key (id_post) references posts(id)
);
