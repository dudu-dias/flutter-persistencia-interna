class Contact{
  final int id;
  final String nome;
  final int numeroDaConta;

  Contact(
  this.id,
  this.nome, 
  this.numeroDaConta
  
  );

  @override
  String toString() {
      return 'Contact{id: $id, nome: $nome, Número da conta: $numeroDaConta}';
  } 

}
