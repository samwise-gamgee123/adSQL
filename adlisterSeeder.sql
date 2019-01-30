USE ad_lister;

INSERT INTO categories (category_id, name_category)
VALUES ('c0001','For Sale');

INSERT INTO categories(category_id, name_category)
VALUES ('c0002', 'Antiques');

INSERT INTO categories(category_id, name_category)
VALUES ('c0003', 'Services');


INSERT INTO users (user_email, user_password)
VALUES ('jimbob@yahoo.com','11112');

INSERT INTO users (user_email, user_password)
VALUES ('landonISaSpy@FBI.net', 'password');

INSERT INTO users(user_email, user_password)
VALUES ('rickTheStick@gmail.com', 'stickyRicky123');


INSERT INTO ads (ad_id, ad_title, ad_des, user_id, category_id)
VALUES (1,'NICE BED BOYSSS!!!!',
'Juicy bed filled with good times, might contain bio-hazard(body fluids)',
1,'c0001');

INSERT INTO ads (ad_id, ad_title, ad_des, user_id, category_id)
VALUES (2, 'Super Old PickUp Truck', 'Super old truck that I found in the woods, come take it off of my property please', 2, 'c0002');

INSERT INTO ads (ad_id, ad_title, ad_des, user_id, category_id)
VALUES (3, 'Old Man', 'Found this old guy, someone come take him', 3, 'c0002');

