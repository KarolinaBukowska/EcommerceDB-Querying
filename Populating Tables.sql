
-- Ensuring pgcrypto extension is available
CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- Populating Customers table with the appropriate data
INSERT INTO Customers (FirstName, LastName, Address1, City, PostalCode, Country, Phone, Email, PasswordHash, DateEntered, Status)
VALUES
  ('fbhsg', 'xyz', '123 Mock St', 'FakeCity', '12345', 'FakeLand', '555-1234', 'fake1@email.com', crypt('password1', gen_salt('md5'))::BYTEA, '2020-01-01T08:00:00', 'Active'),
  ('jklop', 'abc', '456 Imaginary Ave', 'Fantasyville', '67890', 'Dreamland', '555-5678',  'fake2@email.com', crypt('password2', gen_salt('md5'))::BYTEA, '2020-02-15T14:30:00', 'Active'),
  ('zxvbn', 'def', '789 Fictional Blvd', 'WonderCity', '98765', 'Mythica', '555-9012', 'fake3@email.com', crypt('password3', gen_salt('md5'))::BYTEA, '2020-03-23T18:45:00', 'Active'),
  ('qwerty', 'lmnop', '321 Dream St', 'Fantasyland', '54321', 'Magic Realm', '555-3456', 'fake4@email.com', crypt('password4', gen_salt('md5'))::BYTEA, '2020-04-05T12:15:00', 'Active'),
  ('ghijk', 'rstuv', '654 Enchanted Ave', 'Enchanted City', '13579', 'ImagiNation', '555-7890', 'fake5@email.com', crypt('password5', gen_salt('md5'))::BYTEA, '2020-05-20T08:30:00', 'Active'),
  ('mnopq', 'wxyz', '987 Whimsical Blvd', 'Whimsy Town', '24680', 'Dreamscape', '555-2345', 'fake6@email.com', crypt('password6', gen_salt('md5'))::BYTEA, '2020-06-10T15:20:00', 'Active'),
  ('abcdef', 'ghijkl', '123 Magic St', 'Mystic City', '97531', 'Fantasia', '555-6789', 'fake7@email.com', crypt('password7', gen_salt('md5'))::BYTEA, '2020-07-28T09:45:00', 'Active'),
  ('uvwxyz', 'wydfd', '456 Enchanting Ave', 'Enchantment City', '86420', 'Wishfuland', '555-0123', 'fake8@email.com', crypt('password8', gen_salt('md5'))::BYTEA, '2020-08-12T17:10:00', 'Active'),
  ('magic', 'fantasy', '789 Dreamy Blvd', 'Dreamlandia', '01234', 'MagicLand', '555-4567', 'fake9@email.com', crypt('password9', gen_salt('md5'))::BYTEA, '2020-09-05T11:55:00', 'Active'),
  ('fairy', 'tale', '321 Enchanted St', 'Fairytale City', '56789', 'WonderWorld', '555-8901', 'fake10@email.com', crypt('password10', gen_salt('md5'))::BYTEA, '2020-10-30T14:25:00', 'Active'),
  ('storybook', 'legend', '654 Fantasy Ave', 'Legend City', '09876', 'Mythos', '555-2109', 'fake11@email.com', crypt('password11', gen_salt('md5'))::BYTEA, '2021-01-15T16:50:00', 'Active'),
  ('whisper', 'wonder', '987 Fable Blvd', 'Wonderland', '13579', 'Fairytropolis', '555-5432', 'fake12@email.com', crypt('password12', gen_salt('md5'))::BYTEA, '2021-02-22T13:05:00', 'Active'),
  ('enchanted', 'realm', '123 Imagination St', 'Imaginaria', '24680', 'ImagiNation', '555-8765', 'fake13@email.com', crypt('password13', gen_salt('md5'))::BYTEA, '2021-03-10T10:30:00', 'Active'),
  ('dream', 'illusion', '456 Dreamland Ave', 'Illusion City', '97531', 'Dreamscape', '555-1098', 'fake14@email.com', crypt('password14', gen_salt('md5'))::BYTEA, '2021-04-18T19:15:00', 'Active'),
  ('fantasy', 'dreamer', '789 Magic Blvd', 'Dreamsville', '86420', 'Fantasia', '555-4321', 'fake15@email.com', crypt('password15', gen_salt('md5'))::BYTEA, '2021-05-27T22:40:00', 'Active'),
  ('mythical', 'dream', '321 Whimsical St', 'Whimsyville', '01234', 'Dreamscape', '555-7654', 'fake16@email.com', crypt('password16', gen_salt('md5'))::BYTEA, '2021-06-14T14:50:00', 'Active'),
  ('storybook', 'fantasy', '654 Fanciful Blvd', 'Fanciful City', '56789', 'WonderWorld', '555-0987', 'fake17@email.com', crypt('password17', gen_salt('md5'))::BYTEA, '2021-07-09T18:20:00', 'Active'),
  ('whimsy', 'magic', '987 Enchanted Ave', 'Enchanting City', '09876', 'Wonderland', '555-3210', 'fake18@email.com', crypt('password18', gen_salt('md5'))::BYTEA, '2021-08-26T10:10:00', 'Active'),
  ('fantasy', 'legend', '123 Whimsical St', 'Legendary City', '13579', 'Mythos', '555-6543', 'fake19@email.com', crypt('password19', gen_salt('md5'))::BYTEA, '2021-09-07T16:35:00', 'Active'),
  ('mythical', 'wonder', '456 Fable Ave', 'Wonderlandia', '24680', 'Fantasia', '555-9876', 'fake20@email.com', crypt('password20', gen_salt('md5'))::BYTEA, '2021-10-12T12:45:00', 'Active');


