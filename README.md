# 🍱 Helm Charts para Kubernetes ☸️

Bem-vindo(a) ao meu repositório de receitas Helm para Kubernetes! Aqui você encontrará gráficos Helm saborosos e nutritivos para suas aplicações, facilitando o deploy e gerenciamento em seus clusters Kubernetes.

## 📜 Estrutura das Receitas

Cada receita (chart) segue uma estrutura organizada e bem documentada:

```bash
├── nome-da-receita
├─── Chart.yaml               # Informações sobre o chart Helm (nome, versão, descrição, etc.)
├─── values.yaml              # Valores configuráveis ​para o chart, que podem ser substituídos durante a instalação.
├─── .helmignore              # Lista de arquivos e diretórios a serem ignorados pelo Helm durante o empacotamento.
├─── templates                # Diretório contendo os templates que geram os arquivos de manifesto Kubernetes.
│    ├─── _helpers.tpl        # Funções e blocos de código reutilizáveis nos templates.
│    ├─── certificate.yaml    # Template para gerar o manifesto de um certificado TLS/SSL.
│    ├─── configmap.yaml      # Template para gerar um ConfigMap Kubernetes.
│    ├─── deployment.yaml     # Template para gerar um Deployment Kubernetes.
│    ├─── hpa.yaml            # Template para gerar um HorizontalPodAutoscaler Kubernetes.
│    ├─── ingress.yaml        # Template para gerar um Ingress Kubernetes.
│    ├─── istiogateway.yaml   # Template para gerar um Istio Gateway.
│    ├─── NOTES.txt           # Mensagens exibidas para o usuário após a instalação do chart.
│    ├─── pdb.yaml            # Template para gerar um PodDisruptionBudget Kubernetes.
│    ├─── role.yaml           # Template para gerar um Role Kubernetes (RBAC).
│    ├─── rolebinding.yaml    # Template para gerar um RoleBinding Kubernetes (RBAC).
│    ├─── secret.yaml         # Template para gerar um Secret Kubernetes.
│    ├─── service.yaml        # Template para gerar um Service Kubernetes.
│    ├─── serviceaccount.yaml # Template para gerar um ServiceAccount Kubernetes.
│    ├─── virtualservice.yaml # Template para gerar um VirtualService Istio.
│    ├─── cronjob.yaml        # Template para gerar um CronJob Kubernetes.
│    ├─── pvc.yaml            # Template para gerar um PersistentVolumeClaim Kubernetes.
└─── tests                    # Diretório opcional para scripts de teste.
└───── test-connection.yaml   # Exemplo de script de teste para verificar a conectividade do serviço.
```

## 🧑‍🍳 Receitas Disponíveis


| Receita              | Descrição                                                                 | Versão |
|----------------------|---------------------------------------------------------------------------|--------|
| wordpress ⌛         | Implanta um site WordPress completo com banco de dados MySQL e servidor web Nginx. | 5.3.2  |



## 🛠️ Como Usar

1. Adicione o repositório:

```bash
  helm repo add meu-repositorio https://github.com/br4tech/kubernetes-helm-cookbook
```

2. Atualize o repositório:

```bash
  helm repo update
```

3. Instale um chart:

```bash
  helm install minha-aplicacao meu-repositorio/minha-receita
```

## 🤝 Contribuindo
Sinta-se à vontade para contribuir com novas receitas, melhorias ou correções! Basta abrir uma issue ou pull request.