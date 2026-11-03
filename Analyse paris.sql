SELECT *
FROM transactions
LIMIT 5;

SELECT
    COUNT(*) AS nombre_transactions,
    SUM(mise_fcfa) AS total_mises,
    SUM(gain_verse_fcfa) AS total_gains_verses,
    AVG(mise_fcfa) AS mise_moyenne
FROM transactions;

SELECT
    type_pari,
    COUNT(*) AS nombre_paris,
    SUM(mise_fcfa) AS total_mises,
    SUM(gain_verse_fcfa) AS total_gains_verses
FROM transactions
GROUP BY type_pari
ORDER BY total_mises DESC;

SELECT
    point_vente,
    COUNT(*) AS nombre_transactions,
    SUM(mise_fcfa) AS total_mises,
    SUM(gain_verse_fcfa) AS total_gains_verses
FROM transactions
GROUP BY point_vente
ORDER BY total_mises DESC;

SELECT
    statut,
    COUNT(*) AS nombre_transactions,
    SUM(mise_fcfa) AS total_mises,
    SUM(gain_verse_fcfa) AS total_gains_verses
FROM transactions
GROUP BY statut
ORDER BY nombre_transactions DESC;

SELECT
    substr(date, 1, 7) AS mois,
    COUNT(*) AS nombre_transactions,
    SUM(mise_fcfa) AS total_mises,
    SUM(gain_verse_fcfa) AS total_gains_verses
FROM transactions
GROUP BY substr(date, 1, 7)
ORDER BY mois;

