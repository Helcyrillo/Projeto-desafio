# Projeto de Automação de Testes de API com Pytest-BDD 🚀

## ✨ Sobre este Projeto
Este é o nossos testes automatizados para a API do DemoQA. Usamos Python, a dupla dinâmica Pytest-BDD e Requests, e para deixar tudo ainda mais visual, geramos relatórios super completos com o Allure Reports. O objetivo? Garantir que tudo na API funcione direitinho! 

## 📂 Estrutura do Projeto
```bash
project-desafio-qa-acc/
├── tests/
│   ├── api/
│   │   ├── test_create_user.py # Testes para criar novos usuários
│   │   ├── test_auth.py # Testes de autenticação
│   │   ├── test_books.py # Testes relacionados a livros
│   │   ├── test_reservation.py # Testes de reserva
│   │   ├── test_user_details.py # Testes para detalhes do usuário
│   ├── features/
│   │   ├── api_create_user.feature # Cenários BDD para criar usuários
│   │   ├── api_auth.feature # Cenários BDD para autenticação
│   │   ├── api_books.feature # Cenários BDD para livros
│   │   ├── api_reservation.feature # Cenários BDD para reserva
│   │   ├── api_user_details.feature # Cenários BDD para detalhes do usuário
├── utils/
│   ├── api_client.py      # Funções para fazer as chamadas na API
│   ├── data_generator.py  # Ferramentas para criar dados dinamicamente
│   ├── config.py          # Onde guardamos os endereços da API e outras configurações (URLs, headers)
├── conftest.py  # Configurações especiais do Pytest
├── pytest.ini  # Mais configurações do Pytest
├── requirements.txt  # A lista de tudo que precisamos instalar
├── reports/  # Onde os relatórios do Allure são gerados
├── README.md  # Este arquivo que você está lendo!
```

## ⚙️ Preparando o Terreno: Como Configurar o Ambiente
### O que você vai precisar:

- Python 3.8 ou mais novo
- `pip` (gerenciador de pacotes do Python) instalado
- Git (para baixar o projeto)

### 🛠️ Mãos à Obra na sua Máquina (Mac/Linux):
```bash

# Clonar o repositório
git https://github.com/Helcyrillo/Projeto-desafio.git
cd Projeto-desafio

# Criando um ambiente virtual isolado (boa prática!)

python3 -m venv venv
source venv/bin/activate

# Instalar dependências que o projeto precisa

pip install -r requirements.txt
```

### 🛠️  **Windows**
```powershell
# Clonar o repositório
```
git clone https://github.com/Helcyrillo/Projeto-desafio.git
cd seu-repositorio

# Criando um ambiente virtual isolado (boa prática!)
python -m venv venv
venv\Scripts\activate

# Instalar dependências
pip install -r requirements.txt
```
```
## 🚀 Vamos para execução dos Testes
### Como rodar todos os testes
```bash
pytest --alluredir=reports
```

### Rodar um teste específico
```bash
pytest tests/api/test_create_user.py --alluredir=reports

# Como exemplo: 
# pytest tests/api/(nome do teste API) --alluredir=reports
# pytest tests/ui/(nome do teste UI) --alluredir=reports
```

# Precisamos verifique se o Allure está instalado globalmente
allure --version

# Se não estiver instalado:
brew install allure  # MacOS
scoop install allure # Windows
``` 
```
## Para ver os relatórios bonitos do Allure:

```bash
allure serve reports
```

## 🌍 Onde as Coisas se Encontram: Configurações Globais
As configurações da nossa API ficam guardadinhas no arquivo utils/config.py. 
Lá você encontra coisas como:

```python
BASE_URL = "[https://demoqa.com](https://demoqa.com)"
```

## 🛠️ Se Algo Der Errado: Debugging e Solução de Problemas
### Se o Pytest não estiver achando os arquivos .feature:
```bash
pytest --rootdir=. --cache-clear tests/api/test_create_user.py
```




