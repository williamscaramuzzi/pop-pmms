import 'dart:convert';

class Pop {
  String id, processo;
  String? procedimento;
  bool favoritado;

  ///false por default
  Pop({required this.id,
    required this.processo,
    this.procedimento,
    required this.favoritado});

  String getFileName() {
    String procedimentoFormat;
    this.procedimento != null
        ? procedimentoFormat = "${this.procedimento}"
        : procedimentoFormat = "";
    return "${this.id}_${this.processo}_$procedimentoFormat.pdf";
  }

  factory Pop.fromMap(Map<String, dynamic> umObjMap) {
        return new Pop(
        id: umObjMap['id'] as String,
        processo: umObjMap['processo'] as String,
        procedimento: umObjMap['procedimento'] as String?,
        favoritado: umObjMap['favoritado'] as bool
    );
  }

  ///Método de instancia pra pegar um pop e fazer uma string nesse formato:
  ///'{"id": "3.01.01", "processo": "Abordagem", "procedimento": "em motocicletas", "favoritado": false}'
  Map<String, dynamic> toMap() {
    Map<String, dynamic> mapa = {
      'id': this.id,
      'processo': this.processo,
      'procedimento': this.procedimento,
      'favoritado': this.favoritado,
    };
    return mapa;
  }

  ///Método de classe pra pegar uma lista de pops List<Pop> e transformar em uma List<String>
  static List<String> encodeToList(List<Pop> listaPops) {
    List<String> retorno = listaPops.map((e) => json.encode(e.toMap())).toList();
    return retorno;
  }

  ///Método de classe pra pegar uma List<String> gettada do SharedPrefs e transformar em List<Pop>
  static List<Pop> decodeFromList(List<String> listaoStringGettado) {
    List<Pop> retorno = listaoStringGettado.map((item) => Pop.fromMap(json.decode(item))).toList();
    return retorno;
  }


