CREATE TABLE IF NOT EXISTS accounts(
  id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name varchar(255) COMMENT 'User Name',
  email varchar(255) COMMENT 'User Email',
  picture varchar(255) COMMENT 'User Picture'
) default charset utf8 COMMENT '';
INSERT INTO
  accounts (name, email, picture, id)
VALUES
  (
    'TrashPanda',
    'TrashPanda@trashpanda.com',
    'http://placehold.it/200x200',
    '4352655981'
  );
SELECT
  *
FROM
  accounts;
CREATE TABLE IF NOT EXISTS recipes(
    id INT NOT NULL AUTO_INCREMENT primary key COMMENT 'primary key',
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
    title VARCHAR(255) COMMENT 'Recipe title',
    description VARCHAR(255) COMMENT 'Recipe description',
    cookTime INT COMMENT 'Recipe cookTime',
    prepTime INT COMMENT 'Recipe prepTime',
    creatorId VARCHAR(255) NOT NULL COMMENT 'account Id of creator',
    FOREIGN KEY (creatorId) REFERENCES accounts(id) ON DELETE CASCADE
  ) default charset utf8 COMMENT '';