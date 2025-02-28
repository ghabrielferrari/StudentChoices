//
//  main.swift
//  Student Choices
//
//  Created by Felipe Alberto on 24/02/25.
//

import Foundation

print ("Bem vindo ao Student Choices!! \nCrie seu personagem!")
// criacao: nome, genero, idade, universidade
var NameStudent : String = ""
var Gender : String? = nil
// declaro como string opcional armazena entrada tipo string e tipo nil
var auth = false
// variavel de autenticacao do loops
var Age : Int = 0
var University : String = ""
// declarei variavel para vida iniciando em 5
var Life : Int = 5
var Choices : String = ""

// definindo funcao para funcionamento perca de vida
func Lostlife(){
// nao tem -> pois nao necessariamente quero que ele retorne um int ou string, apenas um print
    //faço valor de Life -1
    Life -= 1
    print("Você perdeu um ponto de foco, seu foco restante é: \(Life)")
    // retorno Life
}

// definindo funcao para funcionamento ganho de vida
func LifeGain() {
    //faço valor de Life +1
    Life += 1
    print("Você ganhou um ponto de foco, seu foco atual é: \(Life)")
    // retorno Life
}

// -> (retorno) int = tipo de retorno que dara
// como essa funcao nao retorna nada apenas printa não é necessario ->
// criacao de funcao para o final do jogo por morte sem vidas
func EndGame(){
    if Life == 0{
        print("""
            Você falhou!
            Suas escolhas te dão maior chance de não conseguir ser aprovado no semestre.
            """)
    }
}

// recepcao nome personagem e validacao
while NameStudent.isEmpty{
// continua executando enquanto o nome for uma string vazia
    print("Insira o nome: \n")
    if let input = readLine(), !input.isEmpty{
            // if para ler a linha (readLine), guardando dentro da var
            // verifica se a entrada não está vazia
            NameStudent = String(input)
            print("Olá, \(NameStudent)")
        }
    else{
        print("informe um nome para seu personagem")
    }
}
while !auth {
// garante que o loop continue até que uma escolha válida seja feita
    
print("Selecione o gênero: \n1. Masculino\n2. Feminino\n3. Outro")

if let input = readLine(), let choice = Int(input) {
// crio variavel provisoria choice, para comparar choice com os casos
    switch choice {
        case 1:
            Gender = "Masculino"
            //armazeno a escolha string na gender
            auth = true
            //autentico como true a var auth para validar escolha
        case 2:
            Gender = "Feminino"
            auth = true
        case 3:
            Gender = "Outro"
            auth = true
        default:
            // se escolha não for 1,2,3 executa aqui
            print("Insira os numerais 1,2 ou 3 referente ao genero desejado.")
    }
}
    // verifico se o valor da entrada é numero int ou não default
    else {
        print("Insira os numerais 1,2 ou 3 referente ao genero desejado.")
    }
}

// if para mudar de outro para neutro
if Gender == "Outro" {
    Gender = "Neutro"
}

var pronums : String = ""
if let gen = Gender {
    if gen == "Neutro"{
        pronums = "e"
    }
    else if gen == "Masculino"{
        pronums = "o"
    }
    else if gen == "Feminino"{
        pronums = "a"
    }
}
// if para verificacao e definicao dos pronomes a partir do genero do personagem

while Age <= 0 {
    print ("Qual é a sua Idade?")
    if let input = readLine(), !input.isEmpty, let idade = Int(input){
        // le o input, verifica se não é nulo, cria a variavel temp. idade int que recebe o input
        if idade < 16 {
        // faz validacao da idade
            print("tem certeza de que você é um universitário?!")
        }else{
            Age = idade
        // adiciona para a variavel, o valor da variavel temp.
        }
    }
    else{print("Insira um valor de forma numérica para a idade d\(pronums) \(NameStudent).")}
}

