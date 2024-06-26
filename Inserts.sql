-- Los 3 dietistas como usuarios y 10 usuarios como clientes
INSERT INTO Usuario (Usuario, Contrasena, Nombre, Apellidos, DNI, Edad, Sexo) VALUES
    ('Luis1', 'contraseña1', 'Luis', 'García Torres', '11111111A', 30, 'Masculino'), -- dietista
    ('Lucia2', 'contraseña2', 'Lucía', 'Villa Pérez', '22222222B', 35, 'Femenino'), -- dietista
    ('Manuel3', 'contraseña3', 'Manuel', 'Akanji Valbuena', '33333333C', 40, 'Masculino'), -- dietista
    ('Maria4', 'contraseña4', 'María', 'Gómez Rodríguez', '44444444D', 25, 'Femenino'), -- Entrenador Bodybuilding
    ('Javier5', 'contraseña5', 'Javier', 'Martínez Sánchez', '55555555E', 45, 'Masculino'), -- Entrenador Bodybuilding
    ('pepe', 'pepe', 'Pepe', 'Artacho', '66666666F', 22, 'Masculino'), -- Entrenador Crosstraining
    ('Pablo7', 'contraseña7', 'Pablo', 'Ruiz Gutiérrez', '77777777G', 28, 'Masculino'), -- Entrenador Crosstraining
    ('Ana8', 'contraseña8', 'Ana', 'Sánchez López', '88888888H', 50, 'Femenino'), -- Cliente
    ('David9', 'contraseña9', 'David', 'Torres Martín', '99999999I', 33, 'Masculino'), -- Cliente
    ('Marta10', 'contraseña10', 'Marta', 'Fernández Pérez', '101010101J', 29, 'Femenino'), -- Cliente
    ('Carlos11', 'contraseña11', 'Carlos', 'García Fernández', '111111111K', 42, 'Masculino'), -- Cliente
    ('Laura12', 'contraseña12', 'Laura', 'González Martínez', '121212121L', 37, 'Femenino'), -- Cliente
    ('Sergio13', 'contraseña13', 'Sergio', 'Díaz Sánchez', '131313131M', 31, 'Masculino'), -- Cliente
    ('Bruce', 'adminpassword', 'Bruce', 'Wayne Kane', '666696969B', 31, 'Masculino'); -- admin

INSERT INTO Administrador (Usuario_id) VALUES
    (14);

INSERT INTO Rol_Trabajador (Rol) VALUES
    ('Dietista'),
    ('Entrenador Bodybuilding'),
    ('Entrenador Cross-training');

INSERT INTO Tipo_Ejercicio (Tipo) VALUES
    ('Fuerza'),
    ('Resistencia'),
    ('Capacidad aeróbica'),
    ('Velocidad'),
    ('Potencia'),
    ('Estabilidad'),
    ('Movilidad');

-- A cada dietista se le asigna su id de trabajador con Rol_Id en lugar de Rol
INSERT INTO Trabajador (Usuario_id, Rol_Id) VALUES
    (1, 1),  -- Dietista
    (2, 1),  -- Dietista
    (3, 1),  -- Dietista
    (4, 2),  -- Entrenador Bodybuilding
    (5, 2),  -- Entrenador Bodybuilding
    (6, 3),  -- Entrenador Cross-training
    (7, 3);  -- Entrenador Cross-training

-- Inserción de rutinas sin clientes asociados
INSERT INTO Rutina_Semanal (Nombre, Fecha_Inicio, Fecha_Fin, Trabajador_Id) VALUES
    ('Rutina 1', '2024-05-03', '2024-05-10', 4), -- B
    ('Rutina 2', '2024-05-11', '2024-05-18', 4), -- B
    ('Rutina 3', '2024-05-19', '2024-05-26', 5), -- B
    ('Rutina 4', '2024-05-27', '2024-06-03', 6), -- C
    ('Rutina 5', '2024-06-04', '2024-06-11', 6), -- C
    ('Rutina 6', '2024-06-12', '2024-06-19', 7); -- C

