
CREATE TABLE categorias 
(
    id BINARY(16) DEFAULT (UUID_TO_BIN(UUID())),
    categoria char(50) not null,
    estado bit(1) not null default 1
);
