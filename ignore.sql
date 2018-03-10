#Countries Table
INSERT INTO `lara_cms`.`countries` (`id`, `name`, `created_at`, `updated_at`)
    VALUES (NULL, 'India', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
           (NULL, 'Canada', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
           (NULL, 'Australia', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
           (NULL, 'New Zealand', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
           (NULL, 'Malaysia', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
           (NULL, 'Japan', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
           (NULL, 'Myanmar', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
           (NULL, 'Brazil', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
           (NULL, 'Bhutan', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
           (NULL, 'Nepal', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
           (NULL, 'China', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
           (NULL, 'Russia', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
           (NULL, 'Taiwan', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
           (NULL, 'America', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
           (NULL, 'Britain', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
           (NULL, 'Scotland', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
           (NULL, 'Dubai', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
           (NULL, 'Switzerland', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
           (NULL, 'France', '2018-03-10 00:00:00', '2018-03-10 00:00:00');

#Roles Table
INSERT INTO `lara_cms`.`roles` (`id`, `name`, `created_at`, `updated_at`)
    VALUES
    (NULL, 'Administrator', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
    (NULL, 'Subscriber', '2018-03-10 00:00:00', '2018-03-10 00:00:00');

#Posts Table
INSERT INTO `lara_cms`.`posts` (`id`, `title`, `content`, `created_at`, `updated_at`, `is_admin`, `deleted_at`)
  VALUES
  (NULL, 'Laravel Post 1 Title', 'Laravel Post 1 Content', '2018-03-10 00:00:00', '2018-03-10 00:00:00', '0', NULL),
  (NULL, 'Laravel Post 2 Title', 'Laravel Post 2 Content', '2018-03-10 00:00:00', '2018-03-10 00:00:00', '0', NULL),
  (NULL, 'Laravel Post 3 Title', 'Laravel Post 3 Content', '2018-03-10 00:00:00', '2018-03-10 00:00:00', '0', NULL),
  (NULL, 'Laravel Post 4 Title', 'Laravel Post 4 Content', '2018-03-10 00:00:00', '2018-03-10 00:00:00', '0', NULL),
  (NULL, 'Laravel Post 5 Title', 'Laravel Post 5 Content', '2018-03-10 00:00:00', '2018-03-10 00:00:00', '0', NULL),
  (NULL, 'Laravel Post 6 Title', 'Laravel Post 6 Content', '2018-03-10 00:00:00', '2018-03-10 00:00:00', '0', NULL),
  (NULL, 'Laravel Post 7 Title', 'Laravel Post 7 Content', '2018-03-10 00:00:00', '2018-03-10 00:00:00', '0', NULL),
  (NULL, 'Laravel Post 8 Title', 'Laravel Post 8 Content', '2018-03-10 00:00:00', '2018-03-10 00:00:00', '0', NULL),
  (NULL, 'Laravel Post 9 Title', 'Laravel Post 9 Content', '2018-03-10 00:00:00', '2018-03-10 00:00:00', '0', NULL),
  (NULL, 'Laravel Post 10 Title', 'Laravel Post 10 Content', '2018-03-10 00:00:00', '2018-03-10 00:00:00', '0', NULL),
  (NULL, 'Laravel Post 11 Title', 'Laravel Post 11 Content', '2018-03-10 00:00:00', '2018-03-10 00:00:00', '0', NULL),
  (NULL, 'Laravel Post 12 Title', 'Laravel Post 12 Content', '2018-03-10 00:00:00', '2018-03-10 00:00:00', '0', NULL);

#Users Table
INSERT INTO `lara_cms`.`users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `Country_id`)
  VALUES
  (NULL, 'Nikita Malhotra', 'nikita@nikita.com', '123', NULL, '2018-03-10 00:00:00', '2018-03-10 00:00:00', ''),
  (NULL, 'Pooja Sharma',    'pooja@pooja.com',   '123', NULL, '2018-03-10 00:00:00', '2018-03-10 00:00:00', ''),
  (NULL, 'Kiran Mehta' ,    'kiran@kiran.com',   '123', NULL, '2018-03-10 00:00:00', '2018-03-10 00:00:00', ''),
  (NULL, 'Jatin Katiyal',   'jatin@jatin.com',   '123', NULL, '2018-03-10 00:00:00', '2018-03-10 00:00:00', ''),
  (NULL, 'Lalit Sharma',    'lalit@lalit.com',   '123', NULL, '2018-03-10 00:00:00', '2018-03-10 00:00:00', ''),
  (NULL, 'Pawan Kumar',     'pawan@pawan.com',   '123', NULL, '2018-03-10 00:00:00', '2018-03-10 00:00:00', ''),
  (NULL, 'David Watson',    'david@david.com',   '123', NULL, '2018-03-10 00:00:00', '2018-03-10 00:00:00', '');

#role_user
INSERT INTO `lara_cms`.`role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`)
  VALUES
  (NULL, '1', '1', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
  (NULL, '2', '1', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
  (NULL, '8', '2', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
  (NULL, '9', '2', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
  (NULL, '10', '2', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
  (NULL, '11', '1', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
  (NULL, '12', '2', '2018-03-10 00:00:00', '2018-03-10 00:00:00');

#Photos
INSERT INTO `lara_cms`.`photos` (`id`, `path`, `imageable_id`, `imageable_type`, `created_at`, `updated_at`)
  VALUES
  (NULL, 'a1.jpg',  '1', 'App\\User', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
  (NULL, 'a2.jpg',  '2', 'App\\Post', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
  (NULL, 'a3.jpg',  '1', 'App\\Post', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
  (NULL, 'a4.jpg',  '3', 'App\\Post', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
  (NULL, 'a5.jpg',  '4', 'App\\Post', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
  (NULL, 'a6.jpg',  '5', 'App\\Post', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
  (NULL, 'a7.jpg',  '6', 'App\\Post', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
  (NULL, 'a8.jpg',  '7', 'App\\Post', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
  (NULL, 'a9.jpg',  '8', 'App\\Post', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
  (NULL, 'a10.jpg', '9', 'App\\Post', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
  (NULL, 'a11.jpg', '10', 'App\\Post', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
  (NULL, 'a12.jpg', '11', 'App\\Post', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
  (NULL, 'a13.jpg', '12', 'App\\Post', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
  (NULL, 'a14.jpg', '8',  'App\\User', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
  (NULL, 'a15.jpg', '9',  'App\\User', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
  (NULL, 'a16.jpg', '10', 'App\\User', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
  (NULL, 'a17.jpg', '11', 'App\\User', '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
  (NULL, 'a18.jpg', '12', 'App\\User', '2018-03-10 00:00:00', '2018-03-10 00:00:00');