-- Dietas con nombres
INSERT INTO Dieta (Nombre, Num_Comidas, Tipo, Fecha_Inicio, Fecha_Fin, Trabajador_Id) VALUES
    ('Dieta Vegetariana', 4, 'Vegetariana', '2024-04-01', '2024-04-08', 1),
    ('Dieta Sushi', 3, 'Sushi', '2024-04-09', '2024-04-16', 2),
    ('Dieta Para Celiacos', 5, 'Para celiacos', '2024-04-17', '2024-04-24', 3),
    ('Dieta Paleo', 3, 'Paleo', '2024-04-25', '2024-05-02', 3),
    ('Dieta Mediterránea', 4, 'Mediterránea', '2024-05-03', '2024-05-10', 1),
    ('Dieta Vegana', 3, 'Vegana', '2024-05-11', '2024-05-18', 2),
    ('Dieta Sin Gluten', 4, 'Sin gluten', '2024-05-19', '2024-05-26', 2),
    ('Dieta Keto', 5, 'Keto', '2024-05-27', '2024-06-03', 1),
    ('Dieta Baja en Carbohidratos', 3, 'Baja en carbohidratos', '2024-06-04', '2024-06-11', 1),
    ('Dieta Alta en Proteínas', 4, 'Alta en proteínas', '2024-06-12', '2024-06-19', 1),
    ('Dieta Ayuno Intermitente', 5, 'Ayuno intermitente', '2024-06-20', '2024-06-27', 3),
    ('Dieta Flexitariana', 3, 'Flexitariana', '2024-06-28', '2024-07-05', 3),
    ('Dieta Orgánica', 4, 'Orgánica', '2024-07-06', '2024-07-13', 2),
    ('Dieta DASH', 3, 'DASH', '2024-07-14', '2024-07-21', 2),
    ('Dieta Sin Lácteos', 4, 'Sin lácteos', '2024-07-22', '2024-07-29', 2),
    ('Dieta Baja en Sodio', 5, 'Baja en sodio', '2024-07-30', '2024-08-06', 3),
    ('Dieta Alcalina', 4, 'Alcalina', '2024-08-07', '2024-08-14', 1),
    ('Dieta Cetogénica', 3, 'Cetogénica', '2024-08-15', '2024-08-22', 3),
    ('Dieta Hiperproteica', 4, 'Hiperproteica', '2024-08-23', '2024-08-30', 1),
    ('Dieta Flexitariana 2', 3, 'Flexitariana', '2024-08-31', '2024-09-07', 2);

-- Inserción de clientes con relaciones a dietistas y entrenadores
INSERT INTO Cliente (Usuario_id, Peso, Altura, Edad, Rutina_Id, Dieta_Codigo, Dietista_Id, Entrenador_Id) VALUES
    (8, 70.5, 175, 25, 1, 1, 1, 4),
    (9, 80.0, 180, 33, 2, 2, 2, 5),
    (10, 70.2, 170, 29, 3, 3, 3, 6),
    (11, 60.5, 165, 42, 4, 4, 1, 7),
    (12, 78.4, 177, 37, NULL, 5, 2, 4),
    (13, 72.0, 172, 31, NULL, 6, 3, 5);

-- Comidas (20 desayunos, 20 comidas y 20 cenas)
INSERT INTO Comida (Nombre, Kilocalorias_Totales, Orden) VALUES
    ('Tostadas con mermelada', 300, 1),
    ('Cereal con leche', 250, 1),
    ('Yogur natural con frutas', 200, 1),
    ('Batido de frutas', 150, 1),
    ('Huevos revueltos con espinacas', 350, 1),
    ('Avena con plátano', 300, 1),
    ('Smoothie de espinacas y piña', 200, 1),
    ('Tortitas de avena', 400, 1),
    ('Fruta fresca', 100, 1),
    ('Café con leche', 50, 1),
    ('Ensalada César', 400, 2),
    ('Pollo a la parrilla con vegetales', 500, 2),
    ('Pasta integral con salsa de tomate', 450, 2),
    ('Sándwich de pavo y queso', 350, 2),
    ('Arroz integral con salmón al horno', 550, 2),
    ('Tortilla de verduras', 400, 2),
    ('Pechuga de pollo a la plancha', 450, 2),
    ('Sopa de verduras', 300, 2),
    ('Hamburguesa de lentejas', 400, 2),
    ('Quinoa con verduras salteadas', 450, 2),
    ('Ensalada de aguacate y salmón', 350, 3),
    ('Sopa de lentejas', 300, 3),
    ('Wrap de atún y aguacate', 400, 3),
    ('Pasta integral con pesto de espinacas', 450, 3),
    ('Ensalada de quinoa y vegetales', 350, 3),
    ('Crema de calabacín', 250, 3),
    ('Pescado al horno con espárragos', 400, 3),
    ('Revuelto de champiñones', 300, 3),
    ('Tortilla francesa con verduras', 250, 3),
    ('Sopa de miso', 200, 3),
    ('Smoothie bowl de frutas', 300, 1),
    ('Tostadas con aguacate', 350, 1),
    ('Huevos revueltos con champiñones', 300, 1),
    ('Panqueques de plátano', 400, 1),
    ('Yogur griego con granola', 250, 1),
    ('Batido de bayas', 200, 1),
    ('Avena con frutos secos', 350, 1),
    ('Tostadas francesas', 400, 1),
    ('Té verde', 50, 1),
    ('Fruta cortada', 100, 1),
    ('Wrap de pollo y vegetales', 450, 2),
    ('Arroz frito con verduras', 500, 2),
    ('Ensalada de pasta con atún', 400, 2),
    ('Bowl de quinoa con garbanzos', 450, 2),
    ('Filete de ternera a la parrilla', 550, 2),
    ('Hamburguesa de pavo', 400, 2),
    ('Sopa de pollo y verduras', 350, 2),
    ('Pescado al vapor con brócoli', 400, 2),
    ('Tacos de pescado', 450, 2),
    ('Espaguetis con albóndigas', 500, 2),
    ('Ensalada de espinacas y fresas', 350, 3),
    ('Sopa tailandesa de coco y pollo', 300, 3),
    ('Wrap de hummus y vegetales', 400, 3),
    ('Pasta integral con calabacín y pesto', 450, 3),
    ('Ensalada de lentejas y tomate', 350, 3),
    ('Sopa de calabaza', 250, 3),
    ('Salmón al papillote', 400, 3),
    ('Revuelto de tofu y espinacas', 300, 3),
    ('Ensalada de tomate y mozzarella', 250, 3),
    ('Sopa de verduras con fideos', 200, 3);

