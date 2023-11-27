-- Trouver tous les clients ayant réservé une chambre dans un hôtel appartenant à une chaîne hôtelière donnée 

SELECT c.first_name, c.last_name, c.email, c.NAS_client, r.start_date, r.end_date
FROM client c
JOIN reservation r ON c.NAS_client = r.NAS_client
JOIN room ch ON r.room_number = ch.room_number
JOIN hotel h ON ch.hotel_id = h.hotel_id
JOIN hotel_group chn ON h.hotel_group_id = chn.hotel_group_id
WHERE chn.id = 'Nom_de_la_chaine_hôtelière';

-- Trouver le nombre de chambres disponibles dans un hôtel donné pour une période de temps donnée
SELECT COUNT(*) AS nombre_de_chambres_disponibles
FROM room
WHERE hotel_id = 'id_de_l_hotel'
AND room_number NOT IN (
  SELECT room_number
  FROM reservations
  WHERE hotel_id = 'id_de_l_hotel'
  AND start_date <= 'date_de_fin'
  AND end_date >= 'date_de_debut'
);

-- Recherche des chambres disponibles dans un hôtel pour une date spécifique
SELECT h.name, c.room_number, c.price, c.capacity, c.view
FROM hotel h, room c
WHERE h.hotel_id = c.hotel_id AND h.name = 'Nom de l hôtel' 
AND c.room_number NOT IN (
    SELECT room_number
    FROM location
    WHERE startDate <= '2023-04-05' AND endDate >= '2023-04-05'
)

-- Trouver les employés d'un hôtel donné :
SELECT first_name,last_name, email, employee_NAS, role
FROM employee
WHERE hotel_id = 'id_de_l_hotel';

-- Déclencheur qui supprime toutes les locations d'une chambre si la chambre est supprimée
CREATE TRIGGER supprimer_location_chambre
BEFORE DELETE ON room
FOR EACH ROW
BEGIN
    DELETE FROM location
    WHERE room_number = OLD.room_number;
END;

-- Déclencheur qui supprime tous les hôtels d'une chaîne hôtelière si la chaîne hôtelière est supprimée
CREATE TRIGGER supprimer_hotels_chaine
BEFORE DELETE ON hotel_group
FOR EACH ROW
BEGIN
    DELETE FROM hotel
    WHERE hotel_id = OLD.hotel_id;
END;
