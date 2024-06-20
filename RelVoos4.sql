SELECT 
    DATE(horario_saida) AS data,
    COUNT(*) AS total_voos
FROM Voos
GROUP BY DATE(horario_saida)
ORDER BY DATE(horario_saida);


SELECT 
    YEARWEEK(horario_saida, 1) AS semana,
    COUNT(*) AS total_voos
FROM Voos
GROUP BY YEARWEEK(horario_saida, 1)
ORDER BY YEARWEEK(horario_saida, 1);


SELECT 
    YEAR(horario_saida) AS ano,
    MONTH(horario_saida) AS mes,
    COUNT(*) AS total_voos
FROM Voos
GROUP BY YEAR(horario_saida), MONTH(horario_saida)
ORDER BY YEAR(horario_saida), MONTH(horario_saida);

SELECT 
    DATE(Voos.horario_saida) AS data,
    Aeronaves.tipo AS tipo_aeronave,
    COUNT(*) AS total_voos
FROM Voos
JOIN Aeronaves ON Voos.aeronave_id = Aeronaves.id
GROUP BY DATE(Voos.horario_saida), Aeronaves.tipo
ORDER BY DATE(Voos.horario_saida), Aeronaves.tipo;

SELECT 
    YEARWEEK(Voos.horario_saida, 1) AS semana,
    Aeronaves.tipo AS tipo_aeronave,
    COUNT(*) AS total_voos
FROM Voos
JOIN Aeronaves ON Voos.aeronave_id = Aeronaves.id
GROUP BY YEARWEEK(Voos.horario_saida, 1), Aeronaves.tipo
ORDER BY YEARWEEK(Voos.horario_saida, 1), Aeronaves.tipo;


SELECT 
    YEAR(Voos.horario_saida) AS ano,
    MONTH(Voos.horario_saida) AS mes,
    Aeronaves.tipo AS tipo_aeronave,
    COUNT(*) AS total_voos
FROM Voos
JOIN Aeronaves ON Voos.aeronave_id = Aeronaves.id
GROUP BY YEAR(Voos.horario_saida), MONTH(Voos.horario_saida), Aeronaves.tipo
ORDER BY YEAR(Voos.horario_saida), MONTH(Voos.horario_saida), Aeronaves.tipo;