-- Menus (Comida_Id 1 si es primer plato y 2 si es segundo)
INSERT INTO Menu (Comida_Id, Ingredientes, Preparacion) VALUES 
    (1, '2 rebanadas de pan, 20g de mermelada', 'Tostar las rebanadas de pan y untar con la mermelada.'),
    (2, '50g de cereal, 150ml de leche', 'Verter el cereal en un bol y añadir la leche.'),
    (3, '150g de yogur natural, 100g de frutas variadas (fresas, plátano, arándanos)', 'Servir el yogur en un recipiente y añadir las frutas cortadas.'),
    (4, '200g de frutas variadas (piña, mango, kiwi)', 'Licuar las frutas hasta obtener una mezcla homogénea.'),
    (5, '2 huevos, 50g de espinacas frescas', 'Batir los huevos y mezclar con las espinacas troceadas. Cocinar a fuego medio hasta que cuaje.'),
    (6, '50g de avena, 1 plátano', 'Cocinar la avena con agua y añadir el plátano cortado.'),
    (7, '100g de espinacas frescas, 1 rodaja de piña, 100ml de agua', 'Licuar las espinacas con la piña y el agua hasta obtener una mezcla homogénea.'),
    (8, '50g de avena, 1 huevo, 1 plátano', 'Mezclar la avena con el huevo y el plátano machacado. Cocinar las tortitas en una sartén.'),
    (9, 'Frutas variadas (fresas, uvas, manzana)', 'Seleccionar y cortar las frutas frescas.'),
    (10, '50ml de café, 150ml de leche', 'Preparar el café y añadir la leche caliente.'),
    (11, '150g de lechuga, 100g de pechuga de pollo cocida, 30g de crutones, aderezo al gusto', 'Mezclar todos los ingredientes en un bol y añadir el aderezo.'),
    (12, '150g de pechuga de pollo, 200g de vegetales variados (pimiento, cebolla, calabacín)', 'Cocinar el pollo a la parrilla junto con los vegetales troceados.'),
    (13, '100g de pasta integral, 150ml de salsa de tomate', 'Cocinar la pasta y añadir la salsa de tomate.'),
    (14, '50g de pavo, 30g de queso, 2 rebanadas de pan integral', 'Armar el sándwich con el pavo y el queso entre las rebanadas de pan.'),
    (15, '100g de arroz integral, 150g de salmón fresco', 'Cocinar el arroz y servir con el salmón al horno.'),
    (16, '2 huevos, 100g de verduras variadas (tomate, cebolla, espinacas)', 'Batir los huevos y mezclar con las verduras cortadas. Cocinar a fuego medio.'),
    (17, '150g de pechuga de pollo', 'Cocinar la pechuga de pollo a la plancha.'),
    (18, '200g de verduras (zanahoria, pimiento, cebolla), 500ml de caldo de verduras', 'Cocinar las verduras en caldo hasta que estén tiernas.'),
    (19, '200g de lentejas cocidas, 100g de vegetales variados (zanahoria, cebolla, apio)', 'Mezclar las lentejas cocidas con los vegetales troceados.'),
    (20, '150g de quinoa cocida, 150g de vegetales salteados (pimiento, cebolla, champiñones)', 'Saltear la quinoa con los vegetales y servir caliente.'),
    (21, '1 aguacate maduro, 100g de salmón ahumado', 'Cortar el aguacate en rodajas y servir con el salmón.'),
    (22, '200g de lentejas cocidas, 500ml de caldo de verduras', 'Cocinar las lentejas en caldo hasta que estén tiernas.'),
    (23, '100g de atún en lata, 1 aguacate, 1 wrap de trigo', 'Armar el wrap con el atún y el aguacate.'),
    (24, '100g de pasta integral, 100g de calabacín, 50g de pesto de espinacas', 'Cocinar la pasta y mezclar con el calabacín salteado y el pesto.'),
    (25, '150g de quinoa cocida, 100g de garbanzos cocidos', 'Cocinar la quinoa y mezclar con los garbanzos.'),
    (26, '200g de calabacín, 500ml de caldo de verduras', 'Cocinar el calabacín en caldo hasta que esté tierno.'),
    (27, '150g de filete de pescado blanco, 100g de espárragos', 'Cocinar el pescado al horno junto con los espárragos.'),
    (28, '200g de champiñones, 2 huevos', 'Cocinar los champiñones y mezclar con huevo batido. Cocinar a fuego medio.'),
    (29, '2 huevos, 100g de verduras variadas (pimiento, cebolla, espinacas)', 'Batir los huevos y mezclar con las verduras troceadas. Cocinar a fuego medio.'),
    (30, '150g de tofu firme, 100g de espinacas', 'Cocinar el tofu y mezclar con espinacas troceadas.'),
    (31, '2 tomates maduros, 150g de mozzarella fresca', 'Cortar los tomates y la mozzarella en rodajas y servir juntos.'),
    (32, '200g de verduras variadas (zanahoria, calabacín, pimiento), 100g de fideos de arroz', 'Cocinar las verduras y los fideos en caldo hasta que estén tiernos.'),
    (33, 'Frutas variadas (fresas, uvas, kiwi)', 'Seleccionar y cortar las frutas frescas.'),
    (34, '2 rebanadas de pan, 1 aguacate maduro', 'Tostar el pan y untar con aguacate.'),
    (35, '2 huevos, 100g de champiñones', 'Batir los huevos y mezclar con champiñones troceados. Cocinar a fuego medio hasta que cuaje.'),
    (36, '1 plátano maduro, 50g de harina de trigo, 50ml de leche', 'Mezclar el plátano machacado con harina y leche. Cocinar las tortitas en una sartén.'),
    (37, '150g de yogur griego, 50g de granola', 'Servir el yogur griego en un recipiente y añadir la granola.'),
    (38, '100g de bayas variadas (arándanos, frambuesas, moras)', 'Licuar las bayas hasta obtener una mezcla homogénea.'),
    (39, '50g de avena, 30g de frutos secos variados (almendras, nueces, pasas)', 'Cocinar la avena con agua y añadir los frutos secos.'),
    (40, '2 rebanadas de pan, 1 huevo, 50ml de leche', 'Remojar el pan en una mezcla de huevo y leche. Cocinar las tostadas en una sartén caliente.'),
    (41, 'Frutas variadas (piña, sandía, melón)', 'Seleccionar y cortar las frutas frescas.'),
    (42, '150g de pechuga de pollo, 200g de vegetales variados (pimiento, cebolla, zanahoria)', 'Cocinar el pollo a la parrilla junto con los vegetales troceados.'),
    (43, '100g de arroz integral, 200g de verduras salteadas (brócoli, zanahoria, cebolla)', 'Cocinar el arroz y mezclar con las verduras salteadas.'),
    (44, '100g de pasta, 100g de atún en lata', 'Cocinar la pasta y mezclar con el atún.'),
    (45, '150g de quinoa cocida, 100g de garbanzos cocidos', 'Cocinar la quinoa y mezclar con los garbanzos.'),
    (46, '150g de filete de ternera, 200g de vegetales salteados (pimiento, cebolla, champiñones)', 'Cocinar la ternera a la parrilla y servir con los vegetales salteados.'),
    (47, '50g de pavo, 2 rebanadas de pan integral', 'Armar el sándwich con el pavo entre dos rebanadas de pan integral.'),
    (48, '150g de pechuga de pollo, 200g de verduras variadas (zanahoria, calabacín, brócoli), 500ml de caldo de pollo', 'Cocinar el pollo junto con las verduras en caldo hasta que esté tierno.'),
    (49, '150g de filete de pescado blanco, 150g de brócoli al vapor', 'Cocinar el pescado al vapor junto con el brócoli.'),
    (50, '150g de pescado blanco, 100g de verduras variadas (cebolla, pimiento, tomate), 2 tortillas de maíz', 'Cocinar el pescado y servir dentro de las tortillas con las verduras.'),
    (51, '100g de espaguetis, 100g de albóndigas caseras, 100ml de salsa de tomate', 'Cocinar la pasta y servir con las albóndigas y salsa de tomate.'),
    (52, '100g de espinacas frescas, 50g de fresas, aderezo balsámico al gusto', 'Mezclar las espinacas con las fresas y servir con aderezo balsámico.'),
    (53, '200ml de leche de coco, 100g de pechuga de pollo, 50g de champiñones, cilantro al gusto', 'Cocinar la sopa tailandesa con trozos de pollo y champiñones. Decorar con cilantro.'),
    (54, '1 tortilla de trigo, 50g de hummus, 100g de vegetales variados (pepino, tomate, zanahoria)', 'Armar el wrap con hummus y vegetales dentro.'),
    (55, '100g de pasta integral, 100g de calabacín, 50g de pesto de espinacas', 'Cocinar la pasta y mezclar con calabacín salteado y pesto de espinacas.'),
    (56, '200g de lentejas cocidas, 2 tomates maduros, 50g de cebolla roja, 30ml de vinagreta balsámica', 'Mezclar las lentejas cocidas con tomate y cebolla cortados en cubitos y aderezar con vinagreta balsámica.'),
    (57, '500g de calabaza, 500ml de caldo de verduras, 100ml de crema de leche', 'Cocinar la calabaza en caldo hasta que esté tierna y luego licuar con la crema de leche.'),
    (58, '150g de filete de salmón, 1 rodaja de limón, 50g de espárragos, sal y pimienta al gusto', 'Envolver el salmón con la rodaja de limón en papel de aluminio y cocinar al horno junto con los espárragos.'),
    (59, '150g de tofu firme, 100g de espinacas frescas, 50g de cebolla, 30ml de salsa de soja', 'Cocinar el tofu y mezclar con espinacas, cebolla y salsa de soja.'),
    (60, '2 tomates maduros, 150g de mozzarella fresca, 30ml de aceite de oliva, hojas de albahaca al gusto', 'Cortar los tomates y la mozzarella en rodajas y servir juntos, aliñar con aceite de oliva y decorar con hojas de albahaca.');

