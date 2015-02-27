CREATE TABLE IF NOT EXISTS blogs (
  blog_id uuid,
  article text,
  authors set<text>,
  publishing_date timestamp,
  tags set<text>,
  title text,
  PRIMARY KEY ((blog_id))
);