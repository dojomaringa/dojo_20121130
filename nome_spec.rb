require_relative "nome"

describe "Escolha o nome do seu filho" do 
	context "Calcula a distancia entre duas palavras" do		
		it "A distancia entre A e A deve ser 0" do
			Nome.calcula_distancia("A", "A").should == 0
		end	

		it "A distancia entre A e B deve ser 1" do
			Nome.calcula_distancia("A", "B").should == 1
		end

		it "A distancia entre C e B deve ser 1" do
			Nome.calcula_distancia("C", "B").should == 1
		end

		it "A distancia entre a e A deve ser 0" do
			Nome.calcula_distancia("a", "A").should == 0
		end

		it "A distancia entre Z e a deve ser 25" do
			Nome.calcula_distancia("Z", "a").should == 25
		end

		it "A distancia entre AA e AA deve ser 0" do
			Nome.calcula_distancia("AA", "AA").should == 0
		end

		it "A distancia entre AA e AC deve ser 2" do
			Nome.calcula_distancia("AA", "AC").should == 2
		end

		it "A distancia entre ABC e AB deve ser 13" do
			Nome.calcula_distancia("ABC", "AB").should == 13
		end

		it "A distancia entre ab e ABC deve ser 13" do
			Nome.calcula_distancia("ab", "ABC").should == 13
		end
	end

	context "Calcula nome menos distante" do
		it "Para [Amanda, Bruna, Camila] com palavra_base Jose deve escolher Bruna" do
			Nome.calcula_nome("Jose", ["Amanda", "Bruna", "Camila"]).should == "Bruna"
		end

		it "Para [Amanda, Bruna, Camila] com palavra_base Camila deve escolher Camila" do
			Nome.calcula_nome("Camila", ["Amanda", "Bruna", "Camila"]).should == "Camila"
		end
	end
end