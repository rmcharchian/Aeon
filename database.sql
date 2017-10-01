CREATE TABLE questions
(
    id SERIAL PRIMARY KEY,
    question_number INT,
    english VARCHAR(255) NOT NULL,
    somali VARCHAR(255) NOT NULL,
    spanish VARCHAR(255) NOT NULL,
    hmong VARCHAR(255) NOT NULL,
    theme VARCHAR(80),
    year INT
);
CREATE TABLE users
(
    id SERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(80),
    token VARCHAR(16),
    active BOOLEAN DEFAULT FALSE,
    timestamp VARCHAR(64)
);
CREATE TABLE occupancy
(
    id SERIAL PRIMARY KEY,
    property VARCHAR(255) NOT NULL,
    unit INT,
    responded VARCHAR(80),
    paid VARCHAR(80),
    occupied VARCHAR(80),
    year INT NOT NULL
);
CREATE TABLE responses2017
(
    id SERIAL PRIMARY KEY,
    survey INT NOT NULL,
    property VARCHAR(255) NOT NULL,
    answer1 TEXT NOT NULL,
    answer2 TEXT NOT NULL,
    answer3 TEXT NOT NULL,
    answer4 TEXT NOT NULL,
    answer5 TEXT NOT NULL,
    answer6 TEXT NOT NULL,
    answer7 TEXT NOT NULL,
    answer8 TEXT NOT NULL,
    answer9 TEXT NOT NULL,
    answer10 TEXT NOT NULL,
    answer11 TEXT NOT NULL,
    answer12 TEXT NOT NULL,
    answer13 TEXT NOT NULL,
    answer14 TEXT NOT NULL,
    answer15 TEXT NOT NULL,
    answer16 TEXT NOT NULL,
    answer17 TEXT NOT NULL,
    answer18 TEXT NOT NULL,
    answer19 TEXT NOT NULL,
    answer20 TEXT NOT NULL,
    answer21 TEXT NOT NULL,
    answer22 TEXT NOT NULL,
    answer23 TEXT NOT NULL,
    answer24 TEXT NOT NULL,
    answer25 TEXT NOT NULL,
    answer26 TEXT NOT NULL,
    answer27 TEXT NOT NULL
);
CREATE TABLE occupancy_users
(
    occupancy_id INT REFERENCES occupancy,
    user_id INT REFERENCES users,
    PRIMARY KEY(occupancy_id, user_id)
);
INSERT INTO questions
    (question_number,
    english,
    somali,
    spanish,
    hmong,
    theme,
    year)