while University.isEmpty{
// continua executando enquanto o nome for uma string vazia
    print("Insira o nome da universidade: \n")
        if let input = readLine(), !input.isEmpty {
            // if para ler a linha (readLine)
            // verifica se a entrada não está vazia
            University = input
            print("Bem vindo a \(University), \(NameStudent)")
        }
    else{
        print("informe o nome da universidade")
    }
}
if let SelectedGen = Gender {
print("Os dados do seu personagem são: \n nome: \(NameStudent);\n Idade: \(Age);\n Genero: \(SelectedGen);\n Universidade: \(University).")
}

Thread.sleep(forTimeInterval: 8)
// pausa execucao por 8s
print("  **************\nRealizando Matricula...\n  **************")
Thread.sleep(forTimeInterval: 4)
// pausa execucao por 5s
print("Matricula Realizada!!\n  **************")
// gender está com ! pois é um valor nil, o swift nao interpreta, para valores assim utilizar if let para verificacao do valor (como foi feito)
// retorna dados

/*Thread.sleep(forTimeInterval: 4)
print("""
A primeira semana de aula se inicia, e o grande desafio d\(pronums) \(NameStudent) é sobreviver aos trotes.
Daqui pra frente você terá que decidir como será tal tragetória,
definir qual tipo de aluno quer se tornar e consequentemente quais notas tirar.
Cada decisão pode impactar positivamente ou negativamente no seu foco (que será sempre atualizado ao final de cada semana).
""")
// """ para multi line string
Thread.sleep(forTimeInterval: 4)
print("  **************\n \n  **************")
print("\(NameStudent) chega na maior impolgação, e se depara com a dificil escolha: \n1. Sair para beber com os calouros \n2. Participar da aula de fisica mega legal \n3. Ver a aula e depois sair para beber")
print("SEU FOCO: \(Life)")
// ouve a entrada, cria "choice" que vai receber um Int (1,2,3)
if let input = readLine(), let choice = Int(input){
    switch choice{
        case 1:
            Choices = "Negativo"
        case 2:
            Choices = "Positivo"
        case 3:
            Choices = "Neutro"
    default:
        print("teste")
        
    }
}else{
    print("Insira os numerais 1,2 ou 3 referente a alternativa desejada")
}

if Choices == "Negativo"{
    Lostlife()
}*/

print("Carregando...")
Thread.sleep(forTimeInterval: 4)
print("  **************\n \n  **************")
print("A segunda semana começou! Novos desafios e oportunidades surgem no caminho de \(NameStudent). Agora, mais do que nunca, é preciso equilíbrio entre estudos e vida social.")
print("\(NameStudent) continua sua jornada universitária, e se depara com outra escolha: \n1. Iniciar projeto de estudos \n2. Ir para a festa da faculdade \n3. Estudar exageradamente no fim de semana para poder curtir a festa")
print("SEU FOCO: \(Life)")
if let input = readLine(), let choice = Int(input){
    switch choice{
        case 1:
            Choices = "Positivo"
            print("Carregando...")
            Thread.sleep(forTimeInterval: 2)
            print("Se dedicou aos estudos, ganhou foco!")
            if Life < 5{
                LifeGain()
            }
        case 2:
            Choices = "Negativo"
            print("Carregando...")
            Thread.sleep(forTimeInterval: 2)
            print("Não se dedicou aos estudos, perdeu foco!")
            Lostlife()
        case 3:
            Choices = "Negativo"
            print("Carregando...")
            Thread.sleep(forTimeInterval: 2)
            print("Exagerou nos estudos, cuidado com seu mental, perdeu foco!")
            Lostlife()
    default:
        print("Opção inválida. Escolha 1, 2 ou 3.")
    }
} else{
    print("Insira os numerais 1,2 ou 3 referente a alternativa desejada")
}

print("Carregando...")
Thread.sleep(forTimeInterval: 4)
print("  **************\n \n  **************")
print("\(NameStudent) começa a sentir o peso da rotina acadêmica e percebe que algo não está certo. O cansaço bate forte, a cabeça dói, e a motivação parece ter sumido. Agora, é preciso tomar uma decisão difícil para lidar com essa fase: \n1. Tirar um dia de descanso para recuperar as energias e voltar com tudo \n2. Ignorar o cansaço e continuar estudando, afinal, não há tempo a perder \n3. Conversar com um amigo ou professor para buscar apoio e conselhos")
print("SEU FOCO: \(Life)")

