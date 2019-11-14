Feature: Validamos interfaz

Scenario: Ingreso
	Given entro al sitio de akinator
		And inicio juego
	Then debo ver "Akinator"
		And debo ver "es chique?"
		And debo ver "Posta!?"
		And debo ver "Marcia"
		And debo ver "1 / 3"
		And debo ver "Rasgos:"

Scenario: Pregunta
	Given entro al sitio de akinator
		And inicio juego
	When posteo pregunta "es nene?"
	Then debo ver "es nene?"
		And debo ver "Falso"

Scenario: Adivinar
	Given entro al sitio de akinator
		And inicio juego
	When selecciono "Marcia"
	Then debo ver "Era..."

Scenario: Sumar cantidad de intentos
	Given entro al sitio de akinator
		And inicio juego
	When posteo pregunta "es nene?"
	Then debo ver "2 / 3"

Scenario: Sumar cantidad de intentos 2
	Given entro al sitio de akinator
		And inicio juego
	When posteo pregunta "es nene?"
		And  posteo pregunta "es nene?"
	Then debo ver "3 / 3"

Scenario: Sumar cantidad de intentos 3
	Given entro al sitio de akinator
		And inicio juego
	When posteo pregunta "es nene?"
		And  posteo pregunta "es nene?"
		And  posteo pregunta "es nene?"
	Then debo ver "No mas preguntas"

Scenario: Reiniciar juego
	Given entro al sitio de akinator
		And inicio juego
	When selecciono "Marcia"
	Then debo ver "Reiniciar Juego"
	When selecciono "Reiniciar Juego"
	Then debo ver "Akinator"

