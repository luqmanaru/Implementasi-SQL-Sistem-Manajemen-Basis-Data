-- Sample data untuk tabel CLIENTS
INSERT INTO CLIENTS (id, first_name, last_name, phone_num, email) VALUES
(1, 'Budi', 'Santoso', '081234567890', 'budi.santoso@example.com'),
(2, 'Ani', 'Rahmawati', '082345678901', 'ani.rahmawati@example.com'),
(3, 'Citra', 'Dewi', '083456789012', 'citra.dewi@example.com');

-- Sample data untuk tabel THEMES
INSERT INTO THEMES (code, description) VALUES
('WED', 'Pernikahan'),
('BDY', 'Ulang Tahun'),
('CRP', 'Acara Perusahaan'),
('GRD', 'Wisuda');

-- Sample data untuk tabel EVENTS
INSERT INTO EVENTS (id, name, date, description, cost, client_id, theme_code) VALUES
(1, 'Pernikahan Budi & Ani', '2023-12-15', 'Resepsi pernikahan', 75000000.00, 1, 'WED'),
(2, 'Ulang Tahun Citra ke-25', '2023-11-20', 'Pesta ulang tahun', 15000000.00, 3, 'BDY'),
(3, 'Annual Meeting PT XYZ', '2023-10-05', 'Rapat tahunan perusahaan', 50000000.00, 2, 'CRP');

-- Sample data untuk tabel CLIENTS_EVENTS (relasi many-to-many)
INSERT INTO CLIENTS_EVENTS (client_id, event_id) VALUES
(1, 1),  -- Budi menghadiri pernikahannya sendiri
(3, 1),  -- Citra diundang ke pernikahan Budi
(2, 3),  -- Ani menghadiri acara perusahaan
(3, 2);  -- Citra adalah host ulang tahunnya sendiri
