CREATE INDEX hotels_nom_adresse_idx ON hotel (name, street);
CREATE INDEX chambres_prix_capacite_idx ON room (price, capacity);
CREATE INDEX reservations_date_arrivee_date_depart_idx ON reservation (start_date, end_date);