VALUES
    (1,
        'I feel safe in my apartment unit.',
        'Waxaan ku dareemaa ammaan abaarmankayga gudahiisa.',
        'Yo siento seguro en mi apartamento.',
        'Nyob hauv kuv chav tsev no, kuv tau luag (tsis ntshai dab tsi).',
        'Safety',
        2017),
    (2,
        'I feel safe in the public areas inside my building (outside my apartment unit).',
        'Waxaan ku dareemaa ammaan goobaha dadwaynaha ee ku dhex yaal dhismahayga (ee ka baxsan abaarmankayga).',
        'Yo siento seguro es los lugares públicos adentro mi edifico (y fuera mis cuartos de apartamento).',
        'Nyob sab hauv lub tsev loj loj no, kuv tau luag (tawm ntawm kuv lub qhov rooj sab nrauv).',
        'Safety',
        2017),
    (3,
        'I feel safe in outdoor areas near my building.',
        'Waxaan ku dareemaa ammaan goobaha bannaanka ee u dhow dhismahayga.',
        'Yo siento seguro en los lugares para afuera que son cerca de mi edificio.',
        'Nyob ib ncig sab nraum zoov kuv tau luag.',
        'Safety',
        2017),
    (4,
        'I feel safe in the neighborhood in which I live.',
        'Waxaan ku dareemaa ammaan xaafadda aan ku noolahay.',
        'Yo siento seguro en el barrio en donde vivo.',
        'Ib ncig ze ntawm peb lub tsev no, kuv tau luag.',
        'Safety',
        2017),
    (5,
        'I help take care of my building.',
        'Waxaan gacan ka geystaa daryeelka dhismahayga.',
        'Yo ayudo cuidar de mi edificio.',
        'Kuv yeej pab tu peb lub tsev no thiab.',
        'Engagement',
        2017),
    (6,
        'I report problems in my apartment ',
        'Waxaan uga warbixiyaa dhibaatooyinka ka jira abaarmankayga maamulaha goobta.',
        'Yo informo problemas en mis cuartos al manager de mi sitio.',
        'Yog kuv chav tsev muaj teeb meem dab tsi, kuv yuav qhia rau tus saib xyuas lub tsev no.',
        'Engagement',
        2017),
    (7,
        'I report problems in my building to my site manager or the police.',
        'Waxaan uga warbixiyaa dhibaatooyinka ka jira dhismahayga maamulaha goobta ama booliska.',
        'Yo informo problemas en mi edificio al manager del sitio o la policía.',
        'Yog muaj teeb meem rau peb lub tsev no, kuv yuav qhia rau tus saib xyuas los yog tub ceev xwm.',
        'Engagement',
        2017),
    (8,
        'I avoid talking to other people in my building.',
        'Waxaan iska ilaaliyaa inaan la hadalo dadka kale ee dhismahayga.',
        'Yo evito hablar con otras personas en mi edificio.',
        'Kuv zam kom dhau thiab tsis nrog lwm tus neeg xauj tsev hauv no sib tham.',
        'Engagement',
        2017),
    (9,
        'I help my neighbors in my building.',
        'Waan caawiyaa deriskayga ku nool dhismahayga.',
        'Yo ayudo mis vecinos en mi edifico.',
        'Kuv pab lwm tus neeg uas xauj tsev nyob hauv lub tsev loj loj no. git stat',
        'Engagement',
        2017),
    (10,
        'I participate in events in my building.',
        'Waxaan ka qayb qaataa dhacdooyinka ka jira dhismahayga.',
        'Yo participo en los eventos en mi edificio.',
        'Yog hauv lub tsev loj loj no muaj sib tham tej ntawd, kuv kam koom thiab.',
        'Engagement',
        2017),
    (11,
        'I participate in events in my neighborhood.',
        'Waxaan ka qayb qaataa dhacdooyinka ka jira xaafaddayda.',
        'Yo participo en los eventos en mi vecindad.',
        'Yog cov neeg nyob ib ncig no muaj sib tham ntej ntawd, kuv kam koom thiab.',
        'Engagement',
        2017),
    (12,
        'I help my building or community.',
        'Waan caawiyaa dhismahayga ama beeshayda.',
        'Yo ayudo mi comunidad.',
        'Kuv pab cov neeg hauv peb lub tsev no, thiab pab cov neeg hauv zej zog no tib si.',
        'Engagement',
        2017),
    (13,
        'I talk to five or more of my neighbors every week.',
        'Waxaan la hadlaa shan ama in ka badan dadka dariskayga ah toddobaad kasta.',
        'Yo hablo con cinco o más de mis vecinos cada semana.',
        'Ib lub as thiv twg, kuv nrog yam tsawg kawg tsib (5) tug neeg uas nyob hauv lub tsev no sib tham.',
        'Engagement',
        2017),
    (14,
        'I have decorated or personalized my apartment unit.',
        'Waan qurxistay oo aan si gaar u sharraxday abaarmankayga.',
        'Yo he personalizado o decorado mi apartamento.',
        'Kuv muab kuv chav tsev no lo ub lo no los yog tu kom zoo nkauj raws li kuv nyiam.',
        'Ownership',
        2017),
    (15,
        'I feel proud of my apartment unit.',
        'Waxaan ku dareemaa sharaf abaarmankayga.',
        'Yo siento orgulloso de mi apartamento.',
        'Kuv zoo siab hlo rau kuv chav tsev.',
        'Ownership',
        2017),
    (16,
        'The overall condition of my apartment unit is excellent.',
        'Xaaladda guud ee abaarmankaygu waa heer sare.',
        'La condición general de mi apartamento esta excelente.',
        'Kuv chav tsev no huv si thiab zoo heev.',
        'Staff Performance',
        2017),
    (17,
        'Overall professionalism of staff and quality of customer service is excellent.',
        'Dhaqanka guud ee xirfadyaqaanimada shaqaalaha iyo tayada adeegga macaamiisha ayaa heer sare ah.',
        'El profesionalismo general del personal y calidad del servicio a la atención de cliente esta excelente.',
        'Cov neeg ua hauj lwm saib xyuas peb lub tsev no yog neeg txawj ntse thiab coj zoo heev.',
        'Staff Performance',
        2017),
    (18,
        'The overall condition of my apartment building is excellent.',
        'Xaaladda guud ee dhismaha abaarmankayga ayaa heer sare ah.',
        'La condición general de mi edifico esta excelente.',
        'Peb lub tsev loj loj no tshiab, huv, thiab zoo heev.',
        'Staff Performance',
        2017),
    (19,
        'My apartment unit feels like home.',
        'Abaarmankayga ayaa ka dareemaa meel hoy ii ah.',
        'is cuartos de apartamento sientan como un hogar.',
        'Chav tsev uas kuv xauj no, kuv yeej nyiam thiab saib tam nkaus li yog kuv lub tsev tiag tiag ntag.',
        'Theme Not Known',
        2017),
    (20,
        'I would recommend this apartment building to others.',
        'Anigu waxaan kula talin dadka kale dhismahan. abaarman inay soo degaan.',
        'Yo recomendaría este edificio de cuartos a otras personas.',
        'Kuv yeej xav qhia lwm tus neeg hais tias lub tsev no zoo thiab kom lawv los xauj nyob.',
        'Ownership',
        2017),
    (21,
        'What makes your apartment feel like home?',
        'Maxaa ka dhiga in hoy laga dareemo abaarmankaaga?',
        '¿Qué hace sentir tu apartamento como un hogar?',
        'Yam twg uas yog yam ua rau koj nyiam lub tsev no thiab saib zoo tam li yog koj lub tsev tiag tiag?',
        'Theme Not Known',
        2017),
    (22,
        'What could be done to make your apartment more like home?',
        'Maxaa ah in lagu kaco si looga dhigo abaarmaankaaga hoy kuu habboon?',
        '¿Qué puede hacer para poner tu apartamento más como un hogar?',
        'Tshuav dab tsi thiab uas koj xav kom peb ua es koj thiaj saib lub tsev no li yog koj lub tiag tiag?',
        'Theme Not Known',
        2017),
    (23,
        'How long have you been a resident at this apartment building?',
        'Muddo intee le''eg ayaad deggenayd dhismahan abaarman?',
        '¿Por cuanto tiempo ha sido Usted un residente de este edificio?',
        'Koj twb los xauj lub tsev no nyob tau ntev li cas los lawm?',
        'Demographics',
        2017),
    (24,
        'Please select the category that best describes your ethnicity:',
        'Xulo qaybta sida ugu fiican u qeexeysa qoymiyaddaada:',
        'Por favor elige la categoría que describe tu etnicidad mejor:',
        'Qhia seb koj yog haiv neeg dab tsi:',
        'Demographics',
        2017),
    (25,
        'Gender',
        'Jinsi:',
        'Género:',
        'Koj Yog Poj Niam Los Txiv Neej',
        'Demographics',
        2017),
    (26,
        'Age',
        'Da''da:',
        'Edad:',
        'Hnub nyoog',
        'Demographics',
        2017),
    (27,
        'Your household income is:',
        'Dakhliga reerkaagu waa:',
        'Su ingreso del hogar es:',
        'Nej tsev neeg khwv tau nyiaj:',
        'Demographics',
        2017);