-- Populating the BillingInfo table with the appropriate data
INSERT INTO BillingInfo (CustomerID, BillingAddress, BillingCity, PostalCode, BillingCountry)
VALUES
  (1, '123 Mock St', 'FakeCity', '12345', 'FakeLand'),
  (2, '456 Imaginary Ave', 'Fantasyville', '67890', 'Dreamland'),
  (3, '789 Fictional Blvd', 'WonderCity', '98765', 'Mythica'),
  (4, '321 Dream St', 'Fantasyland', '54321', 'Magic Realm'),
  (5, '654 Enchanted Ave', 'Enchanted City', '13579', 'ImagiNation'),
  (6, '987 Whimsical Blvd', 'Whimsy Town', '24680', 'Dreamscape'),
  (7, '123 Magic St', 'Mystic City', '97531', 'Fantasia'),
  (8, '456 Enchanting Ave', 'Enchantment City', '86420', 'Wishfuland'),
  (9, '789 Dreamy Blvd', 'Dreamlandia', '01234', 'MagicLand'),
  (10, '321 Enchanted St', 'Fairytale City', '56789', 'WonderWorld'),
  (11, '654 Fantasy Ave', 'Legend City', '09876', 'Mythos'),
  (12, '987 Fable Blvd', 'Wonderland', '13579', 'Fairytropolis'),
  (13, '123 Imagination St', 'Imaginaria', '24680', 'ImagiNation'),
  (14, '456 Dreamland Ave', 'Illusion City', '97531', 'Dreamscape'),
  (15, '789 Magic Blvd', 'Dreamsville', '86420', 'Fantasia'),
  (16, '321 Whimsical St', 'Whimsyville', '01234', 'Dreamscape'),
  (17, '654 Fanciful Blvd', 'Fanciful City', '56789', 'WonderWorld'),
  (18, '987 Enchanted Ave', 'Enchanting City', '09876', 'Wonderland'),
  (19, '123 Whimsical St', 'Legendary City', '13579', 'Mythos'),
  (20, '456 Fable Ave', 'Wonderlandia', '24680', 'Fantasia');
  
  
  -- Populating the ShippingInfo table with the appropriate data
