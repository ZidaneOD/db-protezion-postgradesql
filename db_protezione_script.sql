
CREATE TABLE tb_tipo_contrato(
	cod_tipo_contrato SERIAL PRIMARY KEY,
	nomb_tipo_contrato VARCHAR(100) NOT NULL,
	estado BOOLEAN DEFAULT(TRUE)
);

CREATE TABLE tb_contratos(
	cod_contrato SERIAL PRIMARY KEY,
	cod_tipo_contrato INTEGER REFERENCES tb_tipo_contrato(cod_tipo_contrato),
	nomb_contrato VARCHAR(150) NOT NULL,
	desc_contrato VARCHAR(150) NOT NULL,
	inicio_contrato DATE NOT NULL,
	fin_contrato DATE,
	estado BOOLEAN DEFAULT(TRUE)
);

CREATE TABLE tb_perfiles(
	cod_perfil SERIAL PRIMARY KEY,
	nomb_perfil VARCHAR(150) NOT NULL,
	fech_creat DATE DEFAULT CURRENT_DATE,
	fech_modi DATE,
	estado BOOLEAN DEFAULT(TRUE)
);

CREATE TABLE tb_modulos(
	cod_modul SERIAL PRIMARY KEY,
	nomb_modul VARCHAR(150) NOT NULL,
	desc_modul VARCHAR(150) NOT NULL,
	fech_creat DATE DEFAULT CURRENT_DATE,
	fech_modi DATE,
	estado BOOLEAN DEFAULT(TRUE)
);

CREATE TABLE tb_permisos(
	cod_perfil INTEGER REFERENCES tb_perfiles(cod_perfil),
	cod_modul INTEGER REFERENCES tb_modulos(cod_modul),
	desc_modul VARCHAR(150) NOT NULL,
	fech_creat DATE DEFAULT CURRENT_DATE,
	fech_modi DATE,
	estado BOOLEAN DEFAULT(TRUE)
);

CREATE TABLE tb_usuarios(
	cod_usua SERIAL PRIMARY KEY,
	usuario VARCHAR(150) NOT NULL,
	pass_usua VARCHAR(150) NOT NULL,
	nomb_usua VARCHAR(150) NOT NULL,
	ape_usua VARCHAR(150) NOT NULL,
	mail_usua VARCHAR(200) NOT NULL,
	telf_usua CHAR(9) NOT NULL,
	fech_creat DATE DEFAULT CURRENT_DATE,
	fech_modi DATE,
	cod_contrato INTEGER REFERENCES tb_contratos(cod_contrato),
	cod_perfil INTEGER REFERENCES tb_perfiles(cod_perfil),
	estado BOOLEAN DEFAULT(TRUE)
);

CREATE TABLE tb_tipo_rutas(
	cod_tipo_ruta SERIAL PRIMARY KEY,
	nomb_tipo_ruta VARCHAR(100) NOT NULL,
	desc_tipo_ruta VARCHAR(100) NOT NULL,
	estado BOOLEAN DEFAULT(TRUE)
);

CREATE TABLE tb_tipo_servicios(
	cod_tipo_serv SERIAL PRIMARY KEY,
	nomb_tipo_serv VARCHAR(100) NOT NULL,
	desc_tipo_serv VARCHAR(150) NOT NULL,
	estado BOOLEAN DEFAULT(TRUE)
);

CREATE TABLE tb_clientes(
	cod_clie SERIAL PRIMARY KEY,
	ruc_clie CHAR(11) NOT NULL,
	usuario VARCHAR(150) NOT NULL,
	pass_clie VARCHAR(150) NOT NULL,
	nomb_clie VARCHAR(150) NOT NULL,
	ape_clie VARCHAR(150) NOT NULL,
	mail_clie VARCHAR(200) NOT NULL,
	telf_clie CHAR(9) NOT NULL,
	fech_creat DATE DEFAULT CURRENT_DATE,
	fech_modi DATE,
	cod_tipo_ruta INTEGER REFERENCES tb_tipo_rutas(cod_tipo_ruta),
	cod_tipo_serv INTEGER REFERENCES tb_tipo_servicios(cod_tipo_serv),
	cod_perfil INTEGER REFERENCES tb_perfiles(cod_perfil),
	estado BOOLEAN DEFAULT(TRUE)
);

CREATE TABLE tb_tipo_justificaciones(
	cod_tipo_just SERIAL PRIMARY KEY,
	nomb_just VARCHAR(100),
	estado BOOLEAN DEFAULT(TRUE)
);

CREATE TABLE tb_asistencias(
	cod_asist SERIAL PRIMARY KEY,
	cod_usua INTEGER REFERENCES tb_usuarios(cod_usua),
	fecha_asist DATE NOT NULL,
	hing_asist TIME NOT NULL,
	hsal_asist TIME,
	cod_tipo_just INTEGER REFERENCES tb_tipo_justificaciones(cod_tipo_just),
	desc_just_asist VARCHAR(200),
	evid_just_asist VARCHAR(200),
	estado BOOLEAN DEFAULT(TRUE)
);

CREATE TABLE tb_seguimiento_trabajos(
	cod_seg_trab SERIAL PRIMARY KEY,
	nomb_seg_trab VARCHAR(100) NOT NULL,
	estado BOOLEAN DEFAULT(TRUE)
);

CREATE TABLE tb_ordenes_trabajos(
	cod_ord_trab SERIAL PRIMARY KEY,
	cod_tipo_ruta INTEGER REFERENCES tb_tipo_rutas(cod_tipo_ruta),
	direc_ord_trab VARCHAR(150) NOT NULL,
	desc_ord_trab VARCHAR(150) NOT NULL,
	cod_usua INTEGER REFERENCES tb_usuarios(cod_usua),
	fech_ord_trab TIMESTAMP NOT NULL,
	ini_ord_trab TIMESTAMP,
	fin_ord_trab TIMESTAMP,
	evid_ord_trab VARCHAR(200),
	cod_seg_trab INTEGER REFERENCES tb_seguimiento_trabajos(cod_seg_trab),
	estado BOOLEAN DEFAULT(TRUE)
);

CREATE TABLE tb_informe_averias(
	cod_inf SERIAL PRIMARY KEY,
	cod_ord_trab INTEGER REFERENCES tb_ordenes_trabajos(cod_ord_trab),
	nomb_inf VARCHAR(100) NOT NULL,
	desc_inf VARCHAR(150) NOT NULL,
	evid_inf VARCHAR(200) NOT NULL,
	estado BOOLEAN DEFAULT(TRUE)
);

CREATE TABLE tb_indumentarias(
	sku_ind VARCHAR(100) PRIMARY KEY,
	nomb_ind VARCHAR(100) NOT NULL,
	talla_ind CHAR(2) NOT NULL,
	estado BOOLEAN DEFAULT(TRUE)
);

CREATE TABLE tb_hist_ind_usua(
	cod_usua INTEGER REFERENCES tb_usuarios(cod_usua),
	sku_ind VARCHAR(100) REFERENCES tb_indumentarias(sku_ind),
	std_ind_usua VARCHAR(20) NOT NULL,
	estado BOOLEAN DEFAULT(TRUE)
);
