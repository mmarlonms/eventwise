Sobre o projeto : 

Projeto criado para sintetizar alguns conhecimentos como manipulção de dados, inclusão de boas práticas e utilização do [Chat GPT](https://openai.com/blog/chatgpt/) para auxiliar na documentação e geração RoadMap do projeto. 

# EventWise
O EventWise é um sistema de gerenciamento de eventos que ajuda os organizadores a criar, gerenciar e promover seus eventos de forma eficiente.

##Principais funções
O EventWise oferece as seguintes funcionalidades principais:

Criação de eventos
Os organizadores podem criar novos eventos com informações detalhadas, como o nome, data e hora, localização, ingressos disponíveis, palestrantes e patrocinadores.

Venda de ingressos
Os participantes podem comprar ingressos para os eventos, escolhendo a quantidade desejada e fazendo o pagamento diretamente no sistema.

Gerenciamento de participantes
Os organizadores podem gerenciar os participantes dos eventos, visualizando informações como nome, e-mail, tipo de ingresso e status de pagamento.

Integração com redes sociais
Os organizadores podem promover seus eventos nas redes sociais, como o Facebook e o Twitter, compartilhando informações relevantes, como a data e hora, localização e palestrantes.

Relatórios e estatísticas
O EventWise oferece relatórios e estatísticas detalhadas sobre cada evento, como o número de ingressos vendidos, o perfil dos participantes e as receitas e despesas relacionadas ao evento.

## Modelo de Domínio do EventWise
O modelo de domínio do EventWise inclui as seguintes entidades:

Evento: representa um evento específico, com informações como nome, data e hora, localização, ingressos disponíveis, palestrantes e patrocinadores.
Ingresso: representa um ingresso para um evento específico, com informações como o tipo de ingresso, o preço e a quantidade disponível.
Participante: representa um participante de um evento específico, com informações como nome, e-mail, tipo de ingresso e status de pagamento.
Palestrante: representa um palestrante em um evento específico, com informações como nome, biografia e foto.
Patrocinador: representa um patrocinador em um evento específico, com informações como nome, logotipo e nível de patrocínio.
Usuário: representa um usuário do sistema, com informações como nome, e-mail, senha e permissões de acesso.
Além disso, o modelo de domínio também inclui as seguintes associações entre as entidades:

Evento-Ingresso: um evento pode ter vários tipos de ingressos disponíveis, e um tipo de ingresso pode estar disponível em vários eventos.
Evento-Participante: um evento pode ter vários participantes, e um participante pode participar de vários eventos.
Evento-Palestrante: um evento pode ter vários palestrantes, e um palestrante pode participar de vários eventos.
Evento-Patrocinador: um evento pode ter vários patrocinadores, e um patrocinador pode patrocinar vários eventos.
Usuário-Evento: um usuário pode criar e gerenciar vários eventos, e um evento pode ser criado e gerenciado por vários usuários.