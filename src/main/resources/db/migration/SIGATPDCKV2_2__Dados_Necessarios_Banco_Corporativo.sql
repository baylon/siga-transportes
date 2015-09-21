grant select on corporativo.CP_TIPO_SERVICO to sigatp;
grant select on corporativo.CP_TIPO_CONFIGURACAO to sigatp;
grant select on corporativo.CP_IDENTIDADE to sigatp;
grant select on corporativo.CP_TIPO_IDENTIDADE to sigatp;
grant select on corporativo.DP_PESSOA to sigatp;
grant select on corporativo.DP_LOTACAO to sigatp;
grant select on corporativo.CP_MARCADOR to sigatp;
grant select on corporativo.CP_TIPO_MARCA to sigatp;
grant select on corporativo.CP_TIPO_MARCADOR to sigatp;
grant select on corporativo.CP_COMPLEXO to sigatp;
grant select on corporativo.DP_CARGO to sigatp;
grant select on corporativo.DP_FUNCAO_CONFIANCA to sigatp;
grant select, insert on corporativo.CP_SERVICO to sigatp;
grant select on corporativo.CP_GRUPO to sigatp;
grant select on corporativo.CP_SITUACAO_CONFIGURACAO to sigatp;
grant select on corporativo.cp_feriado to sigatp;
grant select on corporativo.cp_localidade to sigatp;
grant select on corporativo.cp_modelo to sigatp;
grant select on corporativo.cp_orgao to sigatp;
grant select on corporativo.cp_papel to sigatp;
grant select on corporativo.cp_personalizacao to sigatp;
grant select on corporativo.cp_servico to sigatp;
grant select on corporativo.cp_tipo_configuracao to sigatp;
grant select on corporativo.cp_tipo_grupo to sigatp;
grant select on corporativo.cp_tipo_identidade to sigatp;
grant select on corporativo.cp_tipo_lotacao to sigatp;
grant select on corporativo.cp_tipo_papel to sigatp;
grant select on corporativo.cp_tipo_pessoa to sigatp;
grant select on corporativo.cp_uf to sigatp;
grant select on corporativo.dp_substituicao to sigatp;
grant select on corporativo.cp_modelo_seq to sigatp;
grant select on corporativo.CP_IDENTIDADE_SEQ to sigatp;
grant select on corporativo.cp_marca to sigatp;
grant select, insert on corporativo.CP_CONFIGURACAO to sigatp;
grant select on corporativo.CP_ORGAO_USUARIO to sigatp;
grant select, update, delete, insert on corporativo.cp_marca to sigatp;
grant select, update, insert on corporativo.CP_CONFIGURACAO to sigatp;
grant select on corporativo.CP_SERVICO_SEQ to sigatp;
grant select on corporativo.CP_CONFIGURACAO_SEQ to sigatp;
grant execute on CORPORATIVO.REMOVE_ACENTO TO SIGATP;
create or replace public synonym REMOVE_ACENTO for CORPORATIVO.REMOVE_ACENTO;

insert into CORPORATIVO.CP_COMPLEXO (id_complexo, nome_complexo, id_localidade, id_orgao_usu) values (99999, 'TESTE', 10, 9999999999);
insert into CORPORATIVO.cp_tipo_configuracao (id_tp_configuracao, dsc_tp_configuracao, ID_SIT_CONFIGURACAO) values (400, 'Utilizar complexo', 1);
Insert into CORPORATIVO.CP_CONFIGURACAO (ID_CONFIGURACAO, DT_INI_VIG_CONFIGURACAO, DT_FIM_VIG_CONFIGURACAO, HIS_DT_INI, ID_ORGAO_USU, ID_LOTACAO, ID_CARGO, ID_FUNCAO_CONFIANCA, ID_PESSOA, ID_SIT_CONFIGURACAO, ID_TP_CONFIGURACAO, ID_SERVICO, ID_GRUPO, NM_EMAIL, DESC_FORMULA, ID_TP_LOTACAO, ID_IDENTIDADE, HIS_IDC_INI, HIS_IDC_FIM, HIS_DT_FIM, HIS_ID_INI, ID_COMPLEXO, ID_ORGAO_OBJETO) values (corporativo.cp_configuracao_seq.nextval, null, null, sysdate, 9999999999, null, null, null, null, '5', '400', null, null, null, null, null, null, null, null, null, corporativo.cp_configuracao_seq.currval, '99999', null);

