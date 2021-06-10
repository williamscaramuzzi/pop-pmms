class Pop {
  String id, processo;
  String? procedimento;

  Pop({required this.id, required this.processo, this.procedimento});

  String getFileName() {
    String procedimentoFormat;
    this.procedimento != null
        ? procedimentoFormat = "${this.procedimento}"
        : procedimentoFormat = "";
    return "${this.id}_${this.processo}_$procedimentoFormat.pdf";
  }

  static List<Pop> getLista() {
    List<Pop> minhaLista = [
      Pop(
          id: "1.01.01",
          processo: "Atendimento-de-Ocorrencia-Pos-Crime-Residencial",
          procedimento: null),
      Pop(
          id: "1.01.01",
          processo: "Escolta",
          procedimento:
              "Verificacao-das-Condicoes-Gerais-da-Missao-e-do-detento"),
      Pop(
          id: "1.01.02",
          processo: "Escolta",
          procedimento: "Embarque-de-detento"),
      Pop(
          id: "1.01.03",
          processo: "Escolta",
          procedimento: "Transporte-de-detento"),
      Pop(
          id: "1.01.04",
          processo: "Escolta",
          procedimento: "desembarque-do-detento"),
      Pop(
          id: "1.01.05",
          processo: "Escolta",
          procedimento: "Apresentacao-de-detento-Em-Juizo"),
      Pop(
          id: "1.01.06",
          processo: "Escolta",
          procedimento: "de-detento-Para-Hospital"),
      Pop(
          id: "1.01.07",
          processo: "Escolta",
          procedimento: "de-detento-Velorio"),
      Pop(
          id: "1.03.01",
          processo: "Uso-do-Espargidor-de-Gas-de-Pimenta",
          procedimento: null),
      Pop(
          id: "1.04.01",
          processo: "Uso-do-Bastao-Tonfa",
          procedimento: "Abordagem-Arma-Branca"),
      Pop(
          id: "1.04.02",
          processo: "Uso-do-Bastao-Tonfa",
          procedimento: "Situacoes-Adversas"),
      Pop(
          id: "1.05.01",
          processo: "Manutencao-1-Escalao",
          procedimento: "Revolveres-Inspecao"),
      Pop(
          id: "1.05.02",
          processo: "Manutencao-1-Escalao",
          procedimento: "Revolveres-Limpeza"),
      Pop(
          id: "1.06.01",
          processo: "Manutencao-1-Escalao",
          procedimento: "Pistolas-Inspecao"),
      Pop(
          id: "1.06.02",
          processo: "Manutencao-1-Escalao",
          procedimento: "Pistolas-Limpeza"),
      Pop(
          id: "1.07.01",
          processo: "Uso-da-Forca",
          procedimento: "Envolvendo-Pessoa-Atividade-Suspeita"),
      Pop(
          id: "1.07.02",
          processo: "Uso-da-Forca",
          procedimento: "Envolvendo-Pessoa-Fundada-Suspeita"),
      Pop(
          id: "1.07.03",
          processo: "Uso-da-Forca",
          procedimento: "Envolvendo-Infrator-Arma-Branca"),
      Pop(
          id: "1.07.04",
          processo: "Uso-da-Forca",
          procedimento: "Envolvendo-Pessoa-Ma-Visualizacao-das-Maos"),
      Pop(
          id: "1.07.05",
          processo: "Uso-da-Forca",
          procedimento: "Envolvendo-Pessoa-Arma-de-Fogo"),
      Pop(
          id: "2.01.01",
          processo: "Patrulhamento-Motociclistico",
          procedimento: "Deslocamento-e-Parada-Tres-Ppmm-e-Tres-Motocicletas"),
      Pop(
          id: "2.01.01",
          processo:
              "Primeira-Intervencao-Em-Crises-Envolvendo-Atiradores-Ativos",
          procedimento: null),
      Pop(
          id: "2.01.02",
          processo: "Patrulhamento-Motociclistico",
          procedimento: "Abordagem-a-Transeunte-Tres-Ppmm-e-Tres-Motocicletas"),
      Pop(
          id: "2.01.03",
          processo: "Patrulhamento-Motociclistico",
          procedimento:
              "Abordagem-a-Motocicleta-Tres-Ppmm-e-Tres-Motocicletas"),
      Pop(
          id: "2.01.04",
          processo: "Patrulhamento-Motociclistico",
          procedimento: "Abordagem-a-Veiculo-Tres-Ppmm-e-Tres-Motocicletas"),
      Pop(
          id: "2.01.05",
          processo: "Patrulhamento-Motociclistico",
          procedimento: "Abordagem-a-Caminhao-Tres-Ppmm-e-Tres-Motocicletas"),
      Pop(
          id: "2.01.06",
          processo: "Patrulhamento-Motociclistico",
          procedimento: "Abordagem-a-Onibus-Tres-Ppmm-e-Tres-Motocicletas"),
      Pop(
          id: "2.01.07",
          processo: "Patrulhamento-Motociclistico",
          procedimento: "Deslocamento-Parada-Quatro-Ppmm-Quatro-Motocicletas"),
      Pop(
          id: "2.01.08",
          processo: "Patrulhamento-Motociclistico",
          procedimento:
              "Abordagem-a-Transeunte-Quatro-Ppmm-Quatro-Motocicletas"),
      Pop(
          id: "2.01.09",
          processo: "Patrulhamento-Motociclistico",
          procedimento:
              "Abordagem-a-Motocicleta-Quatro-Ppmm-Quatro-Motocicletas"),
      Pop(
          id: "2.01.10",
          processo: "Patrulhamento-Motociclistico",
          procedimento:
              "Abordagem-a-Veiculo-de-Passeio-Quatro-Ppmm-Quatro-Motocicletas"),
      Pop(
          id: "2.01.11",
          processo: "Patrulhamento-Motociclistico",
          procedimento: "Abordagem-a-Caminhao-Quatro-Ppmm-Quatro-Motocicletas"),
      Pop(
          id: "2.01.12",
          processo: "Patrulhamento-Motociclistico",
          procedimento: "Abordagem-a-Onibus-Quatro-Ppmm-Quatro-Motocicletas"),
      Pop(
          id: "2.01.13",
          processo: "Patrulhamento-Motociclistico",
          procedimento:
              "Deslocamento-e-Parada-Quatro-Ppmm-Quatro-Motocicletas"),
      Pop(
          id: "2.01.14",
          processo: "Patrulhamento-Motociclistico",
          procedimento:
              "Abordagem-a-Transeuntes-Quatro-Ppmm-Tres-Motocicletas"),
      Pop(
          id: "2.01.15",
          processo: "Patrulhamento-Motociclistico",
          procedimento:
              "Abordagem-a-Motocicleta-Quatro-Ppmm-Tres-Motocicletas"),
      Pop(
          id: "2.01.16",
          processo: "Patrulhamento-Motociclistico",
          procedimento:
              "Abordagem-a-Veiculo-de-Passeio-Quatro-Ppmm-Tres-Motocicletas"),
      Pop(
          id: "2.01.17",
          processo: "Patrulhamento-Motociclistico",
          procedimento: "Abordagem-a-Caminhao-Quatro-Ppmm-Tres-Motocicletas"),
      Pop(
          id: "2.01.18",
          processo: "Patrulhamento-Motociclistico",
          procedimento: "Abordagem-a-Onibus-Quatro-Ppmm-Tres-Motocicletas"),
      Pop(
          id: "2.01.19",
          processo: "Patrulhamento-Motociclistico",
          procedimento: "Deslocamento-e-Parada-Cinco-Ppmm-Quatro-Motocicletas"),
      Pop(
          id: "2.01.20",
          processo: "Patrulhamento-Motociclistico",
          procedimento: "Abordagem-Transeunte-Cinco-Ppmm-Quatro-Motocicletas"),
      Pop(
          id: "2.01.21",
          processo: "Patrulhamento-Motociclistico",
          procedimento: "Abordagem-Motocicleta-Cinco-Ppmm-Quatro-Motocicletas"),
      Pop(
          id: "2.01.22",
          processo: "Patrulhamento-Motociclistico",
          procedimento:
              "Abordagem-Veiculo-de-Passeio-Cinco-Ppmm-Quatro-Motocicletas"),
      Pop(
          id: "2.01.23",
          processo: "Patrulhamento-Motociclistico",
          procedimento: "Abordagem-Caminhao-Cinco-Ppmm-Quatro-Motocicletas"),
      Pop(
          id: "2.01.24",
          processo: "Patrulhamento-Motociclistico",
          procedimento: "Abordagem-Onibus-Cinco-Ppmm-Quatro-Motocicletas"),
      Pop(
          id: "2.02.01",
          processo: "Acompanhamento-e-Cerco-a-Veiculo",
          procedimento: null),
      Pop(
          id: "2.02.01",
          processo: "Ocorrencias-Rurais-Alto-Potencial-Contra-o-Patrimonio",
          procedimento: "Confirmacao-da-Ocorrencia"),
      Pop(
          id: "2.02.02",
          processo: "Ocorrencias-Rurais-Alto-Potencial-Contra-o-Patrimonio",
          procedimento: "-Acionamento-Plano-de-defesa"),
      Pop(
          id: "2.02.03",
          processo: "Ocorrencias-Rurais-Alto-Potencial-Contra-o-Patrimonio",
          procedimento: "Gabinete-de-Gestao"),
      Pop(
          id: "2.02.04",
          processo: "Ocorrencias-Rurais-Alto-Potencial-Contra-o-Patrimonio",
          procedimento: "Coleta-de-dados"),
      Pop(
          id: "2.02.05",
          processo: "Ocorrencias-Rurais-Alto-Potencial-Contra-o-Patrimonio",
          procedimento: "Bloqueios"),
      Pop(
          id: "2.02.06",
          processo: "Ocorrencias-Rurais-Alto-Potencial-Contra-o-Patrimonio",
          procedimento: "Barreiras-Policiais"),
      Pop(
          id: "2.02.07",
          processo: "Ocorrencias-Rurais-Alto-Potencial-Contra-o-Patrimonio",
          procedimento: "Entrevista-Com-Testemunhas-Refens-e-Criminosos"),
      Pop(
          id: "2.03.01",
          processo: "Bloqueio-em-Via-Publica",
          procedimento: "Planejamento-do-Bloqueio"),
      Pop(
          id: "2.03.02",
          processo: "Bloqueio-em-Via-Publica",
          procedimento: "Montagem-do-Bloqueio"),
      Pop(
          id: "2.03.03",
          processo: "Bloqueio-em-Via-Publica",
          procedimento: "Comando-do-Bloqueio"),
      Pop(
          id: "2.03.04",
          processo: "Bloqueio-em-Via-Publica",
          procedimento: "Anotacoes-do-Bloqueio"),
      Pop(
          id: "2.03.05",
          processo: "Bloqueio-em-Via-Publica",
          procedimento: "Comunicacao-de-Radio"),
      Pop(
          id: "2.03.06",
          processo: "Bloqueio-em-Via-Publica",
          procedimento: "Seguranca-No-Bloqueio"),
      Pop(
          id: "2.03.07",
          processo: "Bloqueio-em-Via-Publica",
          procedimento: "Seguranca-do-Motociclista"),
      Pop(
          id: "2.03.08",
          processo: "Bloqueio-em-Via-Publica",
          procedimento: "Selecao-de-Veiculos"),
      Pop(
          id: "2.03.09",
          processo: "Bloqueio-em-Via-Publica",
          procedimento: "Finalizacao"),
      Pop(
          id: "2.04.01",
          processo: "Bloqueio-em-Estradas",
          procedimento: "Planejamento-e-Escolha-do-Ponto-de-Bloqueio"),
      Pop(
          id: "2.04.02",
          processo: "Bloqueio-em-Estradas",
          procedimento: "Sinalizacao-do-Bloqueio"),
      Pop(
          id: "2.04.03",
          processo: "Bloqueio-em-Estradas",
          procedimento: "Organizacao-do-Ponto-de-Bloqueio"),
      Pop(
          id: "2.05.01",
          processo: "Ocorrencias-Rurais-Baixo-Potencial",
          procedimento: "Aproximacao-Ao-Local-de-Ocorrencia"),
      Pop(
          id: "2.05.02",
          processo: "Ocorrencias-Rurais-Baixo-Potencial",
          procedimento: "Preservacao-de-Indicios"),
      Pop(
          id: "2.05.03",
          processo: "Ocorrencias-Rurais-Baixo-Potencial",
          procedimento: "Solicitacao-de-Apoio"),
      Pop(
          id: "2.05.04",
          processo: "Ocorrencias-Rurais-Baixo-Potencial",
          procedimento: "Cerco-Policial"),
      Pop(
          id: "2.05.05",
          processo: "Ocorrencias-Rurais-Baixo-Potencial",
          procedimento: "Busca-e-Captura-Em-Ambiente-Hostil"),
      Pop(
          id: "2.05.06",
          processo: "Ocorrencias-Rurais-Baixo-Potencial",
          procedimento: "Encerramento-da-Ocorrencia"),
      Pop(
          id: "2.06.01",
          processo:
              "Primeira-Intervencao-Ocorrencias-Com-Refens-Suicidas-ou-Barricados",
          procedimento: null),
      Pop(
          id: "2.07.01",
          processo: "Primeira-Intervencao-Bombas-e-Explosivos",
          procedimento: "Ameaca-a-Bomba"),
      Pop(
          id: "2.07.02",
          processo: "Primeira-Intervencao-Bombas-e-Explosivos",
          procedimento: "Localizacao-de-Bomba"),
      Pop(
          id: "2.07.03",
          processo: "Primeira-Intervencao-Bombas-e-Explosivos",
          procedimento: "Explosao-de-Bomba"),
      Pop(
          id: "2.07.04",
          processo: "Primeira-Intervencao-Bombas-e-Explosivos",
          procedimento: "Apreensao-Ou-Encontro-de-Explosivos"),
      Pop(
          id: "3.01.01",
          processo: "Abordagem-a-Motocicleta",
          procedimento: "Com-dois-Policiais-Motociclistas"),
      Pop(
          id: "3.01.01",
          processo: "Abordagem-Feita-por-Uma-Equipe-a-Pe",
          procedimento: "a-Transeunte"),
      Pop(
          id: "3.01.01",
          processo: "Patrulhamento",
          procedimento:
              "Funcao-dos-Policiais-Durante-Patrulhamento-e-Area-de-Responsabilidade"),
      Pop(
          id: "3.01.02",
          processo: "Abordagem-a-Transeunte",
          procedimento: "Com-dois-Policiais-Motociclistas"),
      Pop(
          id: "3.01.02",
          processo: "Abordagem-Feita-por-Uma-Equipe-Motorizada",
          procedimento: "Com-2-Ppmm-a-Transeunte"),
      Pop(id: "3.01.02", processo: "Patrulhamento", procedimento: null),
      Pop(
          id: "3.01.03",
          processo: "Abordagem-a-Veiculo",
          procedimento: "Com-dois-Policiais-Motociclistas"),
      Pop(
          id: "3.01.03",
          processo: "Abordagem-Feita-por-Uma-Equipe-Motorizada",
          procedimento: "Com-3-Ppmm-a-Transeunte"),
      Pop(
          id: "3.01.03",
          processo: "Patrulhamento",
          procedimento:
              "Parada-da-Viatura-Em-decorrencia-do-Fluxo-de-Transito"),
      Pop(
          id: "3.01.04",
          processo: "Abordagem-a-Motocicleta",
          procedimento: "Com-Tres-Policiais-Motociclistas"),
      Pop(
          id: "3.01.04",
          processo: "Abordagem-Feita-por-Uma-Equipe-Motorizada",
          procedimento: "Com-4-Ppmm-a-Transeunte"),
      Pop(
          id: "3.01.05",
          processo: "Abordagem-a-Transeunte",
          procedimento: "Com-Tres-Policiais-Motociclistas"),
      Pop(
          id: "3.01.05",
          processo: "Abordagem-Feita-por-Uma-Equipe-Motorizada",
          procedimento: "Com-2-Ppmm-a-Carro"),
      Pop(
          id: "3.01.06",
          processo: "Abordagem-a-Veiculo",
          procedimento: "Com-Tres-Policiais-Motociclistas"),
      Pop(
          id: "3.01.06",
          processo: "Abordagem-Feita-por-Uma-Equipe-Motorizada",
          procedimento: "Com-3-Ppmm-a-Carro"),
      Pop(
          id: "3.01.07",
          processo: "Abordagem-a-Veiculo",
          procedimento: "Com-Tres-Policiais-Motociclistas"),
      Pop(
          id: "3.01.07",
          processo: "Abordagem-Feita-por-Uma-Equipe-Motorizada",
          procedimento: "Com-4-Ppmm-a-Carro"),
      Pop(
          id: "3.01.08",
          processo: "Abordagem-a-Transeunte",
          procedimento: "Com-Quatro-Policiais-Motociclistas"),
      Pop(
          id: "3.01.08",
          processo: "Abordagem-Feita-por-Uma-Equipe-Motorizada",
          procedimento: "Com-2-Ppmm-a-Motocicleta"),
      Pop(
          id: "3.01.09",
          processo: "Abordagem-a-Veiculo",
          procedimento: "Com-Quatro-Policiais-Motociclistas"),
      Pop(
          id: "3.01.09",
          processo: "Abordagem-Feita-por-Uma-Equipe-Motorizada",
          procedimento: "Com-3-Ppmm-a-Motocicleta"),
      Pop(
          id: "3.01.10",
          processo: "Abordagem-Feita-por-Uma-Equipe-Motorizada",
          procedimento: "Com-4-Ppmm-a-Motocicleta"),
      Pop(
          id: "3.02.01",
          processo: "Abordagem-a-Motocicleta",
          procedimento: "Com-dois-Policiais-Motociclistas-Ilicito-Confirmado"),
      Pop(
          id: "3.02.01",
          processo: "Abordagem-Feita-por-Uma-Equipe-a-Pe",
          procedimento: "a-Transeunte-Com-Ilicito-Confirmado"),
      Pop(
          id: "3.02.01",
          processo: "Estacionamento-de-Viatura-Em-Ponto-Base",
          procedimento: null),
      Pop(
          id: "3.02.02",
          processo: "Abordagem-a-Transeunte",
          procedimento: "Com-dois-Policiais-Motociclistas-Ilicito-Confirmado"),
      Pop(
          id: "3.02.02",
          processo: "Abordagem-Feita-por-Uma-Equipe-Motorizada",
          procedimento: "Com-2-Ppmm-a-Transeunte-Com-Ilicito-Confirmado"),
      Pop(
          id: "3.02.03",
          processo: "Abordagem-a-Veiculo",
          procedimento: "Com-dois-Policiais-Motociclistas-Ilicito-Confirmado"),
      Pop(
          id: "3.02.03",
          processo: "Abordagem-Feita-por-Uma-Equipe-Motorizada",
          procedimento: "Com-3-Ppmm-a-Transeunte-Com-Ilicito-Confirmado"),
      Pop(
          id: "3.02.04",
          processo: "Abordagem-a-Motocicleta",
          procedimento: "Com-Tres-Policiais-Motociclistas-Ilicito-Confirmado"),
      Pop(
          id: "3.02.04",
          processo: "Abordagem-Feita-por-Uma-Equipe-Motorizada",
          procedimento: "Com-4-Ppmm-a-Transeunte-Com-Ilicito-Confirmado"),
      Pop(
          id: "3.02.05",
          processo: "Abordagem-a-Transeunte",
          procedimento: "Com-Tres-Policiais-Motociclistas-Ilicito-Confirmado"),
      Pop(
          id: "3.02.05",
          processo: "Abordagem-Feita-por-Uma-Equipe-Motorizada",
          procedimento: "Com-2-Ppmm-a-Carro-Com-Ilicito-Confirmado"),
      Pop(
          id: "3.02.06",
          processo: "Abordagem-a-Veiculo",
          procedimento: "Com-Tres-Policiais-Motociclistas-Ilicito-Confirmado"),
      Pop(
          id: "3.02.06",
          processo: "Abordagem-Feita-por-Uma-Equipe-Motorizada",
          procedimento: "Com-3-Ppmm-a-Carro-Com-Ilicito-Confirmado"),
      Pop(
          id: "3.02.07",
          processo: "Abordagem-a-Motocicleta",
          procedimento:
              "Com-Quatro-Policiais-Motociclistas-Ilicito-Confirmado"),
      Pop(
          id: "3.02.07",
          processo: "Abordagem-Feita-por-Uma-Equipe-Motorizada",
          procedimento: "Com-4-Ppmm-a-Carro-Com-Ilicito-Confirmado"),
      Pop(
          id: "3.02.08",
          processo: "Abordagem-a-Transeunte",
          procedimento:
              "Com-Quatro-Policiais-Motociclistas-Ilicito-Confirmado"),
      Pop(
          id: "3.02.08",
          processo: "Abordagem-Feita-por-Uma-Equipe-Motorizada",
          procedimento: "Com-2-Ppmm-a-Motocicleta-Com-Ilicito-Confirmado"),
      Pop(
          id: "3.02.09",
          processo: "Abordagem-a-Veiculo",
          procedimento:
              "Com-Quatro-Policiais-Motociclistas-Ilicito-Confirmado"),
      Pop(
          id: "3.02.09",
          processo: "Abordagem-Feita-por-Uma-Equipe-Motorizada",
          procedimento: "Com-3-Ppmm-a-Motocicleta-Com-Ilicito-Confirmado"),
      Pop(
          id: "3.02.10",
          processo: "Abordagem-Feita-por-Uma-Equipe-Motorizada",
          procedimento: "Com-4-Ppmm-a-Motocicleta-Com-Ilicito-Confirmado"),
      Pop(
          id: "3.03.01",
          processo: "Atendimento-Telefonico-Emergencial-190",
          procedimento: null),
      Pop(
          id: "3.04.01",
          processo: "Ocorrencia-Envolvendo-Autoridade",
          procedimento: null),
      Pop(
          id: "3.05.01",
          processo: "Busca-e-Apreensao-domiciliar",
          procedimento: null),
      Pop(
          id: "3.06.01",
          processo: "Vias-de-Fato-Atendimento-de-Ocorrencia",
          procedimento: null),
      Pop(
          id: "3.07.01",
          processo: "Acidente-de-Transito",
          procedimento: "Atendimento-Telefonico"),
      Pop(
          id: "3.07.02",
          processo: "Acidente-de-Transito",
          procedimento: "Registro-de-Acidente-Sem-Vitima-Online"),
      Pop(
          id: "3.07.03",
          processo: "Acidente-de-Transito",
          procedimento:
              "Registro-de-Acidente-Sem-Vitima-Veiculo-Oficial-Pertencente-a-Sejusp"),
      Pop(
          id: "3.07.04",
          processo: "Acidente-de-Transito",
          procedimento:
              "Registro-de-Acidente-Sem-Vitima-Com-danos-Patrimonio-Publico"),
      Pop(
          id: "3.07.05",
          processo: "Acidente-de-Transito",
          procedimento:
              "Registro-de-Acidente-Sem-Vitima-Parte-Envolvida-Exige-Presenca-da-Pmms"),
      Pop(
          id: "3.07.06",
          processo: "Acidente-de-Transito",
          procedimento:
              "Registro-de-Acidente-Sem-Vitima-Envolvendo-Crime-de-Transito-Ou-Local-Inseguro"),
      Pop(
          id: "3.07.07",
          processo: "Acidente-de-Transito",
          procedimento: "Registro-de-Acidente-Sem-Vitima-Juizado-de-Transito"),
      Pop(
          id: "3.07.08",
          processo: "Acidente-de-Transito",
          procedimento: "Registro-de-Acidente-Com-Vitima-Lesao-Corporal"),
      Pop(
          id: "3.07.09",
          processo: "Acidente-de-Transito",
          procedimento: "Registro-de-Acidente-Com-Vitima-Fatal"),
      Pop(
          id: "3.07.10",
          processo: "Acidente-de-Transito",
          procedimento: "Registro-de-Acidente-Com-Vitima-Obito-Posterior"),
      Pop(
          id: "3.07.11",
          processo: "Acidente-de-Transito",
          procedimento: "Formulario-de-Preenchimento-de-Registro"),
      Pop(
          id: "3.08.01",
          processo: "Atendimento-de-Ocorrencia-Com-Morte-de-Policial-Militar",
          procedimento: null),
      Pop(
          id: "3.08.01",
          processo: "Atendimento-de-Ocorrencia-de-Veiculo-Localizado",
          procedimento: null),
      Pop(
          id: "3.09.01",
          processo: "Ocorrencia-de-Dano",
          procedimento: "Atuacao-Policial"),
      Pop(id: "4.01.01", processo: "Uso-de-Algemas", procedimento: null),
      Pop(
          id: "5.01.01",
          processo: "Feminicidio",
          procedimento: "Chegada-da-Gu-No-Local-de-Crime"),
      Pop(
          id: "5.01.01",
          processo: "Passagem-de-Servico-Motorizado",
          procedimento: null),
      Pop(
          id: "5.01.02",
          processo: "Feminicidio",
          procedimento: "Tentado-Ou-Outra-Forma-de-Violencia"),
      Pop(id: "5.01.03", processo: "Feminicidio", procedimento: "Confirmado"),
      Pop(
          id: "5.02.01",
          processo: "Montagem-do-EPI",
          procedimento: "destro-Para-Revolveres"),
      Pop(
          id: "5.02.02",
          processo: "Montagem-do-EPI",
          procedimento: "Canhoto-Para-Revolveres"),
      Pop(
          id: "5.02.03",
          processo: "Montagem-do-EPI",
          procedimento: "destro-Pistola"),
      Pop(
          id: "5.02.04",
          processo: "Montagem-do-EPI",
          procedimento: "Canhoto-Pistola"),
      Pop(
          id: "5.02.05",
          processo: "Montagem-do-EPI",
          procedimento:
              "Posicionamento-dos-Equipamentos-Nos-Acessorios-do-Epi"),
      Pop(
          id: "5.03.01",
          processo: "Contrabando-e-Descaminho",
          procedimento: "Classificacao-da-Ocorrencia"),
      Pop(
          id: "5.03.02",
          processo: "Contrabando-e-Descaminho",
          procedimento: "Atuacao-Policial-descaminho"),
      Pop(
          id: "5.03.03",
          processo: "Contrabando-e-Descaminho",
          procedimento: "Atuacao-Policial-Contrabando"),
      Pop(
          id: "5.03.04",
          processo: "Contrabando-e-Descaminho",
          procedimento: "Militares-Estaduais-Como-Autores"),
      Pop(
          id: "5.03.05",
          processo: "Contrabando-e-Descaminho",
          procedimento: "Militares-Federais-Como-Autores"),
      Pop(
          id: "5.03.06",
          processo: "Contrabando-e-Descaminho",
          procedimento: "demais-Agentes-de-Seguranca-Como-Autores"),
      Pop(
          id: "5.03.07",
          processo: "Contrabando-e-Descaminho",
          procedimento:
              "Guarda-de-Materiais-Retidos-e-Administracao-das-Ocorrencias-Geradas"),
      Pop(
          id: "6.01.01",
          processo: "Policiamento-Montado",
          procedimento: "Policiamento-Ostensivo"),
      Pop(
          id: "6.01.01",
          processo: "Presidio-Unei",
          procedimento:
              "Revista-Preventiva-Em-Estabelecimento-Prisional-Ou-Unidade-de-Internacao"),
      Pop(
          id: "6.01.01",
          processo: "Uso-Irregular-de-Recursos-Florestais",
          procedimento: "Atuacao-Policial"),
      Pop(
          id: "6.01.02",
          processo: "Policiamento-Montado",
          procedimento: "Abordagem-Policial-Montado"),
      Pop(
          id: "6.01.02",
          processo: "Presidio-Unei",
          procedimento: "Controle-de-Rebeliao"),
      Pop(
          id: "6.01.03",
          processo: "Policiamento-Montado",
          procedimento: "Operacoes-de-Choque-Montado"),
      Pop(
          id: "6.01.03",
          processo: "Presidio-Unei",
          procedimento: "Controle-de-Disturbios-Civis-e-Multidoes"),
      Pop(
          id: "6.01.04",
          processo: "Policiamento-Montado",
          procedimento: "Policiamento-Ostensivo-Shows-Festas-Eventos"),
      Pop(id: "6.02.01", processo: "Patrulhamento", procedimento: "Preventivo"),
      Pop(id: "6.02.02", processo: "Apoio-Em-Ocorrencia", procedimento: null),
      Pop(
          id: "6.02.03",
          processo: "Acompanhamento-de-Veiculo-e-Orientacao-de-Cerco",
          procedimento: null),
      Pop(
          id: "6.02.04",
          processo: "Apoio-Preventivo-a-Operacoes-de-Transito-Em-Rodovias",
          procedimento: null),
      Pop(
          id: "6.03.01",
          processo: "Operacoes-Helitransportaveis",
          procedimento: "Acionamento-da-Equipe-do-Gpa"),
      Pop(
          id: "6.03.02",
          processo: "Operacoes-Helitransportaveis",
          procedimento: "Briefing-Passageiros"),
      Pop(
          id: "6.03.03",
          processo: "Operacoes-Helitransportaveis",
          procedimento: "Embarque-e-desembarque-Tripulantes-Em-Voo"),
      Pop(
          id: "6.03.04",
          processo: "Operacoes-Helitransportaveis",
          procedimento: "Pouso-Em-Area-Restrita"),
      Pop(
          id: "6.03.05",
          processo: "Operacoes-Helitransportaveis",
          procedimento: "decolagem-Em-Area-Restrita"),
      Pop(
          id: "6.03.06",
          processo: "Operacoes-Helitransportaveis",
          procedimento: "Emprego-de-Armamento-a-Bordo"),
      Pop(
          id: "6.03.07",
          processo: "Operacoes-Helitransportaveis",
          procedimento: "Preparacao-Para-Rapel"),
      Pop(
          id: "6.03.08",
          processo: "Operacoes-Helitransportaveis",
          procedimento: "Apoio-Em-Acoes-de-Disturbio-Civil"),
      Pop(
          id: "6.03.09",
          processo: "Operacoes-Helitransportaveis",
          procedimento: "Apoio-Ocorrencia-Com-Refens"),
      Pop(
          id: "6.03.10",
          processo: "Operacoes-Helitransportaveis",
          procedimento: "Apoio-Acoes-de-Pracas-desportivas-e-Shows"),
      Pop(
          id: "6.03.11",
          processo: "Operacoes-Helitransportaveis",
          procedimento: "desembarque-Tropa-Estabelecimento-Prisional"),
      Pop(
          id: "6.03.12",
          processo: "Operacoes-Helitransportaveis",
          procedimento: "Apoio-Fiscalizacao-Ambiental"),
      Pop(
          id: "6.03.13",
          processo: "Operacoes-Helitransportaveis",
          procedimento: "Apoio-Transporte-Tropa-Caes"),
      Pop(
          id: "6.03.14",
          processo: "Operacoes-Helitransportaveis",
          procedimento: "Combate-a-Incendio-Florestal"),
      Pop(
          id: "6.04.01",
          processo: "Atendimento-Pre-Hospitalar-com-Aeronave",
          procedimento: "Preparo-da-Aeronave"),
      Pop(
          id: "6.04.02",
          processo: "Atendimento-Pre-Hospitalar-com-Aeronave",
          procedimento: "Transporte-No-Atendimento"),
      Pop(
          id: "6.04.03",
          processo:
              "Desinfeccao-da-Aeronave-Apos-Missao-de-Atendimento-Pre-Hospitalar",
          procedimento: null),
      Pop(
          id: "6.05.01",
          processo: "Operacoes-em-Aeronave",
          procedimento: "Busca-Em-Matas-a-Individuo-Infrator"),
      Pop(
          id: "6.05.02",
          processo: "Operacoes-em-Aeronave",
          procedimento: "Busca-Pessoas-Perdidas"),
      Pop(
          id: "6.05.03",
          processo: "Operacoes-em-Aeronave",
          procedimento: "Busca-a-Individuo-Infrator"),
      Pop(
          id: "6.06.01",
          processo: "Transporte-orgaos-Transplante",
          procedimento: "Embarque-de-Equipe"),
      Pop(
          id: "6.06.02",
          processo: "Transporte-orgaos-Transplante",
          procedimento: "Transporte-de-Equipe"),
      Pop(
          id: "6.06.03",
          processo: "Transporte-orgaos-Transplante",
          procedimento: "Chegada-Ao-Hospital"),
      Pop(
          id: "7.01.01",
          processo: "Policiamento-em-Eventos",
          procedimento: "Analises-Preliminares"),
      Pop(
          id: "7.01.02",
          processo: "Policiamento-em-Eventos",
          procedimento: "Avaliacao-de-Risco-Utilizando-Informacoes-Conhecidas"),
      Pop(
          id: "7.01.03",
          processo: "Policiamento-em-Eventos",
          procedimento: "Vistoria-Preliminar-de-Seguranca"),
      Pop(
          id: "7.01.04",
          processo: "Policiamento-em-Eventos",
          procedimento: "Reuniao-Preparatoria-de-Seguranca"),
      Pop(
          id: "7.01.05",
          processo: "Policiamento-em-Eventos",
          procedimento: "Reuniao-Estado-Maior"),
      Pop(id: "DOF1.01", processo: "Abigeato", procedimento: null),
      Pop(
          id: "DOF2.01",
          processo: "Contrabando-de-Cigarros",
          procedimento: null),
      Pop(
          id: "DOF2.02",
          processo: "Contrabando-e-Descaminho",
          procedimento: "de-Pneus"),
      Pop(
          id: "DOF2.03",
          processo: "Contrabando-Agrotoxicos-Minerios-Medicamentos",
          procedimento: null),
      Pop(
          id: "DOF2.04",
          processo: "Contrabando-descaminho-Produtos-Diversos",
          procedimento: null),
      Pop(
          id: "DOF2.05",
          processo: "Radio-Amador-Em-Veiculos",
          procedimento: null),
      Pop(
          id: "DOF3.01",
          processo: "Trafico-de-Armas-e-Municoes",
          procedimento: "Durante-Bloqueio"),
      Pop(
          id: "DOF3.02",
          processo: "Trafico-de-Armas-e-Municoes",
          procedimento: "Durante-Patrulhamento"),
      Pop(
          id: "DOF3.03",
          processo: "Trafico-de-Armas-e-Municoes",
          procedimento: "Em-Onibus-Rodoviario"),
      Pop(
          id: "DOF3.04",
          processo: "Trafico-de-Armas-e-Municoes",
          procedimento: "Em-Carreta"),
      Pop(
          id: "DOF4.01",
          processo: "Trafico-de-Drogas",
          procedimento: "Durante-Bloqueio"),
      Pop(
          id: "DOF4.02",
          processo: "Trafico-de-Drogas",
          procedimento: "Durante-Patrulhamento"),
      Pop(
          id: "DOF4.03",
          processo: "Trafico-de-Drogas",
          procedimento: "Em-Onibus-Rodoviario"),
      Pop(
          id: "DOF4.04",
          processo: "Trafico-de-Drogas",
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
}//fim da class Pop
