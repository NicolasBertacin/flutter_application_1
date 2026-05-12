import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const TelaCarregando();
  }
}

class TelaCarregando extends StatelessWidget {
  const TelaCarregando({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffff100b),
      body: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const TelaLogin()));
        },
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 18),
                child: LogoSenai(tamanho: 36),
              ),
              SizedBox(height: 78),
              SizedBox(
                width: 52,
                height: 52,
                child: CircularProgressIndicator(color: Colors.white, strokeWidth: 6),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TelaLogin extends StatelessWidget {
  const TelaLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 148,
              width: double.infinity,
              color: Colors.black,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: LogoSenai(tamanho: 35),
                  ),
                  SizedBox(height: 8),
                  Text('Login', style: TextStyle(color: Colors.white, fontSize: 15)),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(left: 20, right: 28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 35),
                    const Center(
                      child: Text(
                        'Faca Login para Acessar o Sistema!',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(height: 62),
                    const CampoTexto(nome: 'Email:', texto: 'Insira seu email:'),
                    const SizedBox(height: 23),
                    const CampoTexto(nome: 'Senha:', texto: 'Insira sua senha:', senha: true),
                    const SizedBox(height: 28),
                    const BotaoPreto(texto: 'Entrar'),
                    const SizedBox(height: 17),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const TelaCadastro()));
                          },
                          child: const Text('Cadastre-se', style: TextStyle(color: Colors.blue, fontSize: 12)),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const TelaRecuperar()));
                          },
                          child: const Text('Esqueceu a senha?', style: TextStyle(color: Colors.blue, fontSize: 12)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TelaCadastro extends StatelessWidget {
  const TelaCadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Cabecalho(cor: Color(0xffff100b), titulo: 'Cadastre-se'),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(left: 21, right: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 24),
                    CampoTexto(nome: 'Nome:', texto: 'Insira seu nome:'),
                    SizedBox(height: 20),
                    CampoTexto(nome: 'Sobrenome:', texto: 'Insira seu sobrenome:'),
                    SizedBox(height: 17),
                    CampoTexto(nome: 'E-mail:', texto: 'Insira seu email:'),
                    SizedBox(height: 21),
                    CampoTexto(nome: 'Telefone:', texto: 'Insira seu telefone:'),
                    SizedBox(height: 18),
                    CampoTexto(nome: 'Senha:', texto: 'Insira sua senha:', senha: true),
                    SizedBox(height: 19),
                    CampoTexto(nome: 'Confirmar senha:', texto: 'Insira sua senha:', senha: true),
                    SizedBox(height: 25),
                    BotaoPreto(texto: 'Cadastre-se'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TelaRecuperar extends StatelessWidget {
  const TelaRecuperar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Cabecalho(cor: Color(0xff0b2c91), titulo: 'Recuperacao de senha'),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(left: 25, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40),
                    Center(
                      child: Text(
                        'Insira seu e-mail para recuperar\na senha!',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(height: 52),
                    CampoTexto(nome: 'Email:', texto: 'Insira seu email:'),
                    SizedBox(height: 30),
                    BotaoPreto(texto: 'Cadastre-se'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Cabecalho extends StatelessWidget {
  const Cabecalho({required this.cor, required this.titulo, super.key});

  final Color cor;
  final String titulo;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      color: cor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: LogoSenai(tamanho: 35),
          ),
          const SizedBox(height: 8),
          Text(titulo, style: const TextStyle(color: Colors.white, fontSize: 15)),
        ],
      ),
    );
  }
}

class LogoSenai extends StatelessWidget {
  const LogoSenai({required this.tamanho, super.key});

  final double tamanho;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          children: List.generate(
            7,
            (index) => Container(
              margin: const EdgeInsets.only(bottom: 2),
              width: 7,
              height: 1,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(width: 4),
        Text(
          'SENAI',
          style: TextStyle(
            color: Colors.white,
            fontSize: tamanho,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            decorationColor: Colors.white,
            decorationThickness: 2,
          ),
        ),
        const SizedBox(width: 4),
        Column(
          children: List.generate(
            7,
            (index) => Container(
              margin: const EdgeInsets.only(bottom: 2),
              width: 7,
              height: 1,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class CampoTexto extends StatelessWidget {
  const CampoTexto({required this.nome, required this.texto, this.senha = false, super.key});

  final String nome;
  final String texto;
  final bool senha;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(nome, style: const TextStyle(fontSize: 12)),
        const SizedBox(height: 7),
        FractionallySizedBox(
          widthFactor: 0.96,
          alignment: Alignment.centerLeft,
          child: SizedBox(
            height: 34,
            child: TextField(
              obscureText: senha,
              style: const TextStyle(fontSize: 12),
              decoration: InputDecoration(
                hintText: texto,
                hintStyle: const TextStyle(fontSize: 10, color: Colors.grey),
                filled: true,
                fillColor: const Color(0xfff2f2f2),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.only(left: 10, bottom: 1),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class BotaoPreto extends StatelessWidget {
  const BotaoPreto({required this.texto, super.key});

  final String texto;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.94,
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 35,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
          ),
          onPressed: () {},
          child: Text(texto, style: const TextStyle(fontSize: 11)),
        ),
      ),
    );
  }
}
