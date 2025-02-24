Feature: Atualizar perfil de usuário

As a usuário
I want to editar o meu perfil de usuário
So that eu possa customizar certos aspectos para que as pessoas me conheçam melhor

Scenario: Editar informações do perfil
        Given eu estou na minha página de perfil logado:
        And eu seleciono a opção "Editar Perfil"
        When eu atualizo os campos:
            | name   | username | email            | password | bio                                     |
            | luis   | luisx3   | luisx3@gmail.com | 123456   | Amante de livros e aventuras literárias |
        And eu salvo as alterações
        Then eu deveria ver a mensagem "Perfil atualizado com sucesso"
        And minha nova bio e exibida na página de perfil