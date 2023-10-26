extends Control # herda da classe Control

enum MenuState { NULL, INTRO, MENU, SELECT } # define um enum com os estados possíveis do menu

var menu_state = MenuState.INTRO # cria uma variável para armazenar o estado atual do menu

func _process(delta: float) -> void: # define uma função que é chamada a cada quadro
	if Input.is_action_just_pressed("ui_accept"): # verifica se o usuário pressionou a tecla (espaço por padrão)
		match menu_state: # compara o valor da variável menu_state com os casos abaixo
			MenuState.INTRO: # se o menu_state for INTRO
				_open_menu() # chama a função _open_menu
				
			MenuState.MENU: # se o menu_state for MENU
				
				get_tree().change_scene_to_file("res://question_combat.gd")


func _open_menu() -> void: # define uma função que abre o menu
	menu_state = MenuState.MENU # muda o valor da variável menu_state para MENU
	get_node("Intro").visible = false # esconde o nó Intro
	get_node("Menu").visible = true # mostra o nó Menu
	get_node("AnimationPlayer").play("piscapisca") # reproduz a animação chamada menu no nó AnimationPlayer


