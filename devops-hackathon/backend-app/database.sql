CREATE DATABASE IF NOT EXISTS task_management_db;

CREATE USER IF NOT EXISTS 'binhnt-hnk24cntt1'@'localhost' IDENTIFIED BY '1234$';

GRANT ALL PRIVILEGES ON task_management_db.* TO 'binhnt-hnk24cntt1'@'localhost';

FLUSH PRIVILEGES;

USE task_management_db;

create table categories
(
    category_id   bigint auto_increment
        primary key,
    category_name varchar(100) not null,
    status        bit          null,
    constraint UK41g4n0emuvcm3qyf1f6cn43c0
        unique (category_name)
);

create table products
(
    product_id   bigint auto_increment
        primary key,
    expire_date  date         null,
    product_name varchar(100) not null,
    producer     varchar(100) not null,
    year_making  int          null,
    category_id  bigint       null,
    constraint FKog2rp4qthbtt2lfyhfo32lsw9
        foreign key (category_id) references categories (category_id)
);

INSERT INTO categories (category_name, status) VALUES
                                                   ('Điện thoại', 1),
                                                   ('Laptop', 1),
                                                   ('Máy tính bảng', 1),
                                                   ('Tai nghe', 1),
                                                   ('Đồng hồ thông minh', 1),
                                                   ('Máy ảnh', 1),
                                                   ('Tivi', 1),
                                                   ('Tủ lạnh', 1),
                                                   ('Máy giặt', 1),
                                                   ('Loa Bluetooth', 0);


INSERT INTO products
(expire_date, product_name, producer, year_making, category_id)
VALUES
    ('2028-12-31', 'iPhone 15', 'Apple', 2023, 1),
    ('2029-06-30', 'Galaxy S24', 'Samsung', 2024, 1),
    ('2030-01-15', 'MacBook Air M3', 'Apple', 2024, 2),
    ('2029-09-20', 'ThinkPad E14', 'Lenovo', 2024, 2),
    ('2028-11-30', 'iPad Air', 'Apple', 2024, 3),
    ('2029-03-31', 'Galaxy Tab S9', 'Samsung', 2023, 3),
    ('2028-08-15', 'WH-1000XM5', 'Sony', 2022, 4),
    ('2029-12-31', 'AirPods Pro 2', 'Apple', 2023, 4),
    ('2030-05-20', 'Galaxy Watch 6', 'Samsung', 2023, 5),
    ('2028-10-10', 'X-S20', 'Fujifilm', 2023, 6);