INSERT INTO responses2017 (survey, property, answer1, answer2, answer3, answer4, answer5, answer6, answer7, answer8, answer9, answer10, answer11, answer12, answer13, answer14, answer15, answer16, answer17, answer18, answer19, answer20, answer21, answer22, answer23, answer24, answer25, answer26, answer27) VALUES
( '1934', 'chicago', 'a1', 'a2', 'a3', 'a4', 'a5', 'a6', 'a7', 'a8', 'a9', 'a10', 'a11', 'a12', 'a13', 'a14', 'a15', 'a16', 'a17', 'a18', 'a19', 'a20', 'a21', 'a22', 'a23', 'a24', 'a25', 'a26', 'a27' ),
( '0052', 'columbus', 'b1', 'b2', 'b3', 'b4', 'b5', 'b6', 'b7', 'b8', 'b9', 'b10', 'b11', 'b12', 'b13', 'b14', 'b15', 'b16', 'b17', 'b18', 'b19', 'b20', 'b21', 'b22', 'b23', 'b24', 'b25', 'b26', 'b27' ),
( '2001', 'chicago', 'c1', 'c2', 'c3', 'c4', 'c5', 'c6', 'c7', 'c8', 'c9', 'c10', 'c11', 'c12', 'c13', 'c14', 'c15', 'c16', 'c17', 'c18', 'c19', 'c20', 'c21', 'c22', 'c23', 'c24', 'c25', 'c26', 'c27' ),
( '3', 'oakland', 'd1', 'd2', 'd3', 'd4', 'd5', 'd6', 'd7', 'd8', 'd9', 'd10', 'd11', 'd12', 'd13', 'd14', 'd15', 'd16', 'd17', 'd18', 'd19', 'd20', 'd21', 'd22', 'd23', 'd24', 'd25', 'd26', 'd27' ),
( '2134', 'columbus', 'e1', 'e2', 'e3', 'e4', 'e5', 'e6', 'e7', 'e8', 'e9', 'e10', 'e11', 'e12', 'e13', 'e14', 'e15', 'e16', 'e17', 'e18', 'e19', 'e20', 'e21', 'e22', 'e23', 'e24', 'e25', 'e26', 'e27' ),
( '44', 'chicago', 'f1', 'f2', 'f3', 'f4', 'f5', 'f6', 'f7', 'f8', 'f9', 'f10', 'f11', 'f12', 'f13', 'f14', 'f15', 'f16', 'f17', 'f18', 'f19', 'f20', 'f21', 'f22', 'f23', 'f24', 'f25', 'f26', 'f27' );