INSERT INTO ShippingInfo (CustomerID, ShipAddress, ShipCity, ShipPostalCode, ShipCountry)
VALUES
  (1, '123 Mock St', 'FakeCity', '12345', 'FakeLand'),
  (2, '456 Imaginary Ave', 'Fantasyville', '67890', 'Dreamland'),
  (3, '789 Fictional Blvd', 'WonderCity', '98765', 'Mythica'),
  (4, '321 Dream St', 'Fantasyland', '54321', 'Magic Realm'),
  (5, '654 Enchanted Ave', 'Enchanted City', '13579', 'ImagiNation'),
  (6, '987 Whimsical Blvd', 'Whimsy Town', '24680', 'Dreamscape'),
  (7, '123 Magic St', 'Mystic City', '97531', 'Fantasia'),
  (8, '456 Enchanting Ave', 'Enchantment City', '86420', 'Wishfuland'),
  (9, '789 Dreamy Blvd', 'Dreamlandia', '01234', 'MagicLand'),
  (10, '321 Enchanted St', 'Fairytale City', '56789', 'WonderWorld'),
  (11, '654 Fantasy Ave', 'Legend City', '09876', 'Mythos'),
  (12, '987 Fable Blvd', 'Wonderland', '13579', 'Fairytropolis'),
  (13, '123 Imagination St', 'Imaginaria', '24680', 'ImagiNation'),
  (14, '456 Dreamland Ave', 'Illusion City', '97531', 'Dreamscape'),
  (15, '789 Magic Blvd', 'Dreamsville', '86420', 'Fantasia'),
  (16, '321 Whimsical St', 'Whimsyville', '01234', 'Dreamscape'),
  (17, '654 Fanciful Blvd', 'Fanciful City', '56789', 'WonderWorld'),
  (18, '987 Enchanted Ave', 'Enchanting City', '09876', 'Wonderland'),
  (19, '123 Whimsical St', 'Legendary City', '13579', 'Mythos'),
  (20, '456 Fable Ave', 'Wonderlandia', '24680', 'Fantasia');
  
  -- Additional records coming with the addresses other than those provided in the Customers table
INSERT INTO ShippingInfo (CustomerID, ShipAddress, ShipCity, ShipPostalCode, ShipCountry)
VALUES
  (1, '789 Dream St', 'DreamCity', '54321', 'DreamLandia'),
  (2, '456 Fantasy Blvd', 'Fantasyland', '98765', 'FantasyRealm'),
  (3, '321 Enchanted St', 'Enchanted City', '24680', 'EnchantedLand'),
  (4, '987 Magic Ave', 'MagicTown', '13579', 'MagicWorld'),
  (5, '654 Mythical Blvd', 'Mythical City', '01234', 'MythicalLand'),
  (6, '123 Wonderland St', 'Wonderland', '86420', 'Wonderlandia'),
  (7, '456 Dreamy Ave', 'DreamyCity', '56789', 'DreamyLand'),
  (8, '789 Fairytale Blvd', 'FairytaleLand', '09876', 'FairytaleRealm'),
  (9, '321 Whimsical St', 'Whimsical City', '97531', 'WhimsicalLand'),
  (10, '987 Fantasy Blvd', 'FantasyLand', '54321', 'FantasyWorld'),
  (11, '654 Enchanted Ave', 'EnchantedCity', '13579', 'EnchantedRealm'),
  (12, '123 Magic St', 'MagicLand', '24680', 'MagicCity'),
  (13, '456 Mythical Blvd', 'MythicalCity', '97531', 'MythicalLand'),
  (14, '789 Wonderland St', 'Wonderland', '86420', 'WonderRealm'),
  (15, '321 Dreamy Ave', 'DreamyCity', '01234', 'DreamyWorld'),
  (16, '987 Fairytale Blvd', 'FairytaleLand', '56789', 'FairytaleCity'),
  (17, '654 Whimsical St', 'WhimsicalCity', '09876', 'WhimsicalRealm'),
  (18, '123 Fantasy Ave', 'FantasyLand', '13579', 'FantasyCity'),
  (19, '456 Enchanted Blvd', 'EnchantedCity', '24680', 'EnchantedWorld'),
  (20, '789 Magic St', 'MagicLand', '54321', 'MagicCity');
  
  
  -- Populating the Products table with the appropriate data
