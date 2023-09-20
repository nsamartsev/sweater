CREATE EXTENSION IF NOT EXISTS pgcrypto;

UPDATE usr SET password = crypt(password, gen_salt('bf', 8));