-- Feedbacks dietas (calificación de 0 a 10)
INSERT INTO FeedbackDieta (Calificacion, Comentarios, Dieta_Codigo, Cliente_Id) VALUES
    (8, 'Me ha gustado mucho esta dieta, pero pienso que podría mejorar en la variedad de alimentos.', 3, 8),
    (6, 'La dieta ha sido efectiva, pero creo que podría ser un poco más variada.', 20, 9),
    (9, 'Estoy muy satisfecho con los resultados de esta dieta, pero creo que la cantidad de comidas diarias podría ser mayor.', 13, 10),
    (7, 'La dieta ha sido adecuada, aunque creo que los platos podrían tener más sabor.', 7, 11),
    (5, 'Me ha parecido una dieta equilibrada, pero me hubiera gustado más diversidad en los ingredientes.', 15, 8),
    (8, 'La dieta ha sido buena en general, pero pienso que las porciones podrían ser un poco más grandes.', 6, 9),
    (9, 'Me ha encantado la variedad de alimentos de esta dieta, aunque pienso que podría haber más opciones vegetarianas.', 14, 10),
    (7, 'La dieta ha sido efectiva para mis objetivos, pero creo que la información sobre las calorías totales podría ser más precisa.', 8, 11),
    (6, 'He visto resultados positivos con esta dieta, pero creo que podría ser más flexible en cuanto a las preferencias alimentarias.', 9, 12),
    (8, 'La dieta ha sido buena en general, pero creo que la información sobre los nutrientes podría ser más detallada.', 10, 13);

