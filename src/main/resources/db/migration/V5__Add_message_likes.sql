CREATE TABLE message_likes (
  user_id bigint NOT NULL REFERENCES usr,
  message_id bigint NOT NULL REFERENCES message,
  PRIMARY KEY (user_id, message_id)
)