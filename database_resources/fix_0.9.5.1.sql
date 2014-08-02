# Fixes to migrate from 0.9.5.1 to 0.9.6.1_Finestra database version
# (C) Miguel Chavez Gamboa 2009-2011 [GPL v2 or later]
#
# run this as: cat fix_0.9.5.1.sql | mysql -u root -p


use lemondb;

ALTER TABLE products ADD `longdesc` text NULL;


