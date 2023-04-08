insert into categorias(id, categoria, estado) values(default, 'Noticias', true) RETURNING id;
insert into categorias(id, categoria, estado) values(2, 'JavaScript', true) RETURNING id;
insert into categorias(id, categoria, estado) values(3, '.Net', true) RETURNING id;
insert into categorias(id, categoria, estado) values(4, 'Postgress', true) RETURNING id;

update categorias set categoria='Noticias' where id=1;
update categorias set categoria='Cursos' where id=2;
update categorias set categoria='Beneficios' where id=3;
update categorias set categoria='Escuelas' where id=4;

insert into etiquetas(id, etiqueta) values(default, '#actualidad');
insert into etiquetas(id, etiqueta) values(2, '#javascript');
insert into etiquetas(id, etiqueta) values(3, '#netcore');
insert into etiquetas(id, etiqueta) values(4, '#bd');

insert into usuarios (id, correo, usuario, contrasena, apodo, estado, fecha_creacion, fecha_actualizacion)
values (default, 'andresflorez0799@gmail.com', 'mflorez', 'mflorez', 'andrew', default, default, default);

insert into posts(id, id_usuario, id_etiqueta, fecha, titulo, contenido)
values (default, 1, 2, '2023-04-08 15:40:00', 'Mi primer post JS', 'Este es mi primer post y es sobre Javascript');
insert into posts(id, id_usuario, id_etiqueta, fecha, titulo, contenido)
values (default, 1, 4, '2023-04-08 15:42:00', 'Mi primer post bd', 'Este es otro post y es sobre Bases de datos');

insert into posts_categorias (id, id_post, id_categoria) values (default, 1, 1);
insert into posts_categorias (id, id_post, id_categoria) values (default, 1, 2);

insert into usuarios (id, correo, usuario, contrasena, apodo, estado, fecha_creacion, fecha_actualizacion)
values (2, 'usuariocomentador@gmail.com', 'ucomenta', 'ucomenta', 'comentador', default, default, default);

insert into comentarios (id_usuario, id_post, fecha, comentario)
values (1, 1, '2023-04-08 15:47:00', 'Que bueno, por fin un comentario a mi primer post');
insert into comentarios (id_usuario, id_post, fecha, comentario)
values (2, 1, '2023-04-08 15:48:00', 'Si, es genial que vea un post del ing Andrew, felicidades');

