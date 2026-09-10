# 🌿 API - Espaço de Apoio para Ansiedade (Back-end)

API RESTful desenvolvida para a matéria de **Projeto de Software (AC 1)** do curso de **Análise e Desenvolvimento de Sistemas (ADS)**.

Responsável pela persistência e gerenciamento seguro dos check-ins de sentimentos realizados no site.

---

## 🔗 Links do Projeto

- 🌐 **Site no Ar (Front-end):** [Acesse na Vercel](https://ajuda-para-ansiedade-site.vercel.app/)
- ⚙️ **API no Ar (Back-end):** [Acesse no Render](https://ajuda-para-ansiedade-api.onrender.com/api/checkins)
- 📁 **Repositório do Front-end:** [AjudaParaAnsiedadeSite](https://github.com/Milene-Arla/AjudaParaAnsiedadeSite)

---

## 🚀 Funcionalidade (AC 1)

- **`POST /api/checkins`**: Cadastra um check-in emocional anônimo com nível de ansiedade (1 a 10), código de acompanhamento, emoção predominante e desabafo.
- **`GET /api/checkins`**: Lista o histórico dos registros cadastrados.

---

## 🛠️ Tecnologias

- **Linguagem & Framework:** Kotlin & Spring Boot 3
- **Persistência:** Spring Data JPA (Hibernate)
- **Banco de Dados:** PostgreSQL (Tabela `checkin`) hospedado no Render
- **Validação:** Jakarta Validation
- **Container & Deploy:** Docker & Render Cloud
