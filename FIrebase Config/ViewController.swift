//
//  ViewController.swift
//  FIrebase Config
//
//  Created by Caio Fernandes on 19/04/21.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    let database = FirebaseDatabase.Database.database().reference()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        Firebase.Auth.auth().signIn(withEmail: "teste@teste.com", password: "123456", completion: { (user, error) in
            
            if error == nil {
                print("Login Sucess! \(String(describing: user?.user.email))")
            } else {
                print("Error: \(String(describing: error?.localizedDescription))")
            }
            
        })
        
        /* Logout
        do {
            try Firebase.Auth.auth().signOut()
        } catch {
            print("Error to logout")
        }
        */
        
        /* Criar usuário
        Firebase.Auth.auth().createUser(withEmail: "teste@teste.com", password: "123456", completion: { (user, error) in
            
            if error == nil {
                print("Sucess!")
            } else {
                print("Error: \(String(describing: error?.localizedDescription))")
            }
            
        })
        
        
        //Verificar se usuário está logado
         
        Firebase.Auth.auth().addStateDidChangeListener { (auth, user) in
            if let loggedUser = user {
                print("User logged. \(String(describing: loggedUser.email))")
            } else {
                print("User logged out")
            }
        }*/
        
        /* Criar estrutura no banco de dados
        //let usuarios = database.child("usuarios")
        //usuarios.child("001").child("nome").setValue("caio")
        //usuarios.child("002").child("nome").setValue("maria")
         
        //usuarios.removeValue()
        
        //Alterar valor
         
        let pontuacao = database.child("pontuacao")
        pontuacao.setValue("100")
        
         
        // Pegar valor
        pontuacao.observe(DataEventType.value, with: { (dados) in
            let pontos = dados.value as! String
            self.label.text = pontos
        })*/
    }
}

