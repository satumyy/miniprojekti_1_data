
MERGE snowflake_dw.dbo.dim_vuokrauspiste AS t
USING toimipiste as s
ON s.toimipiste_id = t.vuokrauspiste_biz_key
WHEN MATCHED  AND     (
            t.kaupunki != s.kaupunki OR 
            t.maa != s.maa OR  
            t.tyyppi != s.toimipiste_tyyppi OR 
            t.nimi != s.nimi
            ) 
    Then UPDATE Set 
            t.kaupunki = s.kaupunki, 
            t.maa = s.maa, 
            t.koordinaatit = convert(varchar(max),s.koordinaatit), 
            t.tyyppi = s.toimipiste_tyyppi, 
            t.nimi = s.nimi
    WHEN NOT MATCHED THEN 
    Insert (vuokrauspiste_biz_key, kaupunki, maa, koordinaatit, tyyppi, nimi) 
    values (s.toimipiste_id, s.kaupunki, s.maa, convert(varchar(max),s.koordinaatit), s.toimipiste_tyyppi, s.nimi);