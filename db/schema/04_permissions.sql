DROP TABLE IF EXISTS permissions CASCADE;

CREATE TABLE permissions (
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER NOT NULL,
  account_id INTEGER REFERENCES accounts_id ON DELETE CASCADE,
  rights BOOLEAN NOT NULL DEFAULT FALSE
);
