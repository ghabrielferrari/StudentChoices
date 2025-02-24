//
//  main.swift
//  StudentChoices
//
//  Created by Aluno 17 on 24/02/25.
//

import Foundation


print("Escolha uma opcao: (1- iniciar, 2- sair)")

while true {
    
    let escolha = readLine()
        
        if escolha == "2"{
            print("Jogo Encerrado")
            break
        }
    
    print("Iniciando...")
    print("Bem-vindo ao Student Choices, preencha os dados de seu personagem: ")

    print("Nome: ")
    if let nome = readLine() {
        print("Gênero: ")
        if let genero = readLine() {
            print("Faculdade: ")
            if let faculdade = readLine() {
                print("Curso: ")
                if let curso = readLine() {
                    
                    print("\n📜 Dados do personagem 📜")
                    print("Nome: \(nome)")
                    print("Gênero: \(genero)")
                    print("Faculdade: \(faculdade)")
                    print("Curso: \(curso)")
                }
            }
        }
    }

    
}
