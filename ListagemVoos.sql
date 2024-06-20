SELECT 
    Voos.id AS voo_id,
    Voos.aeroporto_origem,
    Voos.aeroporto_destino,
    Voos.horario_saida,
    Voos.horario_previsto_chegada,
    Escalas.aeroporto_saida AS escala_aeroporto,
    Escalas.horario_saida AS escala_horario
FROM Escalas
JOIN Voos ON Escalas.voo_id = Voos.id
WHERE Escalas.aeroporto_saida = 'São Paulo (GRU)';

SELECT 
    Voos.id AS voo_id,
    Voos.aeroporto_origem,
    Voos.aeroporto_destino,
    Voos.horario_saida,
    Voos.horario_previsto_chegada,
    Escalas.aeroporto_saida AS escala_aeroporto,
    Escalas.horario_saida AS escala_horario
FROM Escalas
JOIN Voos ON Escalas.voo_id = Voos.id
WHERE Escalas.aeroporto_saida = ?;


SELECT 
    Voos.id AS voo_id,
    Voos.aeroporto_origem,
    Voos.aeroporto_destino,
    Voos.horario_saida,
    Voos.horario_previsto_chegada,
    Escalas.aeroporto_saida AS escala_aeroporto,
    Escalas.horario_saida AS escala_horario
FROM Escalas
JOIN Voos ON Escalas.voo_id = Voos.id
WHERE Escalas.aeroporto_saida IN ('São Paulo (GRU)', 'Rio de Janeiro (GIG)');