insert into corporativo.cp_servico (id_servico, sigla_servico, desc_servico, id_servico_pai, id_tp_servico) values (corporativo.cp_servico_seq.nextval, 'SIGA-TP', 'Módulo de Transportes', (select id_servico from corporativo.cp_servico where sigla_servico='SIGA'), 2);
insert into corporativo.cp_servico (id_servico, sigla_servico, desc_servico, id_servico_pai, id_tp_servico) values (corporativo.cp_servico_seq.nextval, 'SIGA-TP-ADM', 'Administrar', (select id_servico from corporativo.cp_servico where sigla_servico='SIGA-TP'), 2);
insert into corporativo.cp_servico (id_servico, sigla_servico, desc_servico, id_servico_pai, id_tp_servico) values (corporativo.cp_servico_seq.nextval, 'SIGA-TP-APR', 'Aprovador', (select id_servico from corporativo.cp_servico where sigla_servico='SIGA-TP'), 2);
insert into corporativo.cp_servico (id_servico, sigla_servico, desc_servico, id_servico_pai, id_tp_servico) values (corporativo.cp_servico_seq.nextval, 'SIGA-TP-GAB', 'Gabinete', (select id_servico from corporativo.cp_servico where sigla_servico='SIGA-TP'), 2);
insert into corporativo.cp_servico (id_servico, sigla_servico, desc_servico, id_servico_pai, id_tp_servico) values (corporativo.cp_servico_seq.nextval, 'SIGA-TP-ADMGAB', 'AdminGabinete', (select id_servico from corporativo.cp_servico where sigla_servico='SIGA-TP'), 2);
insert into corporativo.cp_servico (id_servico, sigla_servico, desc_servico, id_servico_pai, id_tp_servico) values (corporativo.cp_servico_seq.nextval, 'SIGA-TP-AGN', 'Agente', (select id_servico from corporativo.cp_servico where sigla_servico='SIGA-TP'), 2);
insert into corporativo.cp_servico (id_servico, sigla_servico, desc_servico, id_servico_pai, id_tp_servico) values (corporativo.cp_servico_seq.nextval, 'SIGA-TP-ADMFROTA', 'AdministrarFrota', (select id_servico from corporativo.cp_servico where sigla_servico='SIGA-TP'), 2);
insert into corporativo.cp_servico (id_servico, sigla_servico, desc_servico, id_servico_pai, id_tp_servico) values (corporativo.cp_servico_seq.nextval, 'SIGA-TP-ADMMISSAO', 'AdministrarMissao', (select id_servico from corporativo.cp_servico where sigla_servico='SIGA-TP'), 2);
insert into corporativo.cp_servico (id_servico, sigla_servico, desc_servico, id_servico_pai, id_tp_servico) values (corporativo.cp_servico_seq.nextval, 'SIGA-TP-ADMMISSAOCOMPLEXO', 'AdministrarMissaoporComplexo', (select id_servico from corporativo.cp_servico where sigla_servico='SIGA-TP'), 2);

insert into corporativo.cp_configuracao (
	id_configuracao, his_id_ini, id_tp_configuracao, id_sit_configuracao, id_servico, 
	dt_ini_vig_configuracao, id_lotacao
) values(
	corporativo.cp_configuracao_seq.nextval, 
	corporativo.cp_configuracao_seq.currval,
	200, 
	1, 
	(select id_servico from corporativo.cp_servico where sigla_servico='SIGA-TP'),
	sysdate, 
	(select id_lotacao from corporativo.dp_lotacao where sigla_lotacao = 'LTEST' and data_fim_lot is null and id_orgao_usu = 9999999999)
);

insert into corporativo.cp_configuracao (
	id_configuracao, his_id_ini, id_tp_configuracao, id_sit_configuracao, id_servico, 
	dt_ini_vig_configuracao, id_pessoa
) values(
	corporativo.cp_configuracao_seq.nextval, 
	corporativo.cp_configuracao_seq.currval,
	200, 
	1, 
	(select id_servico from corporativo.cp_servico where sigla_servico='SIGA-TP-ADM'),
	sysdate, 
	(select id_pessoa from corporativo.dp_pessoa where nome_pessoa = 'USUARIO TESTE' and data_fim_pessoa is null and id_orgao_usu = 9999999999)
);