INSERT INTO Products (ProductName, Category, AvailableSizes, AvailableColors, Price, Status)
VALUES
  ('T-Shirt Red', 'T-Shirt', 'S, M, L', 'Red', 19.99, 'Available'),
  ('T-Shirt Blue', 'T-Shirt', 'S, M, L', 'Blue', 19.99, 'Available'),
  ('Jeans Classic', 'Jeans', '28, 30, 32, 34', 'Blue', 49.99, 'Available'),
  ('Hoodie Black', 'Hoodie', 'S, M, L', 'Black', 29.99, 'Available'),
  ('Sneakers White', 'Footwear', '7, 8, 9, 10', 'White', 59.99, 'Available'),
  ('Dress Elegant', 'Dress', 'S, M, L', 'Black', 79.99, 'Available'),
  ('Polo Shirt Striped', 'Polo Shirt', 'S, M, L', 'Blue, White', 24.99, 'Available'),
  ('Shorts Sporty', 'Shorts', 'S, M, L', 'Gray', 34.99, 'Available'),
  ('Jacket Leather', 'Jacket', 'M, L, XL', 'Brown', 89.99, 'Available'),
  ('Skirt Pleated', 'Skirt', 'S, M, L', 'Pink', 39.99, 'Available'),
  ('Sweater Knit', 'Sweater', 'S, M, L', 'Gray', 39.99, 'Out of Stock'),
  ('Dress Floral', 'Dress', 'S, M, L', 'Floral', 59.99, 'Discontinued'),
  ('Coat Winter', 'Coat', 'M, L, XL', 'Blue', 129.99, 'Available'),
  ('Socks Woolen', 'Socks', 'One Size', 'Assorted', 9.99, 'Available'),
  ('Hat Fedora', 'Hat', 'One Size', 'Black', 19.99, 'Out of Stock'),
  ('Sunglasses Aviator', 'Accessories', 'One Size', 'Gold', 29.99, 'Available'),
  ('Pajamas Cotton', 'Pajamas', 'S, M, L', 'Striped', 44.99, 'Available'),
  ('Gloves Leather', 'Gloves', 'M, L', 'Brown', 34.99, 'Available'),
  ('Scarf Knitted', 'Scarf', 'One Size', 'Red', 14.99, 'Out of Stock'),
  ('Belt Casual', 'Belt', 'M, L', 'Brown', 19.99, 'Discontinued'),
  ('Denim Jacket', 'Jacket', 'S, M, L', 'Denim Blue', 79.99, 'Available'),
  ('Striped Blouse', 'Blouse', 'S, M, L', 'Blue, White', 29.99, 'Available'),
  ('Corduroy Pants', 'Pants', '28, 30, 32', 'Brown', 54.99, 'Available'),
  ('Running Shoes', 'Footwear', '7, 8, 9, 10', 'Gray', 69.99, 'Available'),
  ('Leather Backpack', 'Accessories', 'One Size', 'Black', 49.99, 'Out of Stock'),
  ('Floral Sundress', 'Dress', 'S, M, L', 'Floral', 39.99, 'Available'),
  ('Straw Hat', 'Hat', 'One Size', 'Natural', 14.99, 'Available'),
  ('Cargo Shorts', 'Shorts', 'S, M, L', 'Khaki', 29.99, 'Available'),
  ('Knit Beanie', 'Hat', 'One Size', 'Gray', 12.99, 'Available'),
  ('Plaid Scarf', 'Scarf', 'One Size', 'Red, Green', 19.99, 'Out of Stock'),
  ('Classic Sunglasses', 'Accessories', 'One Size', 'Black', 24.99, 'Discontinued'),
  ('Lace Evening Gown', 'Dress', 'S, M, L', 'Black', 99.99, 'Available'),
  ('Tailored Blazer', 'Blazer', 'S, M, L', 'Navy', 64.99, 'Available'),
  ('Printed Leggings', 'Leggings', 'S, M, L', 'Patterned', 22.99, 'Available'),
  ('Suede Ankle Boots', 'Footwear', '6, 7, 8', 'Tan', 79.99, 'Available'),
  ('Silk Camisole', 'Top', 'S, M, L', 'Ivory', 34.99, 'Out of Stock'),
  ('Cotton Jumpsuit', 'Jumpsuit', 'S, M, L', 'Navy', 44.99, 'Available'),
  ('Fedora Hat', 'Hat', 'One Size', 'Brown', 17.99, 'Available'),
  ('Printed Tunic', 'Top', 'S, M, L', 'Patterned', 27.99, 'Available'),
  ('Leather Gloves', 'Gloves', 'M, L', 'Black', 39.99, 'Available');
  
  
  -- Populating the Orders table with the appropriate data
