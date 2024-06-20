SELECT 
    Poltronas.id AS poltrona_id,
    Poltronas.numero AS numero_poltrona,
    Poltronas.localizacao AS localizacao,
    Poltronas.disponibilidade
FROM Poltronas
WHERE Poltronas.aeronave_id = (
    SELECT aeronave_id FROM Voos WHERE id = 4
)
AND Poltronas.disponibilidade = TRUE;
