DROP TABLE IF EXISTS users;
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    coordinate_x NUMERIC,
    coordinate_y NUMERIC,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO users (name, phone, email, coordinate_x, coordinate_y)
VALUES (
        'Danielle Bullock',
        '1381-8605',
        'pede.et@outlook.couk',
        831,
        270
    ),
    (
        'Cecilia Morton',
        '7885-9546',
        'pellentesque.habitant@yahoo.com',
        517,
        490
    ),
    (
        'April Rush',
        '3506-3170',
        'vivamus@hotmail.com',
        716,
        586
    ),
    (
        'Kenneth Palmer',
        '4922-5956',
        'lorem.lorem@google.org',
        349,
        341
    ),
    (
        'Hannah Shaffer',
        '7077-8868',
        'nascetur.ridiculus.mus@google.couk',
        304,
        856
    ),
    (
        'Yuli Payne',
        '8617-3085',
        'nisl.elementum@yahoo.couk',
        228,
        206
    ),
    (
        'Colt Fields',
        '2733-2270',
        'sapien@hotmail.com',
        868,
        58
    ),
    (
        'Indigo Swanson',
        '3587-2633',
        'vestibulum.accumsan@yahoo.ca',
        867,
        236
    ),
    (
        'Burke Stokes',
        '6365-4684',
        'quam@hotmail.ca',
        609,
        588
    ),
    (
        'Gray Miller',
        '8486-2645',
        'fusce.fermentum@icloud.edu',
        70,
        63
    ),
    (
        'Sawyer Mayo',
        '5047-2867',
        'auctor@outlook.net',
        251,
        291
    ),
    (
        'Raya Stanley',
        '1664-6547',
        'ante@hotmail.couk',
        805,
        119
    ),
    (
        'Yoko Benton',
        '1684-8414',
        'mollis.integer.tincidunt@aol.net',
        695,
        928
    ),
    (
        'Eve Jefferson',
        '7422-6905',
        'ipsum.primis.in@icloud.org',
        658,
        488
    ),
    (
        'Latifah Kramer',
        '9122-2347',
        'dui.cum@hotmail.org',
        538,
        145
    ),
    (
        'Anjolie Winters',
        '8843-1697',
        'ullamcorper@icloud.edu',
        888,
        671
    ),
    (
        'Cleo Thomas',
        '2876-1711',
        'convallis.dolor@icloud.org',
        63,
        518
    ),
    (
        'Maite Craft',
        '8225-5171',
        'metus@aol.net',
        665,
        438
    ),
    (
        'Conan Larsen',
        '2894-5395',
        'facilisis.facilisis@protonmail.com',
        518,
        196
    ),
    (
        'Judith Sykes',
        '8924-7948',
        'nonummy.fusce@aol.org',
        472,
        590
    ),
    (
        'Christopher Sykes',
        '7155-1223',
        'neque.morbi@yahoo.edu',
        718,
        766
    ),
    (
        'Kuame Lowery',
        '5020-6276',
        'eu.sem@google.ca',
        897,
        551
    ),
    (
        'Maris Schwartz',
        '2712-5651',
        'ornare@aol.couk',
        530,
        640
    ),
    (
        'Honorato Knight',
        '0176-5242',
        'dignissim.tempor@outlook.ca',
        362,
        570
    ),
    (
        'Basil Hensley',
        '3451-4405',
        'turpis.in@protonmail.edu',
        363,
        493
    ),
    (
        'Ora Daniel',
        '5327-3306',
        'varius.ultrices@icloud.ca',
        264,
        349
    ),
    (
        'Jasper Chen',
        '4797-1327',
        'tempor.diam@google.couk',
        656,
        394
    ),
    (
        'Nicholas Bowman',
        '5614-1255',
        'at.arcu@protonmail.com',
        713,
        476
    ),
    (
        'Iris Lucas',
        '8080-2489',
        'sed.orci@yahoo.couk',
        49,
        865
    ),
    (
        'Xantha Buckley',
        '3132-6437',
        'ipsum.nunc@hotmail.edu',
        734,
        741
    ),
    (
        'Gannon Maddox',
        '8343-8265',
        'senectus.et.netus@icloud.ca',
        175,
        151
    ),
    (
        'Alden Hahn',
        '6228-8536',
        'nulla.donec@aol.com',
        680,
        886
    ),
    (
        'Vance Graves',
        '8433-2572',
        'nunc.quis@aol.com',
        720,
        27
    ),
    (
        'Shad Knight',
        '5267-1156',
        'mauris.ipsum@icloud.ca',
        656,
        209
    ),
    (
        'Josephine Burgess',
        '1546-8012',
        'curabitur.dictum.phasellus@outlook.net',
        56,
        700
    ),
    (
        'Janna Rhodes',
        '0193-5835',
        'donec.porttitor@aol.edu',
        18,
        927
    ),
    (
        'Josiah Raymond',
        '8651-7435',
        'neque.vitae@aol.net',
        974,
        939
    ),
    (
        'Leila Jennings',
        '2238-3273',
        'arcu.aliquam@icloud.com',
        448,
        819
    ),
    (
        'Bethany Lamb',
        '3334-3962',
        'id.sapien.cras@aol.ca',
        2,
        777
    ),
    (
        'Connor Burton',
        '3828-8066',
        'malesuada.augue.ut@google.couk',
        706,
        330
    ),
    (
        'Fay Boone',
        '7333-6069',
        'volutpat.ornare@hotmail.edu',
        107,
        974
    ),
    (
        'Adrienne Hart',
        '8096-7283',
        'dictum.sapien@outlook.net',
        433,
        222
    ),
    (
        'Yardley Michael',
        '3552-4913',
        'lobortis.tellus@icloud.couk',
        664,
        707
    ),
    (
        'Kaitlin Murphy',
        '1082-6330',
        'faucibus@google.org',
        186,
        424
    ),
    (
        'Alisa Kelly',
        '6522-4628',
        'commodo.auctor@aol.ca',
        101,
        788
    ),
    (
        'Ross Steele',
        '3841-4222',
        'erat@yahoo.net',
        609,
        23
    ),
    (
        'Fiona Flowers',
        '7948-0301',
        'ut.nisi@aol.org',
        824,
        466
    ),
    (
        'Lois Valencia',
        '8755-0744',
        'vitae.aliquet@aol.net',
        227,
        506
    ),
    (
        'Patience Perkins',
        '5142-9615',
        'eu@aol.com',
        899,
        953
    ),
    (
        'Hiram Garrett',
        '2710-3487',
        'quis.diam.pellentesque@outlook.ca',
        158,
        632
    ),
    (
        'Kane Morrison',
        '7555-4745',
        'posuere@protonmail.com',
        974,
        756
    ),
    (
        'Susan Potter',
        '6245-5840',
        'lorem.tristique@protonmail.couk',
        587,
        561
    ),
    (
        'Clinton Kirkland',
        '6122-1897',
        'in.ornare.sagittis@icloud.ca',
        174,
        729
    ),
    (
        'Keith Martinez',
        '7763-5655',
        'sapien@hotmail.ca',
        499,
        224
    ),
    (
        'Daquan Ramos',
        '9546-1441',
        'quam.a@google.ca',
        415,
        608
    ),
    (
        'Kathleen Mcconnell',
        '3245-6287',
        'adipiscing.fringilla@google.net',
        556,
        242
    ),
    (
        'Paloma Norris',
        '4466-1115',
        'risus@icloud.edu',
        994,
        28
    ),
    (
        'Jasper Booth',
        '3422-8366',
        'erat.eget.ipsum@protonmail.com',
        949,
        555
    ),
    (
        'Yasir Rowe',
        '4317-1344',
        'hendrerit@icloud.edu',
        593,
        220
    ),
    (
        'Macey Walton',
        '7244-0882',
        'sed.nunc.est@hotmail.com',
        53,
        933
    ),
    (
        'Neville Adkins',
        '1287-6563',
        'aliquet.odio@hotmail.org',
        806,
        575
    ),
    (
        'James Mccarty',
        '3828-8183',
        'et.rutrum@outlook.edu',
        542,
        748
    ),
    (
        'Cecilia Bernard',
        '6870-2733',
        'ut.pharetra@aol.ca',
        14,
        89
    ),
    (
        'Nolan Salazar',
        '3648-6941',
        'aliquam.ornare.libero@outlook.edu',
        535,
        825
    ),
    (
        'Nyssa Griffin',
        '2523-3703',
        'velit.pellentesque.ultricies@icloud.ca',
        270,
        497
    ),
    (
        'Herrod Pace',
        '6845-4435',
        'ultrices.iaculis@icloud.edu',
        873,
        384
    ),
    (
        'Hoyt Bass',
        '7616-7656',
        'eget.massa@protonmail.couk',
        474,
        452
    ),
    (
        'Shaeleigh Kane',
        '4100-1483',
        'vitae.dolor@outlook.org',
        969,
        874
    ),
    (
        'Ulla Mann',
        '1787-7747',
        'suspendisse.non@google.com',
        455,
        448
    ),
    (
        'Shana Waters',
        '9511-8744',
        'tincidunt.adipiscing@aol.couk',
        317,
        114
    ),
    (
        'Elton Salazar',
        '6702-5176',
        'bibendum.ullamcorper@google.org',
        313,
        281
    ),
    (
        'Brielle Chaney',
        '8867-4418',
        'facilisis.lorem@protonmail.net',
        242,
        439
    ),
    (
        'Lunea Ray',
        '3301-0376',
        'dictum@outlook.couk',
        528,
        905
    ),
    (
        'Orla Preston',
        '8295-2671',
        'risus.quisque@google.net',
        760,
        881
    ),
    (
        'Drake Garrett',
        '8199-1916',
        'leo.elementum@protonmail.edu',
        430,
        77
    ),
    (
        'Audrey Hickman',
        '4562-3014',
        'nunc.quisque.ornare@icloud.org',
        999,
        120
    ),
    (
        'Christen Rodriquez',
        '6513-3579',
        'mauris.sapien@outlook.edu',
        981,
        496
    ),
    (
        'Kai Mcleod',
        '4778-7643',
        'pharetra.felis@aol.ca',
        909,
        858
    ),
    (
        'Upton Dotson',
        '9217-2029',
        'vestibulum.ut@outlook.couk',
        665,
        720
    ),
    (
        'Larissa Britt',
        '8704-5475',
        'eu.metus@icloud.com',
        566,
        634
    ),
    (
        'Solomon Campos',
        '7177-9582',
        'vel@icloud.com',
        769,
        862
    ),
    (
        'Price Howard',
        '3754-1054',
        'tincidunt.neque@protonmail.couk',
        852,
        152
    ),
    (
        'Tasha Burton',
        '4831-7125',
        'sed.nulla.ante@icloud.com',
        784,
        86
    ),
    (
        'Hop Kelly',
        '4711-5382',
        'quam.quis@outlook.com',
        381,
        600
    ),
    (
        'May Brennan',
        '5846-2835',
        'iaculis.odio@protonmail.edu',
        331,
        439
    ),
    (
        'Ora Prince',
        '2616-2177',
        'nulla.magna.malesuada@yahoo.couk',
        777,
        725
    ),
    (
        'Davis Velasquez',
        '1740-6813',
        'sodales@icloud.org',
        84,
        408
    ),
    (
        'Juliet Chapman',
        '8899-3454',
        'nullam@google.edu',
        233,
        94
    ),
    (
        'Adam Nguyen',
        '4854-3154',
        'ultrices.posuere@hotmail.edu',
        644,
        329
    ),
    (
        'Wallace Rollins',
        '7815-1163',
        'ultricies.sem@protonmail.ca',
        181,
        277
    );