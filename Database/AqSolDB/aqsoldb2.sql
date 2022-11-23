-- drop table if exists aqsoldb2;

-- create table aqsoldb2 (
-- 	id serial primary key,
-- 	dataset text,
-- 	name text,
-- 	inchi text,
-- 	inchikey text,
-- 	smiles text,
-- 	solubility float,
-- 	sd float,
-- 	occurrences int,
-- 	classification text
-- );

-- insert into aqsoldb2 (id)
-- 	(select ROW_NUMBER() OVER() AS num_row from aqsoldb);

insert into aqsoldb2 (name, inchi, inchikey, smiles, 
					  solubility, sd, occurences)
   (select t1.name, t1.inchi, t1.inchikey, t1.smiles, 
			t1.solubility, t1.sd, t1.ocurrences where t1.id = id)
	from aqsoldb as t1;

select * from aqsoldb2;

-- select count(*) from aqsoldb;
