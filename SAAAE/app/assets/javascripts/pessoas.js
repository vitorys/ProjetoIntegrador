$(document).ready(function() {
  var cidades;
  $('#pessoa_pessoa_cidade').parent().hide();
  cidades = $('#pessoa_pessoa_cidade').html();
  return $('#pessoa_pessoa_estado').change(function() {
    var estado, escaped_estado, opcoes;
    estado = $('#pessoa_pessoa_estado :selected').text();
    
    escaped_estado = estado.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
    console.log(escaped_estado)
    opcoes = $(cidades).filter("optgroup[label=" + escaped_estado + "]").html();
    console.log(opcoes)

    if (opcoes) {
      $('#pessoa_pessoa_cidade').html(opcoes);
      return $('#pessoa_pessoa_cidade').parent().show();
    } else {
      $('#pessoa_pessoa_cidade').empty();
      return $('#pessoa_pessoa_cidade').parent().hide();
    }
  });
});