INSERT INTO Orders (CustomerID, OrderNumber, PaymentID, OrderDate, ShipDate, RequiredDate, ShipperID, TransactionStatus, Paid, PaymentDate)
VALUES  
  (1, 1001, 101, '2023-01-10T12:30:00', '2023-01-15T10:00:00', '2023-01-20T12:30:00', 1, 'Shipped', true, '2023-01-15T14:45:00'),
  (1, 1002, 102, '2023-02-05T14:45:00', '2023-02-10T11:30:00', '2023-02-15T14:45:00', 2, 'Delivered', true, '2023-02-10T15:20:00'),
  (1, 1003, 103, '2023-03-20T08:30:00', '2023-03-25T09:15:00', '2023-03-30T08:30:00', 3, 'Pending', false, NULL),
  (1, 1004, 104, '2023-04-15T16:50:00', '2023-04-20T18:20:00', '2023-04-25T16:50:00', 1, 'Shipped', true, '2023-04-20T20:00:00'),
  (1, 1005, 105, '2023-05-27T22:40:00', '2023-06-01T21:15:00', '2023-06-06T22:40:00', 2, 'Delivered', true, '2023-06-01T23:30:00'),
  (1, 1006, 106, '2023-06-14T14:50:00', '2023-06-20T16:20:00', '2023-06-25T14:50:00', 3, 'Pending', false, NULL),
  (1, 1007, 107, '2023-07-09T18:20:00', '2023-07-15T19:45:00', '2023-07-20T18:20:00', 1, 'Shipped', true, '2023-07-15T21:00:00'),
  (1, 1008, 108, '2023-08-26T10:10:00', '2023-08-31T08:35:00', '2023-09-05T10:10:00', 2, 'Delivered', true, '2023-08-31T11:45:00'),
  (1, 1009, 109, '2023-09-07T16:35:00', '2023-09-12T15:00:00', '2023-09-17T16:35:00', 3, 'Pending', false, NULL),
  (1, 1010, 110, '2023-10-12T12:45:00', '2023-10-18T14:10:00', '2023-10-23T12:45:00', 1, 'Shipped', true, '2023-10-18T15:30:00'), 
  (2, 1011, 111, '2023-01-15T16:50:00', '2023-01-20T18:20:00', '2023-01-25T16:50:00', 2, 'Delivered', true, '2023-01-20T19:45:00'),
  (2, 1012, 112, '2023-02-22T13:05:00', '2023-02-28T14:30:00', '2023-03-05T13:05:00', 3, 'Pending', false, NULL),
  (2, 1013, 113, '2023-03-10T10:30:00', '2023-03-15T11:55:00', '2023-03-20T10:30:00', 1, 'Shipped', true, '2023-03-15T13:15:00'),
  (3, 1014, 114, '2023-04-18T19:15:00', '2023-04-23T20:40:00', '2023-04-28T19:15:00', 2, 'Delivered', true, '2023-04-23T21:30:00'),
  (3, 1015, 115, '2023-05-27T22:40:00', '2023-06-01T23:30:00', '2023-06-06T22:40:00', 3, 'Pending', false, NULL),
  (3, 1016, 116, '2023-06-14T14:50:00', '2023-06-20T16:20:00', '2023-06-25T14:50:00', 1, 'Shipped', true, '2023-06-20T17:45:00'),
  (4, 1017, 117, '2023-07-09T18:20:00', '2023-07-15T19:45:00', '2023-07-20T18:20:00', 2, 'Delivered', true, '2023-07-15T21:00:00'),
  (4, 1018, 118, '2023-08-26T10:10:00', '2023-08-31T11:45:00', '2023-09-05T10:10:00', 3, 'Pending', false, NULL),
  (4, 1019, 119, '2023-09-07T16:35:00', '2023-09-12T17:00:00', '2023-09-17T16:35:00', 1, 'Shipped', true, '2023-09-12T18:00:00'); 
  
    
  -- Populating the OrderDetails table
