Feature: Validamos interfaz

Scenario: Ingreso
	Given entro al sitio de akinator
	Then debo ver "Akinator"
		And debo ver "es chique?"
		And debo ver "Posta!?"
		And debo ver "Anitta"
		And debo ver "1 / 3"

Scenario: Pregunta
	Given entro al sitio de akinator
	When posteo pregunta "Es nene?"
	Then debo ver "Verdadero"

Scenario: Adivinar
	Given entro al sitio de akinator
	When selecciono persona
	Then debo ver "Ganaste!"

Scenario: Sumar cantidad de intentos
	Given entro al sitio de akinator
	When posteo pregunta "Es nene?"
	Then debo ver "2 / 3"

Scenario: Sumar cantidad de intentos 2
	Given entro al sitio de akinator
	When posteo pregunta "Es nene?"
		And  posteo pregunta "Es nene?"
	Then debo ver "3 / 3"