  static List<Pop> getLista() {
    List<Pop> minhaLista = [
      Pop(
          id: "1.01.01",
          processo: "Atendimento-de-Ocorrencia-Pos-Crime-Residencial",
          favoritado: false,
          procedimento: null),
      Pop(
          id: "1.01.01",
          processo: "Escolta",
          favoritado: false,
          procedimento:
          "Verificacao-das-Condicoes-Gerais-da-Missao-e-do-detento"),
      Pop(
          id: "1.01.02",
          processo: "Escolta",
          favoritado: false,
          procedimento: "Embarque-de-detento"),
      Pop(
          id: "1.01.03",
          processo: "Escolta",
          favoritado: false,
          procedimento: "Transporte-de-detento"),
      Pop(
          id: "1.01.04",
          processo: "Escolta",
          favoritado: false,
          procedimento: "desembarque-do-detento"),
      Pop(
          id: "1.01.05",
          processo: "Escolta",
          favoritado: false,
          procedimento: "Apresentacao-de-detento-Em-Juizo"),
      Pop(
          id: "1.01.06",
          processo: "Escolta",
          favoritado: false,
          procedimento: "de-detento-Para-Hospital"),
      Pop(
          id: "1.01.07",
          processo: "Escolta",
          favoritado: false,
          procedimento: "de-detento-Velorio"),
      Pop(
          id: "1.03.01",
          processo: "Uso-do-Espargidor-de-Gas-de-Pimenta",
          favoritado: false,
          procedimento: null),
      Pop(
          id: "1.04.01",
          processo: "Uso-do-Bastao-Tonfa",
          favoritado: false,
          procedimento: "Abordagem-Arma-Branca"),
      Pop(
          id: "1.04.02",
          processo: "Uso-do-Bastao-Tonfa",
          favoritado: false,
          procedimento: "Situacoes-Adversas"),
      Pop(
          id: "1.05.01",
          processo: "Manutencao-1-Escalao",
          favoritado: false,
          procedimento: "Revolveres-Inspecao"),
      Pop(
          id: "1.05.02",
          processo: "Manutencao-1-Escalao",
          favoritado: false,
          procedimento: "Revolveres-Limpeza"),
      Pop(
          id: "1.06.01",
          processo: "Manutencao-1-Escalao",
          favoritado: false,
          procedimento: "Pistolas-Inspecao"),
      Pop(
          id: "1.06.02",
          processo: "Manutencao-1-Escalao",
          favoritado: false,
          procedimento: "Pistolas-Limpeza"),
      Pop(
          id: "1.07.01",
          processo: "Uso-da-Forca",
          favoritado: false,
          procedimento: "Envolvendo-Pessoa-Atividade-Suspeita"),
      Pop(
          id: "1.07.02",
          processo: "Uso-da-Forca",
          favoritado: false,
          procedimento: "Envolvendo-Pessoa-Fundada-Suspeita"),
      Pop(
          id: "1.07.03",
          processo: "Uso-da-Forca",
          favoritado: false,
          procedimento: "Envolvendo-Infrator-Arma-Branca"),
      Pop(
          id: "1.07.04",
          processo: "Uso-da-Forca",
          favoritado: false,
          procedimento: "Envolvendo-Pessoa-Ma-Visualizacao-das-Maos"),
      Pop(
          id: "1.07.05",
          processo: "Uso-da-Forca",
          favoritado: false,
          procedimento: "Envolvendo-Pessoa-Arma-de-Fogo"),
      Pop(
          id: "2.01.01",
          processo: "Patrulhamento-Motociclistico",
          favoritado: false,
          procedimento: "Deslocamento-e-Parada-Tres-Ppmm-e-Tres-Motocicletas"),
      Pop(
          id: "2.01.01",
          processo:
          "Primeira-Intervencao-Em-Crises-Envolvendo-Atiradores-Ativos",
          favoritado: false,
          procedimento: null),
      Pop(
          id: "2.01.02",
          processo: "Patrulhamento-Motociclistico",
          favoritado: false,
          procedimento: "Abordagem-a-Transeunte-Tres-Ppmm-e-Tres-Motocicletas"),
      Pop(
          id: "2.01.03",
          processo: "Patrulhamento-Motociclistico",
          favoritado: false,
          procedimento:
          "Abordagem-a-Motocicleta-Tres-Ppmm-e-Tres-Motocicletas"),
      Pop(
          id: "2.01.04",
          processo: "Patrulhamento-Motociclistico",
          favoritado: false,
          procedimento: "Abordagem-a-Veiculo-Tres-Ppmm-e-Tres-Motocicletas"),
      Pop(
          id: "2.01.05",
          processo: "Patrulhamento-Motociclistico",
          favoritado: false,
          procedimento: "Abordagem-a-Caminhao-Tres-Ppmm-e-Tres-Motocicletas"),
      Pop(
          id: "2.01.06",
          processo: "Patrulhamento-Motociclistico",
          favoritado: false,
          procedimento: "Abordagem-a-Onibus-Tres-Ppmm-e-Tres-Motocicletas"),
      Pop(
          id: "2.01.07",
          processo: "Patrulhamento-Motociclistico",
          favoritado: false,
          procedimento: "Deslocamento-Parada-Quatro-Ppmm-Quatro-Motocicletas"),
      Pop(
          id: "2.01.08",
          processo: "Patrulhamento-Motociclistico",
          favoritado: false,
          procedimento:
          "Abordagem-a-Transeunte-Quatro-Ppmm-Quatro-Motocicletas"),
      Pop(
          id: "2.01.09",
          processo: "Patrulhamento-Motociclistico",
          favoritado: false,
          procedimento:
          "Abordagem-a-Motocicleta-Quatro-Ppmm-Quatro-Motocicletas"),
      Pop(
          id: "2.01.10",
          processo: "Patrulhamento-Motociclistico",
          favoritado: false,
          procedimento:
          "Abordagem-a-Veiculo-de-Passeio-Quatro-Ppmm-Quatro-Motocicletas"),
      Pop(
          id: "2.01.11",
          processo: "Patrulhamento-Motociclistico",
          favoritado: false,
          procedimento: "Abordagem-a-Caminhao-Quatro-Ppmm-Quatro-Motocicletas"),
      Pop(
          id: "2.01.12",
          processo: "Patrulhamento-Motociclistico",
          favoritado: false,
          procedimento: "Abordagem-a-Onibus-Quatro-Ppmm-Quatro-Motocicletas"),
      Pop(
          id: "2.01.13",
          processo: "Patrulhamento-Motociclistico",
          favoritado: false,
          procedimento:
          "Deslocamento-e-Parada-Quatro-Ppmm-Quatro-Motocicletas"),
      Pop(
          id: "2.01.14",
          processo: "Patrulhamento-Motociclistico",
          favoritado: false,
          procedimento:
          "Abordagem-a-Transeuntes-Quatro-Ppmm-Tres-Motocicletas"),
      Pop(
          id: "2.01.15",
          processo: "Patrulhamento-Motociclistico",
          favoritado: false,
          procedimento:
          "Abordagem-a-Motocicleta-Quatro-Ppmm-Tres-Motocicletas"),
      Pop(
          id: "2.01.16",
          processo: "Patrulhamento-Motociclistico",
          favoritado: false,
          procedimento:
          "Abordagem-a-Veiculo-de-Passeio-Quatro-Ppmm-Tres-Motocicletas"),
      Pop(
          id: "2.01.17",
          processo: "Patrulhamento-Motociclistico",
          favoritado: false,
          procedimento: "Abordagem-a-Caminhao-Quatro-Ppmm-Tres-Motocicletas"),
      Pop(
          id: "2.01.18",
          processo: "Patrulhamento-Motociclistico",
          favoritado: false,
          procedimento: "Abordagem-a-Onibus-Quatro-Ppmm-Tres-Motocicletas"),
      Pop(
          id: "2.01.19",
          processo: "Patrulhamento-Motociclistico",
          favoritado: false,
          procedimento: "Deslocamento-e-Parada-Cinco-Ppmm-Quatro-Motocicletas"),
      Pop(
          id: "2.01.20",
          processo: "Patrulhamento-Motociclistico",
          favoritado: false,
          procedimento: "Abordagem-Transeunte-Cinco-Ppmm-Quatro-Motocicletas"),
      Pop(
          id: "2.01.21",
          processo: "Patrulhamento-Motociclistico",
          favoritado: false,
          procedimento: "Abordagem-Motocicleta-Cinco-Ppmm-Quatro-Motocicletas"),
      Pop(
          id: "2.01.22",
          processo: "Patrulhamento-Motociclistico",
          favoritado: false,
          procedimento:
          "Abordagem-Veiculo-de-Passeio-Cinco-Ppmm-Quatro-Motocicletas"),
      Pop(
          id: "2.01.23",
          processo: "Patrulhamento-Motociclistico",
          favoritado: false,
          procedimento: "Abordagem-Caminhao-Cinco-Ppmm-Quatro-Motocicletas"),
      Pop(
          id: "2.01.24",
          processo: "Patrulhamento-Motociclistico",
          favoritado: false,
          procedimento: "Abordagem-Onibus-Cinco-Ppmm-Quatro-Motocicletas"),
      Pop(
          id: "2.02.01",
          processo: "Acompanhamento-e-Cerco-a-Veiculo",
          favoritado: false,
          procedimento: null),
      Pop(
          id: "2.02.01",
          processo: "Ocorrencias-Rurais-Alto-Potencial-Contra-o-Patrimonio",
          favoritado: false,
          procedimento: "Confirmacao-da-Ocorrencia"),
      Pop(
          id: "2.02.02",
          processo: "Ocorrencias-Rurais-Alto-Potencial-Contra-o-Patrimonio",
          favoritado: false,
          procedimento: "-Acionamento-Plano-de-defesa"),
      Pop(
          id: "2.02.03",
          processo: "Ocorrencias-Rurais-Alto-Potencial-Contra-o-Patrimonio",
          favoritado: false,
          procedimento: "Gabinete-de-Gestao"),
      Pop(
          id: "2.02.04",
          processo: "Ocorrencias-Rurais-Alto-Potencial-Contra-o-Patrimonio",
          favoritado: false,
          procedimento: "Coleta-de-dados"),
      Pop(
          id: "2.02.05",
          processo: "Ocorrencias-Rurais-Alto-Potencial-Contra-o-Patrimonio",
          favoritado: false,
          procedimento: "Bloqueios"),
      Pop(
          id: "2.02.06",
          processo: "Ocorrencias-Rurais-Alto-Potencial-Contra-o-Patrimonio",
          favoritado: false,
          procedimento: "Barreiras-Policiais"),
      Pop(
          id: "2.02.07",
          processo: "Ocorrencias-Rurais-Alto-Potencial-Contra-o-Patrimonio",
          favoritado: false,
          procedimento: "Entrevista-Com-Testemunhas-Refens-e-Criminosos"),
      Pop(
          id: "2.03.01",
          processo: "Bloqueio-em-Via-Publica",
          favoritado: false,
          procedimento: "Planejamento-do-Bloqueio"),
      Pop(
          id: "2.03.02",
          processo: "Bloqueio-em-Via-Publica",
          favoritado: false,
          procedimento: "Montagem-do-Bloqueio"),
      Pop(
          id: "2.03.03",
          processo: "Bloqueio-em-Via-Publica",
          favoritado: false,
          procedimento: "Comando-do-Bloqueio"),
      Pop(
          id: "2.03.04",
          processo: "Bloqueio-em-Via-Publica",
          favoritado: false,
          procedimento: "Anotacoes-do-Bloqueio"),
      Pop(
          id: "2.03.05",
          processo: "Bloqueio-em-Via-Publica",
          favoritado: false,
          procedimento: "Comunicacao-de-Radio"),
      Pop(
          id: "2.03.06",
          processo: "Bloqueio-em-Via-Publica",
          favoritado: false,
          procedimento: "Seguranca-No-Bloqueio"),
      Pop(
          id: "2.03.07",
          processo: "Bloqueio-em-Via-Publica",
          favoritado: false,
          procedimento: "Seguranca-do-Motociclista"),
      Pop(
          id: "2.03.08",
          processo: "Bloqueio-em-Via-Publica",
          favoritado: false,
          procedimento: "Selecao-de-Veiculos"),
      Pop(
          id: "2.03.09",
          processo: "Bloqueio-em-Via-Publica",
          favoritado: false,
          procedimento: "Finalizacao"),
      Pop(
          id: "2.04.01",
          processo: "Bloqueio-em-Estradas",
          favoritado: false,
          procedimento: "Planejamento-e-Escolha-do-Ponto-de-Bloqueio"),
      Pop(
          id: "2.04.02",
          processo: "Bloqueio-em-Estradas",
          favoritado: false,
          procedimento: "Sinalizacao-do-Bloqueio"),
      Pop(
          id: "2.04.03",
          processo: "Bloqueio-em-Estradas",
          favoritado: false,
          procedimento: "Organizacao-do-Ponto-de-Bloqueio"),
      Pop(
          id: "2.05.01",
          processo: "Ocorrencias-Rurais-Baixo-Potencial",
          favoritado: false,
          procedimento: "Aproximacao-Ao-Local-de-Ocorrencia"),
      Pop(
          id: "2.05.02",
          processo: "Ocorrencias-Rurais-Baixo-Potencial",
          favoritado: false,
          procedimento: "Preservacao-de-Indicios"),
      Pop(
          id: "2.05.03",
          processo: "Ocorrencias-Rurais-Baixo-Potencial",
          favoritado: false,
          procedimento: "Solicitacao-de-Apoio"),
      Pop(
          id: "2.05.04",
          processo: "Ocorrencias-Rurais-Baixo-Potencial",
          favoritado: false,
          procedimento: "Cerco-Policial"),
      Pop(
          id: "2.05.05",
          processo: "Ocorrencias-Rurais-Baixo-Potencial",
          favoritado: false,
          procedimento: "Busca-e-Captura-Em-Ambiente-Hostil"),
      Pop(
          id: "2.05.06",
          processo: "Ocorrencias-Rurais-Baixo-Potencial",
          favoritado: false,
          procedimento: "Encerramento-da-Ocorrencia"),
      Pop(
          id: "2.06.01",
          processo:
          "Primeira-Intervencao-Ocorrencias-Com-Refens-Suicidas-ou-Barricados",
          favoritado: false,
          procedimento: null),
      Pop(
          id: "2.07.01",
          processo: "Primeira-Intervencao-Bombas-e-Explosivos",
          favoritado: false,
          procedimento: "Ameaca-a-Bomba"),
      Pop(
          id: "2.07.02",
          processo: "Primeira-Intervencao-Bombas-e-Explosivos",
          favoritado: false,
          procedimento: "Localizacao-de-Bomba"),
      Pop(
          id: "2.07.03",
          processo: "Primeira-Intervencao-Bombas-e-Explosivos",
          favoritado: false,
          procedimento: "Explosao-de-Bomba"),
      Pop(
          id: "2.07.04",
          processo: "Primeira-Intervencao-Bombas-e-Explosivos",
          favoritado: false,
          procedimento: "Apreensao-Ou-Encontro-de-Explosivos"),
      Pop(
          id: "3.01.01",
          processo: "Abordagem-a-Motocicleta",
          favoritado: false,
          procedimento: "Com-dois-Policiais-Motociclistas"),
      Pop(
          id: "3.01.01",
          processo: "Abordagem-Feita-por-Uma-Equipe-a-Pe",
          favoritado: false,
          procedimento: "a-Transeunte"),
      Pop(
          id: "3.01.01",
          processo: "Patrulhamento",
          favoritado: false,
          procedimento:
          "Funcao-dos-Policiais-Durante-Patrulhamento-e-Area-de-Responsabilidade"),
      Pop(
          id: "3.01.02",
          processo: "Abordagem-a-Transeunte",
          favoritado: false,
          procedimento: "Com-dois-Policiais-Motociclistas"),
      Pop(
          id: "3.01.02",
          processo: "Abordagem-Feita-por-Uma-Equipe-Motorizada",
          favoritado: false,
          procedimento: "Com-2-Ppmm-a-Transeunte"),
      Pop(
          id: "3.01.02",
          processo: "Patrulhamento",
          favoritado: false,
          procedimento: null),
      Pop(
          id: "3.01.03",
          processo: "Abordagem-a-Veiculo",
          favoritado: false,
          procedimento: "Com-dois-Policiais-Motociclistas"),
      Pop(
          id: "3.01.03",
          processo: "Abordagem-Feita-por-Uma-Equipe-Motorizada",
          favoritado: false,
          procedimento: "Com-3-Ppmm-a-Transeunte"),
      Pop(
          id: "3.01.03",
          processo: "Patrulhamento",
          favoritado: false,
          procedimento:
          "Parada-da-Viatura-Em-decorrencia-do-Fluxo-de-Transito"),
      Pop(
          id: "3.01.04",
          processo: "Abordagem-a-Motocicleta",
          favoritado: false,
          procedimento: "Com-Tres-Policiais-Motociclistas"),
      Pop(
          id: "3.01.04",
          processo: "Abordagem-Feita-por-Uma-Equipe-Motorizada",
          favoritado: false,
          procedimento: "Com-4-Ppmm-a-Transeunte"),
      Pop(
          id: "3.01.05",
          processo: "Abordagem-a-Transeunte",
          favoritado: false,
          procedimento: "Com-Tres-Policiais-Motociclistas"),
      Pop(
          id: "3.01.05",
          processo: "Abordagem-Feita-por-Uma-Equipe-Motorizada",
          favoritado: false,
          procedimento: "Com-2-Ppmm-a-Carro"),
      Pop(
          id: "3.01.06",
          processo: "Abordagem-a-Veiculo",
          favoritado: false,
          procedimento: "Com-Tres-Policiais-Motociclistas"),
      Pop(
          id: "3.01.06",
          processo: "Abordagem-Feita-por-Uma-Equipe-Motorizada",
          favoritado: false,
          procedimento: "Com-3-Ppmm-a-Carro"),
      Pop(
          id: "3.01.07",
          processo: "Abordagem-a-Veiculo",
          favoritado: false,
          procedimento: "Com-Tres-Policiais-Motociclistas"),
      Pop(
          id: "3.01.07",
          processo: "Abordagem-Feita-por-Uma-Equipe-Motorizada",
          favoritado: false,
          procedimento: "Com-4-Ppmm-a-Carro"),
      Pop(
          id: "3.01.08",
          processo: "Abordagem-a-Transeunte",
          favoritado: false,
          procedimento: "Com-Quatro-Policiais-Motociclistas"),
      Pop(
          id: "3.01.08",
          processo: "Abordagem-Feita-por-Uma-Equipe-Motorizada",
          favoritado: false,
          procedimento: "Com-2-Ppmm-a-Motocicleta"),
      Pop(
          id: "3.01.09",
          processo: "Abordagem-a-Veiculo",
          favoritado: false,
          procedimento: "Com-Quatro-Policiais-Motociclistas"),
      Pop(
          id: "3.01.09",
          processo: "Abordagem-Feita-por-Uma-Equipe-Motorizada",
          favoritado: false,
          procedimento: "Com-3-Ppmm-a-Motocicleta"),
      Pop(
          id: "3.01.10",
          processo: "Abordagem-Feita-por-Uma-Equipe-Motorizada",
          favoritado: false,
          procedimento: "Com-4-Ppmm-a-Motocicleta"),
      Pop(
          id: "3.02.01",
          processo: "Abordagem-a-Motocicleta",
          favoritado: false,
          procedimento: "Com-dois-Policiais-Motociclistas-Ilicito-Confirmado"),
      Pop(
          id: "3.02.01",
          processo: "Abordagem-Feita-por-Uma-Equipe-a-Pe",
          favoritado: false,
          procedimento: "a-Transeunte-Com-Ilicito-Confirmado"),
      Pop(
          id: "3.02.01",
          processo: "Estacionamento-de-Viatura-Em-Ponto-Base",
          favoritado: false,
          procedimento: null),
      Pop(
          id: "3.02.02",
          processo: "Abordagem-a-Transeunte",
          favoritado: false,
          procedimento: "Com-dois-Policiais-Motociclistas-Ilicito-Confirmado"),
      Pop(
          id: "3.02.02",
          processo: "Abordagem-Feita-por-Uma-Equipe-Motorizada",
          favoritado: false,
          procedimento: "Com-2-Ppmm-a-Transeunte-Com-Ilicito-Confirmado"),
      Pop(
          id: "3.02.03",
          processo: "Abordagem-a-Veiculo",
          favoritado: false,
          procedimento: "Com-dois-Policiais-Motociclistas-Ilicito-Confirmado"),
      Pop(
          id: "3.02.03",
          processo: "Abordagem-Feita-por-Uma-Equipe-Motorizada",
          favoritado: false,
          procedimento: "Com-3-Ppmm-a-Transeunte-Com-Ilicito-Confirmado"),
      Pop(
          id: "3.02.04",
          processo: "Abordagem-a-Motocicleta",
          favoritado: false,
          procedimento: "Com-Tres-Policiais-Motociclistas-Ilicito-Confirmado"),
      Pop(
          id: "3.02.04",
          processo: "Abordagem-Feita-por-Uma-Equipe-Motorizada",
          favoritado: false,
          procedimento: "Com-4-Ppmm-a-Transeunte-Com-Ilicito-Confirmado"),
      Pop(
          id: "3.02.05",
          processo: "Abordagem-a-Transeunte",
          favoritado: false,
          procedimento: "Com-Tres-Policiais-Motociclistas-Ilicito-Confirmado"),
      Pop(
          id: "3.02.05",
          processo: "Abordagem-Feita-por-Uma-Equipe-Motorizada",
          favoritado: false,
          procedimento: "Com-2-Ppmm-a-Carro-Com-Ilicito-Confirmado"),
      Pop(
          id: "3.02.06",
          processo: "Abordagem-a-Veiculo",
          favoritado: false,
          procedimento: "Com-Tres-Policiais-Motociclistas-Ilicito-Confirmado"),
      Pop(
          id: "3.02.06",
          processo: "Abordagem-Feita-por-Uma-Equipe-Motorizada",
          favoritado: false,
          procedimento: "Com-3-Ppmm-a-Carro-Com-Ilicito-Confirmado"),
      Pop(
          id: "3.02.07",
          processo: "Abordagem-a-Motocicleta",
          favoritado: false,
          procedimento:
          "Com-Quatro-Policiais-Motociclistas-Ilicito-Confirmado"),
      Pop(
          id: "3.02.07",
          processo: "Abordagem-Feita-por-Uma-Equipe-Motorizada",
          favoritado: false,
          procedimento: "Com-4-Ppmm-a-Carro-Com-Ilicito-Confirmado"),
      Pop(
          id: "3.02.08",
          processo: "Abordagem-a-Transeunte",
          favoritado: false,
          procedimento:
          "Com-Quatro-Policiais-Motociclistas-Ilicito-Confirmado"),
      Pop(
          id: "3.02.08",
          processo: "Abordagem-Feita-por-Uma-Equipe-Motorizada",
          favoritado: false,
          procedimento: "Com-2-Ppmm-a-Motocicleta-Com-Ilicito-Confirmado"),
      Pop(
          id: "3.02.09",
          processo: "Abordagem-a-Veiculo",
          favoritado: false,
          procedimento:
          "Com-Quatro-Policiais-Motociclistas-Ilicito-Confirmado"),
      Pop(
          id: "3.02.09",
          processo: "Abordagem-Feita-por-Uma-Equipe-Motorizada",
          favoritado: false,
          procedimento: "Com-3-Ppmm-a-Motocicleta-Com-Ilicito-Confirmado"),
      Pop(
          id: "3.02.10",
          processo: "Abordagem-Feita-por-Uma-Equipe-Motorizada",
          favoritado: false,
          procedimento: "Com-4-Ppmm-a-Motocicleta-Com-Ilicito-Confirmado"),
      Pop(
          id: "3.03.01",
          processo: "Atendimento-Telefonico-Emergencial-190",
          favoritado: false,
          procedimento: null),
      Pop(
          id: "3.04.01",
          processo: "Ocorrencia-Envolvendo-Autoridade",
          favoritado: false,
          procedimento: null),
      Pop(
          id: "3.05.01",
          processo: "Busca-e-Apreensao-domiciliar",
          favoritado: false,
          procedimento: null),
      Pop(
          id: "3.06.01",
          processo: "Vias-de-Fato-Atendimento-de-Ocorrencia",
          favoritado: false,
          procedimento: null),
      Pop(
          id: "3.07.01",
          processo: "Acidente-de-Transito",
          favoritado: false,
          procedimento: "Atendimento-Telefonico"),
      Pop(
          id: "3.07.02",
          processo: "Acidente-de-Transito",
          favoritado: false,
          procedimento: "Registro-de-Acidente-Sem-Vitima-Online"),
      Pop(
          id: "3.07.03",
          processo: "Acidente-de-Transito",
          favoritado: false,
          procedimento:
          "Registro-de-Acidente-Sem-Vitima-Veiculo-Oficial-Pertencente-a-Sejusp"),
      Pop(
          id: "3.07.04",
          processo: "Acidente-de-Transito",
          favoritado: false,
          procedimento:
          "Registro-de-Acidente-Sem-Vitima-Com-danos-Patrimonio-Publico"),
      Pop(
          id: "3.07.05",
          processo: "Acidente-de-Transito",
          favoritado: false,
          procedimento:
          "Registro-de-Acidente-Sem-Vitima-Parte-Envolvida-Exige-Presenca-da-Pmms"),
      Pop(
          id: "3.07.06",
          processo: "Acidente-de-Transito",
          favoritado: false,
          procedimento:
          "Registro-de-Acidente-Sem-Vitima-Envolvendo-Crime-de-Transito-Ou-Local-Inseguro"),
      Pop(
          id: "3.07.07",
          processo: "Acidente-de-Transito",
          favoritado: false,
          procedimento: "Registro-de-Acidente-Sem-Vitima-Juizado-de-Transito"),
      Pop(
          id: "3.07.08",
          processo: "Acidente-de-Transito",
          favoritado: false,
          procedimento: "Registro-de-Acidente-Com-Vitima-Lesao-Corporal"),
      Pop(
          id: "3.07.09",
          processo: "Acidente-de-Transito",
          favoritado: false,
          procedimento: "Registro-de-Acidente-Com-Vitima-Fatal"),
      Pop(
          id: "3.07.10",
          processo: "Acidente-de-Transito",
          favoritado: false,
          procedimento: "Registro-de-Acidente-Com-Vitima-Obito-Posterior"),
      Pop(
          id: "3.07.11",
          processo: "Acidente-de-Transito",
          favoritado: false,
          procedimento: "Formulario-de-Preenchimento-de-Registro"),
      Pop(
          id: "3.08.01",
          processo: "Atendimento-de-Ocorrencia-Com-Morte-de-Policial-Militar",
          favoritado: false,
          procedimento: null),
      Pop(
          id: "3.08.01",
          processo: "Atendimento-de-Ocorrencia-de-Veiculo-Localizado",
          favoritado: false,
          procedimento: null),
      Pop(
          id: "3.09.01",
          processo: "Ocorrencia-de-Dano",
          favoritado: false,
          procedimento: "Atuacao-Policial"),
      Pop(
          id: "4.01.01",
          processo: "Uso-de-Algemas",
          favoritado: false,
          procedimento: null),
      Pop(
          id: "5.01.01",
          processo: "Feminicidio",
          favoritado: false,
          procedimento: "Chegada-da-Gu-No-Local-de-Crime"),
      Pop(
          id: "5.01.01",
          processo: "Passagem-de-Servico-Motorizado",
          favoritado: false,
          procedimento: null),
      Pop(
          id: "5.01.02",
          processo: "Feminicidio",
          favoritado: false,
          procedimento: "Tentado-Ou-Outra-Forma-de-Violencia"),
      Pop(
          id: "5.01.03",
          processo: "Feminicidio",
          favoritado: false,
          procedimento: "Confirmado"),
      Pop(
          id: "5.02.01",
          processo: "Montagem-do-EPI",
          favoritado: false,
          procedimento: "destro-Para-Revolveres"),
      Pop(
          id: "5.02.02",
          processo: "Montagem-do-EPI",
          favoritado: false,
          procedimento: "Canhoto-Para-Revolveres"),
      Pop(
          id: "5.02.03",
          processo: "Montagem-do-EPI",
          favoritado: false,
          procedimento: "destro-Pistola"),
      Pop(
          id: "5.02.04",
          processo: "Montagem-do-EPI",
          favoritado: false,
          procedimento: "Canhoto-Pistola"),
      Pop(
          id: "5.02.05",
          processo: "Montagem-do-EPI",
          favoritado: false,
          procedimento:
          "Posicionamento-dos-Equipamentos-Nos-Acessorios-do-Epi"),
      Pop(
          id: "5.03.01",
          processo: "Contrabando-e-Descaminho",
          favoritado: false,
          procedimento: "Classificacao-da-Ocorrencia"),
      Pop(
          id: "5.03.02",
          processo: "Contrabando-e-Descaminho",
          favoritado: false,
          procedimento: "Atuacao-Policial-descaminho"),
      Pop(
          id: "5.03.03",
          processo: "Contrabando-e-Descaminho",
          favoritado: false,
          procedimento: "Atuacao-Policial-Contrabando"),
      Pop(
          id: "5.03.04",
          processo: "Contrabando-e-Descaminho",
          favoritado: false,
          procedimento: "Militares-Estaduais-Como-Autores"),
      Pop(
          id: "5.03.05",
          processo: "Contrabando-e-Descaminho",
          favoritado: false,
          procedimento: "Militares-Federais-Como-Autores"),
      Pop(
          id: "5.03.06",
          processo: "Contrabando-e-Descaminho",
          favoritado: false,
          procedimento: "demais-Agentes-de-Seguranca-Como-Autores"),
      Pop(
          id: "5.03.07",
          processo: "Contrabando-e-Descaminho",
          favoritado: false,
          procedimento:
          "Guarda-de-Materiais-Retidos-e-Administracao-das-Ocorrencias-Geradas"),
      Pop(
          id: "6.01.01",
          processo: "Policiamento-Montado",
          favoritado: false,
          procedimento: "Policiamento-Ostensivo"),
      Pop(
          id: "6.01.01",
          processo: "Presidio-Unei",
          favoritado: false,
          procedimento:
          "Revista-Preventiva-Em-Estabelecimento-Prisional-Ou-Unidade-de-Internacao"),
      Pop(
          id: "6.01.01",
          processo: "Uso-Irregular-de-Recursos-Florestais",
          favoritado: false,
          procedimento: "Atuacao-Policial"),
      Pop(
          id: "6.01.02",
          processo: "Policiamento-Montado",
          favoritado: false,
          procedimento: "Abordagem-Policial-Montado"),
      Pop(
          id: "6.01.02",
          processo: "Presidio-Unei",
          favoritado: false,
          procedimento: "Controle-de-Rebeliao"),
      Pop(
          id: "6.01.03",
          processo: "Policiamento-Montado",
          favoritado: false,
          procedimento: "Operacoes-de-Choque-Montado"),
      Pop(
          id: "6.01.03",
          processo: "Presidio-Unei",
          favoritado: false,
          procedimento: "Controle-de-Disturbios-Civis-e-Multidoes"),
      Pop(
          id: "6.01.04",
          processo: "Policiamento-Montado",
          favoritado: false,
          procedimento: "Policiamento-Ostensivo-Shows-Festas-Eventos"),
      Pop(
          id: "6.02.01",
          processo: "Patrulhamento",
          favoritado: false,
          procedimento: "Preventivo"),
      Pop(
          id: "6.02.02",
          processo: "Apoio-Em-Ocorrencia",
          favoritado: false,
          procedimento: null),
      Pop(
          id: "6.02.03",
          processo: "Acompanhamento-de-Veiculo-e-Orientacao-de-Cerco",
          favoritado: false,
          procedimento: null),
      Pop(
          id: "6.02.04",
          processo: "Apoio-Preventivo-a-Operacoes-de-Transito-Em-Rodovias",
          favoritado: false,
          procedimento: null),
      Pop(
          id: "6.03.01",
          processo: "Operacoes-Helitransportaveis",
          favoritado: false,
          procedimento: "Acionamento-da-Equipe-do-Gpa"),
      Pop(
          id: "6.03.02",
          processo: "Operacoes-Helitransportaveis",
          favoritado: false,
          procedimento: "Briefing-Passageiros"),
      Pop(
          id: "6.03.03",
          processo: "Operacoes-Helitransportaveis",
          favoritado: false,
          procedimento: "Embarque-e-desembarque-Tripulantes-Em-Voo"),
      Pop(
          id: "6.03.04",
          processo: "Operacoes-Helitransportaveis",
          favoritado: false,
          procedimento: "Pouso-Em-Area-Restrita"),
      Pop(
          id: "6.03.05",
          processo: "Operacoes-Helitransportaveis",
          favoritado: false,
          procedimento: "decolagem-Em-Area-Restrita"),
      Pop(
          id: "6.03.06",
          processo: "Operacoes-Helitransportaveis",
          favoritado: false,
          procedimento: "Emprego-de-Armamento-a-Bordo"),
      Pop(
          id: "6.03.07",
          processo: "Operacoes-Helitransportaveis",
          favoritado: false,
          procedimento: "Preparacao-Para-Rapel"),
      Pop(
          id: "6.03.08",
          processo: "Operacoes-Helitransportaveis",
          favoritado: false,
          procedimento: "Apoio-Em-Acoes-de-Disturbio-Civil"),
      Pop(
          id: "6.03.09",
          processo: "Operacoes-Helitransportaveis",
          favoritado: false,
          procedimento: "Apoio-Ocorrencia-Com-Refens"),
      Pop(
          id: "6.03.10",
          processo: "Operacoes-Helitransportaveis",
          favoritado: false,
          procedimento: "Apoio-Acoes-de-Pracas-desportivas-e-Shows"),
      Pop(
          id: "6.03.11",
          processo: "Operacoes-Helitransportaveis",
          favoritado: false,
          procedimento: "desembarque-Tropa-Estabelecimento-Prisional"),
      Pop(
          id: "6.03.12",
          processo: "Operacoes-Helitransportaveis",
          favoritado: false,
          procedimento: "Apoio-Fiscalizacao-Ambiental"),
      Pop(
          id: "6.03.13",
          processo: "Operacoes-Helitransportaveis",
          favoritado: false,
          procedimento: "Apoio-Transporte-Tropa-Caes"),
      Pop(
          id: "6.03.14",
          processo: "Operacoes-Helitransportaveis",
          favoritado: false,
          procedimento: "Combate-a-Incendio-Florestal"),
      Pop(
          id: "6.04.01",
          processo: "Atendimento-Pre-Hospitalar-com-Aeronave",
          favoritado: false,
          procedimento: "Preparo-da-Aeronave"),
      Pop(
          id: "6.04.02",
          processo: "Atendimento-Pre-Hospitalar-com-Aeronave",
          favoritado: false,
          procedimento: "Transporte-No-Atendimento"),
      Pop(
          id: "6.04.03",
          processo:
          "Desinfeccao-da-Aeronave-Apos-Missao-de-Atendimento-Pre-Hospitalar",
          favoritado: false,
          procedimento: null),
      Pop(
          id: "6.05.01",
          processo: "Operacoes-em-Aeronave",
          favoritado: false,
          procedimento: "Busca-Em-Matas-a-Individuo-Infrator"),
      Pop(
          id: "6.05.02",
          processo: "Operacoes-em-Aeronave",
          favoritado: false,
          procedimento: "Busca-Pessoas-Perdidas"),
      Pop(
          id: "6.05.03",
          processo: "Operacoes-em-Aeronave",
          favoritado: false,
          procedimento: "Busca-a-Individuo-Infrator"),
      Pop(
          id: "6.06.01",
          processo: "Transporte-orgaos-Transplante",
          favoritado: false,
          procedimento: "Embarque-de-Equipe"),
      Pop(
          id: "6.06.02",
          processo: "Transporte-orgaos-Transplante",
          favoritado: false,
          procedimento: "Transporte-de-Equipe"),
      Pop(
          id: "6.06.03",
          processo: "Transporte-orgaos-Transplante",
          favoritado: false,
          procedimento: "Chegada-Ao-Hospital"),
      Pop(
          id: "7.01.01",
          processo: "Policiamento-em-Eventos",
          favoritado: false,
          procedimento: "Analises-Preliminares"),
      Pop(
          id: "7.01.02",
          processo: "Policiamento-em-Eventos",
          favoritado: false,
          procedimento: "Avaliacao-de-Risco-Utilizando-Informacoes-Conhecidas"),
      Pop(
          id: "7.01.03",
          processo: "Policiamento-em-Eventos",
          favoritado: false,
          procedimento: "Vistoria-Preliminar-de-Seguranca"),
      Pop(
          id: "7.01.04",
          processo: "Policiamento-em-Eventos",
          favoritado: false,
          procedimento: "Reuniao-Preparatoria-de-Seguranca"),
      Pop(
          id: "7.01.05",
          processo: "Policiamento-em-Eventos",
          favoritado: false,
          procedimento: "Reuniao-Estado-Maior"),
      Pop(
          id: "DOF1.01",
          processo: "Abigeato",
          favoritado: false,
          procedimento: null),
      Pop(
          id: "DOF2.01",
          processo: "Contrabando-de-Cigarros",
          favoritado: false,
          procedimento: null),
      Pop(
          id: "DOF2.02",
          processo: "Contrabando-e-Descaminho",
          favoritado: false,
          procedimento: "de-Pneus"),
      Pop(
          id: "DOF2.03",
          processo: "Contrabando-Agrotoxicos-Minerios-Medicamentos",
          favoritado: false,
          procedimento: null),
      Pop(
          id: "DOF2.04",
          processo: "Contrabando-descaminho-Produtos-Diversos",
          favoritado: false,
          procedimento: null),
      Pop(
          id: "DOF2.05",
          processo: "Radio-Amador-Em-Veiculos",
          favoritado: false,
          procedimento: null),
      Pop(
          id: "DOF3.01",
          processo: "Trafico-de-Armas-e-Municoes",
          favoritado: false,
          procedimento: "Durante-Bloqueio"),
      Pop(
          id: "DOF3.02",
          processo: "Trafico-de-Armas-e-Municoes",
          favoritado: false,
          procedimento: "Durante-Patrulhamento"),
      Pop(
          id: "DOF3.03",
          processo: "Trafico-de-Armas-e-Municoes",
          favoritado: false,
          procedimento: "Em-Onibus-Rodoviario"),
      Pop(
          id: "DOF3.04",
          processo: "Trafico-de-Armas-e-Municoes",
          favoritado: false,
          procedimento: "Em-Carreta"),
      Pop(
          id: "DOF4.01",
          processo: "Trafico-de-Drogas",
          favoritado: false,
          procedimento: "Durante-Bloqueio"),
      Pop(
          id: "DOF4.02",
          processo: "Trafico-de-Drogas",
          favoritado: false,
          procedimento: "Durante-Patrulhamento"),
      Pop(
          id: "DOF4.03",
          processo: "Trafico-de-Drogas",
          favoritado: false,
          procedimento: "Em-Onibus-Rodoviario"),
      Pop(
          id: "DOF4.04",
          processo: "Trafico-de-Drogas",
          favoritado: false,
          procedimento: "Em-Caminhao-Carreta"),
    ];
    return minhaLista;
  }

  static List<String> getListaString() {
    List<String> retorno = [];
    //para cada pop na Lista de objetos POP:
    for (var pop in Pop.getLista()) {
      retorno.add(pop
          .getFileName()); //adiciona o filename (que é string) nessa List<String> retorno
    }
    return retorno;
  }
} //fim da class Pop
