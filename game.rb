def inicializar
	@@cont = 0
	@@max = 3
end

def sumar
	if @@cont < @@max
		@@cont +=1
	else
		fail "Te pasaste negr@"
	end		
end