INSERT INTO Ejercicio (Tipo_Id, Nombre, Video) VALUES
    (1, 'Levantamiento de Pesas', 'https://youtu.be/BUUMH_anQbw?si=EILbHBad9_7CaKZb'),
    (2, 'Jogging', 'https://youtu.be/_kGESn8ArrU?si=I0YeoyFWkZ8e-1B3'),
    (3, 'Ciclismo', 'https://youtu.be/w-8PzThBN5M?si=D-xpH4yk5tDu1zLT'),
    (4, 'Sprints', 'https://youtu.be/0mqORNMFaXM?si=xAgYu5D6TbLAbeVh'),
    (5, 'Lanzamiento de Peso', 'https://youtu.be/1ex2owRMxFM?si=qMy7tHMhhU5Fszb4'),
    (6, 'Plancha', 'https://youtu.be/d0atctiI7Vw?si=_LzR70rVO6H1ZEw2'),
    (7, 'Estiramiento de Piernas', 'https://youtu.be/DdpO0m15nto?si=rLVznIS2ShY68h--'),
    (1, 'Sentadillas', 'https://youtu.be/m9pMtbfYFQU?si=yMk5XNgb1dh7pbpN'),
    (2, 'Marcha', 'https://youtu.be/xp-w0ISWmec?si=i-1WcWrRsIVeWwRU'),
    (3, 'Natación', 'https://youtu.be/1Wi6H6u9pGk?si=Bwm16bz_zagzeCfv'),
    (4, 'Correr a Velocidad', 'https://youtu.be/w4hmiOZi09g?si=uk30lD2Nis-nVtYz'),
    (1, 'Press de Banca', 'https://youtu.be/GeLq8cMODLc?si=3YIW4RWzItmTCxGi'),
    (6, 'Equilibrio sobre una pierna', 'https://youtu.be/TRiiRJMcAPU?si=rdSd9O6ZX1902jAz'),
    (7, 'Yoga', 'https://youtu.be/0dyebB9e-vM?si=npJ-AcYtPadtmnNd'),
    (1, 'Deadlift', 'https://youtu.be/je49-WhYN3M?si=IIrpESriKllkHw7g'),
    (2, 'Escalada', 'https://youtu.be/jMKWC70LRmI?si=vkjMJSjuPSx7RPcm'),
    (1, 'Remo', 'https://youtu.be/HDmtfcGXpvA?si=Pulh4SUYNgYhVMw-'),
    (4, 'Salto de Vallas', 'https://youtu.be/93VgZSjdr4I?si=t100J68q5Rk2nGkm'),
    (5, 'Snatch', 'https://youtu.be/JRTEnmyNXdQ?si=hpqgCu7SFMx6aZPW'),
    (6, 'Estabilidad con Balón', 'https://youtu.be/ONk44KROQV8?si=a-Oqm4vsDzFF748y'),
    (7, 'Pilates', 'https://youtu.be/kWEp5hy2mkU?si=mGU4ob3nIX5i7oMI'),
    (1, 'Curl de Bíceps', 'https://youtu.be/PY9QylAMtyE?si=yiwipF_FgBLotQVe'),
    (2, 'Caminata en Cinta', 'https://youtu.be/-QlU5ewCDBc?si=MNlmrJoy3yu7i0z6'),
    (3, 'Spinning', 'https://youtu.be/3YqJJ0QvNtI?si=qvxgwtcmgT8o3kMC'),
    (4, 'Salto Largo', 'https://youtu.be/q9clVmT_iD0?si=SgmAH2SmxSJj2ZDb'),
    (5, 'Clean & Jerk', 'https://youtu.be/9HyWjAk7fhY?si=Th1IsdGoCE7pb4UR'),
    (6, 'Ejercicios de Bosu', 'https://youtu.be/ONk44KROQV8?si=a-Oqm4vsDzFF748y'),
    (7, 'Movilidad Articular', 'https://youtu.be/memt1xgVj2k?si=nCarxXu8d3j9x1_W'),
    (1, 'Press Militar', 'https://www.youtube.com/watch?v=f3E1jQFRONs&ab_channel=AnthoniMontalvan'),
    (2, 'Power Walking', 'https://www.youtube.com/watch?v=SOUVx8oFL88&ab_channel=SergioOrduz'),
    (3, 'Triatlón', 'https://www.youtube.com/watch?v=InI_0xVlUxo&ab_channel=PlanetaTriatl%C3%B3n'),
    (4, 'Sprint en Bicicleta', 'https://www.youtube.com/watch?v=oug9mQX6v9o&ab_channel=GCNenEspa%C3%B1ol'),
    (5, 'Levantamiento Olímpico', 'https://www.youtube.com/watch?v=BUUMH_anQbw&ab_channel=TuZonaFit'),
    (6, 'Equilibrio en Cuerda', 'https://www.youtube.com/watch?v=8vszsQDGMEE&ab_channel=MikeShake'),
    (7, 'Estiramientos Dinámicos', 'https://www.youtube.com/watch?v=GZfpbwA2k6Q&ab_channel=DannUrrutia'),
    (1, 'Curl de Piernas', 'https://www.youtube.com/watch?v=kmtn5RJkvVE&ab_channel=FitnessConsciente'),
    (2, 'Paseo en Parque', 'https://www.youtube.com/watch?v=oQEyAHwbZ5g&ab_channel=EnCasaContigo'),
    (3, 'Kayak', 'https://www.youtube.com/watch?v=p8T_0lq6HTc&ab_channel=kayackmiguel'),
    (4, 'Sprint en Cuesta', 'https://www.youtube.com/watch?v=dATU5TsTvvs&ab_channel=Runnea.com'),
    (5, 'Arranque', 'https://www.youtube.com/watch?v=EZYd4MMfHjE&ab_channel=yonatanrestrepo'),
    (6, 'Tabla de Inversión', 'https://www.youtube.com/watch?v=YryH8jtKcwE&ab_channel=FernandoQuiropr%C3%A1ctico'),
    (7, 'Tai Chi', 'https://www.youtube.com/watch?v=7wt7ebNNrbY&ab_channel=ReddeSaludPopularValpara%C3%ADso'),
    (1, 'Extensiones de Tríceps', 'https://youtu.be/YWPIKPdyKhs?si=ao8HFYZIpagamd9s'),
    (2, 'Marcha Nórdica', 'https://youtu.be/TWyguC7VVh8?si=EiB3WwiA9os_9Lt-'),
    (3, 'Patinaje', 'https://youtu.be/2FGJB-8rEpE?si=vU9ijSze2BRk-8uL'),
    (4, 'Correr en Arena', 'https://youtu.be/WUIwwShvLZI?si=5uNtaeNhfJOiRdQb'),
    (5, 'Empuje de Trineo', 'https://youtu.be/_prbhPS0WKg?si=2NxmCHTpO2EGdMEo'),
    (6, 'Balanza de Estabilidad', 'https://www.youtube.com/watch?v=-E0TrcjWxME&ab_channel=PremiumMadrid%7CSalud-DeporteyFormaci%C3%B3n'),
    (7, 'Movilidad de Hombros', 'https://www.youtube.com/watch?v=vGDRKIMoBVk&ab_channel=PhysioWods'),
    (1, 'Dominadas', 'https://www.youtube.com/watch?v=C42yxYd12dA&ab_channel=ATHLEAN-XEspa%C3%B1ol');

