
DROP TABLE IF EXISTS playlists CASCADE;

CREATE TABLE playlists (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL UNIQUE,
  user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  image_url VARCHAR(500) NOT NULL
);