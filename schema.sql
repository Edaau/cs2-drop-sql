CREATE TABLE lootbox (
    lootbox_id INT PRIMARY KEY,
    lootbox_name VARCHAR(255) NOT NULL
);

CREATE TABLE skin (
    id SERIAL PRIMARY KEY,
    skin_name VARCHAR(255) NOT NULL,
    rarity VARCHAR(50) NOT NULL,
    chance NUMERIC(5,2) NOT NULL,
    lootbox_id INT REFERENCES lootbox(lootbox_id) ON DELETE CASCADE
);