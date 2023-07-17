
MERGE snowflake_dw.dbo.dim_myyja AS t
    USING myyja as s
    ON t.myyja_biz_key = s.myyja_id
    WHEN MATCHED AND 
       (t.nimi != s.nimi) THEN
        -- Row exists and data is different
        UPDATE SET t.nimi = s.nimi
    WHEN NOT MATCHED THEN 
        -- Row exists in source but not in target        
        INSERT (myyja_biz_key, nimi) VALUES (s.myyja_id, s.nimi);