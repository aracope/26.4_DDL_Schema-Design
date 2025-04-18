CREATE TABLE region (
    region_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE category (
    category_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT
);

CREATE TABLE user (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    location VARCHAR(100),
    region_id INTEGER REFERENCES region(region_id)
);

-- Supports one category per post.
-- For multiple categories, use `post_category` join table and remove `category_id` from `post`.
CREATE TABLE post (
    post_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES user(user_id),
    region_id INTEGER REFERENCES region(region_id),
    category_id INTEGER REFERENCES category(category_id),
    title VARCHAR(100) NOT NULL,
    text VARCHAR(1000) NOT NULL,
    created_at DATE NOT NULL,
    contact_info VARCHAR(255)
);


CREATE TABLE post_category (
    post_id INTEGER REFERENCES post(post_id),
    category_id INTEGER REFERENCES category(category_id),
    PRIMARY KEY (post_id, category_id)
);