-- Inserción de Sesion_de_Ejercicio sin clientes asignados
INSERT INTO Sesion_de_Ejercicio (Fecha, Dia, Repeticiones, Cantidad, Orden, Ejercicio_Id, Trabajador_Id, Cliente_Id, Rutina_Id) VALUES
    (NULL, NULL, '12', '3', 1, 1, 4, NULL, 1),
    (NULL, NULL, '10', '4', 2, 2, 4, NULL, 1),
    (NULL, NULL, '15', '2', 3, 3, 4, NULL, 1),
    (NULL, NULL, '8', '3', 4, 4, 4, NULL, 2),
    (NULL, NULL, '20', '5', 5, 5, 4, NULL, 2),
    (NULL, NULL, '12', '3', 1, 6, 4, NULL, 2),
    (NULL, NULL, '10', '4', 2, 7, 5, NULL, 3),
    (NULL, NULL, '15', '2', 3, 8, 5, NULL, 3),
    (NULL, NULL, '8', '3', 4, 9, 5, NULL, 3),
    (NULL, NULL, '20', '5', 5, 10, 6, NULL, 4),
    (NULL, NULL, '12', '3', 1, 11, 6, NULL, 4),
    (NULL, NULL, '10', '4', 2, 12, 6, NULL, 4),
    (NULL, NULL, '15', '2', 3, 13, 7, NULL, 5),
    (NULL, NULL, '8', '3', 4, 14, 7, NULL, 5),
    (NULL, NULL, '20', '5', 5, 15, 7, NULL, 5);

