Feature: Validamos interfaz

Scenario: Ingreso
	Given entro al sitio de akinator
	Then debo ver "Akinator"
		And debo ver "es chique?"
		And debo ver "Posta!?"
		And debo ver "Yamila"

Scenario: Pregunta
	Given entro al sitio de akinator
	When posteo pregunta
	Then debo ver "Verdadero"
