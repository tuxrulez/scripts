Passos:

1 - Extrair os arquivos do container lopesTv

criando a pasta de destino:
	mkdir lopes_dump
	mkdir lopes_dump/thumb
	mkdir lopes_dump/upload
	mkdir lopes_dump/db

extraindo as thumbnails dos videos: 
	docker cp megacontent_lopesTv:/usr/local/bin/MegaContentAPI/thumb lopes_dump/thumb
	docker cp megacontent_lopesTv:/usr/local/bin/MegaContentAPI/upload lopes_dump/upload


extraindo a base
	mongodump --port 27017 --db lopes_manager lopes_dump/db


2 - Copiar os dumps para o destino
	# nao sei como ira fazer


3 - No destino
	mv lopes_dump/thumb /usr/local/bin/MegaContentAPI/thumb 
	mv lopes_dump/upload /usr/local/bin/MegaContentAPI/upload
	mongorestore lopes_dump/db/lopes_manager

