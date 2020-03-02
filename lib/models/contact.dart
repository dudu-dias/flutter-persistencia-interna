class Contact{
  final String nome;
  final int numeroDaConta;

  Contact(this.nome, this.numeroDaConta);

  @override
  String toString() {
      return 'Contact{name: $nome, accountNumber: $numeroDaConta}';
  } 

}