-- Inserción en la tabla intermedia Dieta_Comida
INSERT INTO Dieta_Comida (Dieta_Codigo, Comida_Id) VALUES
    -- Asignación de comidas a la dieta 1 (4 comidas)
    (1, 1), -- Tostadas con mermelada
    (1, 2), -- Cereal con leche
    (1, 11), -- Ensalada César
    (1, 12), -- Pollo a la parrilla con vegetales

    -- Asignación de comidas a la dieta 2 (3 comidas)
    (2, 3), -- Yogur natural con frutas
    (2, 4), -- Batido de frutas
    (2, 13), -- Pasta integral con salsa de tomate

    -- Asignación de comidas a la dieta 3 (5 comidas)
    (3, 5), -- Huevos revueltos con espinacas
    (3, 6), -- Avena con plátano
    (3, 15), -- Arroz integral con salmón al horno
    (3, 16), -- Tortilla de verduras
    (3, 23), -- Wrap de atún y aguacate

    -- Asignación de comidas a la dieta 4 (3 comidas)
    (4, 7), -- Smoothie de espinacas y piña
    (4, 8), -- Tortitas de avena
    (4, 17), -- Pechuga de pollo a la plancha

    -- Asignación de comidas a la dieta 5 (4 comidas)
    (5, 9), -- Fruta fresca
    (5, 10), -- Café con leche
    (5, 19), -- Hamburguesa de lentejas
    (5, 20), -- Quinoa con verduras salteadas

    -- Asignación de comidas a la dieta 6 (3 comidas)
    (6, 1), -- Tostadas con mermelada
    (6, 2), -- Cereal con leche
    (6, 11), -- Ensalada César

    -- Asignación de comidas a la dieta 7 (4 comidas)
    (7, 3), -- Yogur natural con frutas
    (7, 4), -- Batido de frutas
    (7, 13), -- Pasta integral con salsa de tomate
    (7, 14), -- Sándwich de pavo y queso

    -- Asignación de comidas a la dieta 8 (5 comidas)
    (8, 5), -- Huevos revueltos con espinacas
    (8, 6), -- Avena con plátano
    (8, 15), -- Arroz integral con salmón al horno
    (8, 16), -- Tortilla de verduras
    (8, 23), -- Wrap de atún y aguacate

    -- Asignación de comidas a la dieta 9 (3 comidas)
    (9, 7), -- Smoothie de espinacas y piña
    (9, 8), -- Tortitas de avena
    (9, 17), -- Pechuga de pollo a la plancha

    -- Asignación de comidas a la dieta 10 (4 comidas)
    (10, 9), -- Fruta fresca
    (10, 10), -- Café con leche
    (10, 19), -- Hamburguesa de lentejas
    (10, 20), -- Quinoa con verduras salteadas

    -- Asignación de comidas a la dieta 11 (5 comidas)
    (11, 1), -- Tostadas con mermelada
    (11, 2), -- Cereal con leche
    (11, 11), -- Ensalada César
    (11, 12), -- Pollo a la parrilla con vegetales
    (11, 21), -- Ensalada de aguacate y salmón

    -- Asignación de comidas a la dieta 12 (3 comidas)
    (12, 3), -- Yogur natural con frutas
    (12, 4), -- Batido de frutas
    (12, 13), -- Pasta integral con salsa de tomate

    -- Asignación de comidas a la dieta 13 (4 comidas)
    (13, 5), -- Huevos revueltos con espinacas
    (13, 6), -- Avena con plátano
    (13, 15), -- Arroz integral con salmón al horno
    (13, 16), -- Tortilla de verduras

    -- Asignación de comidas a la dieta 14 (3 comidas)
    (14, 7), -- Smoothie de espinacas y piña
    (14, 8), -- Tortitas de avena
    (14, 17), -- Pechuga de pollo a la plancha

    -- Asignación de comidas a la dieta 15 (4 comidas)
    (15, 9), -- Fruta fresca
    (15, 10), -- Café con leche
    (15, 19), -- Hamburguesa de lentejas
    (15, 20), -- Quinoa con verduras salteadas

    -- Asignación de comidas a la dieta 16 (5 comidas)
    (16, 1), -- Tostadas con mermelada
    (16, 2), -- Cereal con leche
    (16, 11), -- Ensalada César
    (16, 12), -- Pollo a la parrilla con vegetales
    (16, 21), -- Ensalada de aguacate y salmón

    -- Asignación de comidas a la dieta 17 (4 comidas)
    (17, 3), -- Yogur natural con frutas
    (17, 4), -- Batido de frutas
    (17, 13), -- Pasta integral con salsa de tomate
    (17, 14), -- Sándwich de pavo y queso

    -- Asignación de comidas a la dieta 18 (3 comidas)
    (18, 5), -- Huevos revueltos con espinacas
    (18, 6), -- Avena con plátano
    (18, 15), -- Arroz integral con salmón al horno

    -- Asignación de comidas a la dieta 19 (4 comidas)
    (19, 7), -- Smoothie de espinacas y piña
    (19, 8), -- Tortitas de avena
    (19, 17), -- Pechuga de pollo a la plancha
    (19, 18), -- Sopa de verduras

    -- Asignación de comidas a la dieta 20 (3 comidas)
    (20, 9), -- Fruta fresca
    (20, 10), -- Café con leche
    (20, 19); -- Hamburguesa de lentejas
    
    -- Nuevos inserts para la tabla Feedback con los nuevos atributos
