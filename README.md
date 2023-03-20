- Projeto criado para o desafio Dimensa
- Foi utilizado o gerenciador de estado GetX e também a estrutura do GetX Pattern
- Foi utilizado a API do The Movie Database
- Foi escolido o filme Tudo em Todo o Lugar ao Mesmo Tempo
- Foi utilizado a versão 3.9.0-8.0.pre.12 do flutter e a versão 3.0.0-322.0.dev

- Passos para executar:
1° Dar um flutter pub get 
2° Conectar um celular com o modo desenvolvedor habilitado ou ter um emulador no Andoid Studio
3° No terminal digitar o seguinte comando "flutter run"

- Passos para criar um executavel apk
1° No terminal executar o seguinte comando "flutter build apk --release"
2° No diretorio do windows, procure a pasta do projeto movie_app e procure o seguinte caminho "local aonde esta o projeto\movie_app\build\app\outputs\apk\release"
3° Copie o arquivo "app-release.apk" e cole no seu dispositivo
4° Procure dentro dos arquivos do dispositivo o aplicativo e instale o apk

-Trocar o sdk no pubspec.yaml
environment:
  sdk: ">=3.0.0-322.0.dev <4.0.0"