if let input = readLine(), let choice = Int(input){
    switch choice{
        case 1:
            Choices = "Neutro"
            Thread.sleep(forTimeInterval: 1)
            print("O descanso não avançou nos estudos, mas evitou desgaste excessivo, manteve o foco")
        case 2:
            Choices = "Negativo"
            Thread.sleep(forTimeInterval: 1)
            print("Forçou nos estudos, seu mental está com problemas, perdeu foco.")
            Lostlife()
        case 3:
            Choices = "Positivo"
            Thread.sleep(forTimeInterval: 1)
            print("Buscou apoio ajuda a aliviar a pressão e recuperou motivação, ganhou foco.")
            if Life < 5{
                LifeGain()
            }
    default:
        print("Opção inválida. Escolha 1, 2 ou 3.")
    }
} else{
    print("Insira os numerais 1,2 ou 3 referente a alternativa desejada")
}

print("Carregando...")
Thread.sleep(forTimeInterval: 4)
print("  **************\n \n  **************")
print("\(NameStudent) está enfrentando dificuldades nos relacionamentos pessoais. Um desentendimento com um amigo próximo ou parceiro(a) começa a afetar seu foco e a pressão aumenta. Agora, é hora de tomar uma decisão difícil sobre como lidar com a situação: \n1. Tentar resolver a situação conversando e buscando uma solução pacífica \n2. Ignorar o problema e focar somente nos estudos, esperando que tudo se resolva por si mesmo \n3. Terminar a amizade ou relacionamento para focar 100% em seus objetivos acadêmicos")
print("SEU FOCO: \(Life)")

if let input = readLine(), let choice = Int(input){
    switch choice{
        case 1:
            Choices = "Positivo"
            Thread.sleep(forTimeInterval: 2)
            print("Resolveu o problema de forma saudável, melhorando o bem-estar emocional de \(NameStudent), ganhou foco.")
            if Life < 5{
                LifeGain()
            }
        case 2:
            Choices = "Negativo"
            Thread.sleep(forTimeInterval: 2)
            print("Ignorou os sentimentos e gerou mais frustração e aumentou o estresse, perdeu foco.")
            Lostlife()
        case 3:
            Choices = "Negativo"
            Thread.sleep(forTimeInterval: 2)
            print("A decisão aliviou \(NameStudent) momentaneamente, mas também gerou arrependimento e perda de conexões importantes, afetando o bem-estar, perdeu foco.")
            Lostlife()
    default:
        print("Opção inválida. Escolha 1, 2 ou 3.")
    }
} else{
    print("Insira os numerais 1,2 ou 3 referente a alternativa desejada")
}

Thread.sleep(forTimeInterval: 4)
print("  **************\n \n  **************")
print("Mais uma semana se inicia! Você está aguentando firme, superando cada desafio, e já está ficando expert em equilibrar os estudos com as adversidades. Vamos lá, \(NameStudent), o caminho não é fácil, mas o sucesso está logo ali. Hora de continuar sua jornada!")
print("Uma proposta de estágio chegou até você, \(NameStudent)! Esta é a chance de ganhar experiência prática, mas também pode exigir que você se dedique mais ao trabalho do que aos estudos. Agora, é hora de tomar uma decisão importante: \n1. Aceitar a oportunidade de estágio e ganhar experiência prática, mas arriscar menos tempo para os estudos \n2. Recusar o estágio para focar integralmente nos estudos e nas notas \n3. Pedir um tempo para pensar, tentando equilibrar estágio e estudos de forma sábia")
print("SEU FOCO: \(Life)")