INSERT INTO Feedback (Calificacion, Estado_Del_Cliente, Comentarios, Series, Peso, Repeticiones, Sesion_Id, Cliente_Id, Trabajador_Id) VALUES
    (8, 'Cansado pero satisfecho', 'Buena sesión de ejercicio, me siento bien.', '3', '20kg', '12', 1, 8, 4),
    (7, 'Un poco dolorido', 'Podría haber sido mejor, sentí algo de dolor en las articulaciones.', '4', '25kg', '10', 2, 9, 4),
    (9, 'Energético', 'Excelente rutina, muy efectiva.', '3', '30kg', '15', 3, 10, 5),
    (6, 'Fatigado', 'La sesión fue intensa, pero manejable.', '3', '15kg', '8', 4, 11, 6),
    (7, 'Motivado', 'Buena sesión, aunque me costó un poco seguir el ritmo.', '5', '20kg', '20', 5, 8, 6),
    (8, 'Satisfecho', 'Me gustó la variedad de ejercicios.', '3', '20kg', '12', 6, 9, 6),
    (9, 'Feliz', 'Muy buena rutina, la disfruté.', '4', '25kg', '10', 7, 10, 7),
    (7, 'Un poco cansado', 'Buena sesión, aunque un poco larga.', '3', '30kg', '15', 8, 11, 7),
    (6, 'Dolorido', 'Ejercicios intensos, pero útiles.', '3', '15kg', '8', 9, 12, 6),
    (7, 'Bien', 'Sesión adecuada para mi nivel.', '5', '20kg', '20', 10, 13, 6);