INSERT INTO OrderDetails (OrderID, ProductID, OrderNumber, Price, Quantity, Discount, Total, Size, Color, ShipDate, BillDate)
VALUES
  (1, 1, 1001, 19.99, 2, 0.1, 35.98, 'M', 'Red', '2023-01-15T10:00:00', '2023-01-20T12:30:00'),
  (2, 2, 1002, 19.99, 1, 0, 19.99, 'L', 'Blue', '2023-02-10T11:30:00', '2023-02-15T14:45:00'),
  (3, 3, 1003, 49.99, 3, 0.15, 127.47, '32', 'Blue', NULL, NULL),
  (4, 4, 1004, 29.99, 1, 0, 29.99, 'M', 'Black', '2023-04-20T18:20:00', '2023-04-25T16:50:00'),
  (5, 5, 1005, 59.99, 2, 0.2, 95.98, '9', 'White', '2023-06-01T21:15:00', '2023-06-06T22:40:00'),
  (6, 6, 1006, 79.99, 1, 0.1, 71.99, 'L', 'Black', '2023-06-20T16:20:00', '2023-06-25T14:50:00'),
  (7, 7, 1007, 24.99, 3, 0.15, 64.47, 'S', 'Blue', '2023-07-15T19:45:00', '2023-07-20T18:20:00'),
  (8, 8, 1008, 34.99, 1, 0, 34.99, 'L', 'Gray', '2023-08-31T08:35:00', '2023-09-05T10:10:00'),
  (9, 9, 1009, 89.99, 2, 0.2, 143.98, 'XL', 'Brown', '2023-09-12T15:00:00', '2023-09-17T16:35:00'),
  (10, 10, 1010, 39.99, 1, 0, 39.99, 'L', 'Pink', '2023-10-18T14:10:00', '2023-10-23T12:45:00'), 
  (11, 11, 1011, 29.99, 2, 0.1, 53.98, 'M', 'Blue', '2023-01-20T18:20:00', '2023-01-25T16:50:00'),
  (12, 12, 1012, 79.99, 1, 0, 79.99, 'L', 'Black', '2023-02-28T14:30:00', '2023-03-05T13:05:00'),
  (13, 13, 1013, 59.99, 3, 0.15, 143.97, 'M', 'Floral', '2023-03-15T11:55:00', '2023-03-20T10:30:00'),   
  (14, 14, 1014, 9.99, 2, 0, 19.98, 'One Size', 'Assorted', '2023-04-23T20:40:00', '2023-04-28T19:15:00'),
  (15, 15, 1015, 19.99, 1, 0.1, 17.99, 'One Size', 'Black', '2023-06-01T23:30:00', '2023-06-06T22:40:00'),
  (16, 16, 1016, 29.99, 2, 0.15, 50.98, 'One Size', 'Gold', '2023-06-20T16:20:00', '2023-06-25T14:50:00'),
  (17, 17, 1017, 44.99, 1, 0, 44.99, 'S', 'Striped', '2023-07-15T19:45:00', '2023-07-20T18:20:00'),
  (18, 18, 1018, 34.99, 3, 0.2, 83.97, 'L', 'Brown', '2023-08-31T11:45:00', '2023-09-05T10:10:00'),
  (19, 19, 1019, 14.99, 1, 0, 14.99, 'One Size', 'Red', '2023-09-12T17:45:00', '2023-10-05T10:13:00');
  


SELECT *
FROM OrderDetails;  
  
  
  