if let input = readLine(), let choice = Int(input){
    switch choice{
        case 1:
            Choices = "Negativo"
            Thread.sleep(forTimeInterval: 2)
            print("O estágio pode ser uma ótima chance de aprendizado, mas o tempo dedicado ao trabalho diminuiu o foco nos estudos de \(NameStudent), perdeu foco.")
            Lostlife()
        case 2:
            Choices = "Positivo"
            Thread.sleep(forTimeInterval: 2)
            print("Embora \(NameStudent) tenha perdido a oportunidade de ganhar experiência real no mercado de trabalho, ele se dedicou completamente aos estudos, ganhou foco.")
            Lostlife()
        case 3:
            Choices = "Neutro"
            Thread.sleep(forTimeInterval: 2)
            print("Refletiu sobre a decisão que ajudou a tomar uma escolha mais equilibrada, preservando o foco e evitando decisões precipitadas, manteve foco.")
    default:
        print("Opção inválida. Escolha 1, 2 ou 3.")
    }
} else{
    print("Insira os numerais 1,2 ou 3 referente a alternativa desejada")
}

Thread.sleep(forTimeInterval: 4)
print("  **************\n \n  **************")
print("Surge uma oportunidade para \(NameStudent): um evento social está acontecendo no campus, com várias atividades para se enturmar. Você precisa decidir como agir: /n1. Participar do evento social, conversar com novas pessoas e tentar fazer amigos para melhorar sua vida universitária \n2. Focar nos estudos, mesmo que isso signifique perder a chance de conhecer pessoas novas \n3. Participar do evento, mas tentar encontrar um grupo de pessoas que compartilhem seu amor por café e programação, assim você faz amigos com interesses similares")
print("SEU FOCO: \(Life)")

if let input = readLine(), let choice = Int(input){
    switch choice{
        case 1:
            Choices = "Positivo"
            Thread.sleep(forTimeInterval: 2)
            print("\(NameStudent) participou do evento, e consequentemente fez novas amizades, melhorando seu mental, ganhou foco.")
            if Life < 5{
                LifeGain()
            }
        case 2:
            Choices = "Neutro"
            Thread.sleep(forTimeInterval: 2)
            print("Por mais que \(NameStudent) tenha perdido a oportunidade de fazer novas amizades, ele manteve o foco nos estudos, manteve foco")
        case 3:
            Choices = "Neutro"
            Thread.sleep(forTimeInterval: 2)
            print("\(NameStudent) fez boas amizades para o seu crescimento acadêmico e pessoal, manteve foco.")
    default:
        print("Opção inválida. Escolha 1, 2 ou 3.")
    }
} else{
    print("Insira os numerais 1,2 ou 3 referente a alternativa desejada")
}

Thread.sleep(forTimeInterval: 4)
print("  **************\n \n  **************")
print("\(NameStudent) se encontra diante de uma prova decisiva. Essa prova pode determinar seu desempenho no semestre inteiro. O problema é que \(NameStudent) se sente um pouco inseguro, e agora precisa decidir como agir: \n1. Estudar intensamente durante a noite toda para garantir que esteja preparado, mesmo que isso afete o sono \n2. Revisar o conteúdo e descansar, confiando no seu conhecimento e no tempo de estudo já dedicado \n3. Fazer uma pausa e sair para dar uma caminhada, tentando aliviar a ansiedade antes da prova")
print("SEU FOCO: \(Life)")

if let input = readLine(), let choice = Int(input){
    switch choice{
        case 1:
            Choices = "Negativo"
            Thread.sleep(forTimeInterval: 2)
            print("Embora \(NameStudent) tenha optado por estudar mais, a falta de sono diminuiu sua concentração e o desempenho na prova, perdeu foco.")
        case 2:
            Choices = "Neutro"
            Thread.sleep(forTimeInterval: 2)
            print("O descanso adequado ajudou a manter a mente fresca e \(NameStudent) fez a prova com mais clareza e concentração, manteve foco.")
        case 3:
            Choices = "Neutro"
            Thread.sleep(forTimeInterval: 2)
            print("A caminhada ajudou a aliviar a ansiedade e melhorou a concentração, permitindo que \(NameStudent) retornasse aos estudos com mais clareza mental, manteve foco.")
    default:
        print("Opção inválida. Escolha 1, 2 ou 3.")
    }
} else{
    print("Insira os numerais 1,2 ou 3 referente a alternativa desejada")
}

