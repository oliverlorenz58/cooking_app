# PostgreSQL-Image für die Cocktail-Datenbank
# Benutzer, Passwort und DB-Name kommen zur Laufzeit über Umgebungsvariablen
# (POSTGRES_USER, POSTGRES_PASSWORD, POSTGRES_DB) und stehen nicht im Image.
FROM postgres:17-alpine

# Alle *.sql-Dateien hier werden beim allerersten Start (leeres Volume) ausgeführt
COPY init/ /docker-entrypoint-initdb.d/

# Prüft über TCP, damit die DB erst als "healthy" gilt, wenn die Init-Skripte
# durchgelaufen sind (während der Initialisierung lauscht Postgres nur auf dem Socket)
HEALTHCHECK --interval=5s --timeout=3s --start-period=10s --retries=10 \
  CMD pg_isready -h 127.0.0.1 -U "$POSTGRES_USER" -d "$POSTGRES_DB" || exit 1
