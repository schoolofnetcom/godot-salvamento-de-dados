extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var diretorio = "user://espadas.json"

var espada = {
	id =  12,
	nome = "Excalibur",
	peso = 10.2,
	preco = 100,
	material = "Mágica"
}

var espada2 = {
	id =  13,
	nome = "Espada de prata",
	peso = 12.2,
	preco = 10,
	material = "Prata"
}

func _ready():
	# 1 passo
	var arquivo = File.new()
	arquivo.open(diretorio, File.WRITE)
	arquivo.store_line(JSON.print(espada))
	arquivo.store_line(JSON.print(espada2))
	arquivo.close()
	
	
	arquivo.open(diretorio, File.READ)
	var novaEspada = parse_json(arquivo.get_line())
	print(novaEspada.id)
	print(novaEspada.material)
	arquivo.close()
	
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
