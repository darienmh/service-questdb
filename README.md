# Service QuestDB

This project provides a Docker configuration to run QuestDB, a high-performance time series database, with optimized settings and data persistence.

## 🚀 Features

- QuestDB with web interface included
- Configured data persistence
- Multiple access protocols (REST, PostgreSQL, InfluxDB)
- Automatic restart on failure
- Production-ready configuration

## 📋 Prerequisites

- Docker
- Docker Compose

## 🔧 Setup

1. Clone the repository:
```bash
git clone git@github.com:darienmh/service-questdb.git
cd service-questdb
cp example.env .env
```

2. Configure environment variables (optional):
- `QDB_PG_USER`: PostgreSQL user (default: admin)
- `QDB_PG_PASSWORD`: PostgreSQL password (default: quest)

### Generate random password
```bash
openssl rand -base64 30 | tr -dc 'a-zA-Z0-9' | head -c 30 && echo
```

## 🚀 Usage

To start the service:

```bash
docker compose up -d
```

To stop the service:

```bash
docker compose down
```

## 🔍 Access

- Web Console: `http://localhost:9003`
- REST API: `http://localhost:9000`
- PostgreSQL: `localhost:8812`
- InfluxDB Line Protocol: `localhost:9009`

## ⚙️ QuestDB Configuration

The configuration includes:
- Local volume data persistence
- Exposed ports for all protocols
- Automatic restart on failure

## 📁 Project Structure

```
.
├── docker-compose.yml
├── README.md
├── example.env
├── questdb.conf
└── questdb-data/
```

## 🔒 Security

- It is recommended to change the default credentials
- Persistent data is stored in the `questdb-data/` directory
- Default credentials are:
  - User: admin
  - Password: quest

## 📝 MIT License

## 🤝 Contributing

Contributions are welcome. Please open an issue first to discuss the changes you would like to make. 