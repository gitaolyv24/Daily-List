-- Database: needs_management
CREATE DATABASE IF NOT EXISTS needs_management;
USE needs_management;

-- Tabel Users
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role ENUM('admin', 'user') DEFAULT 'user',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabel Lists (Daftar Kebutuhan)
CREATE TABLE lists (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    category ENUM('daily', 'weekly', 'other') DEFAULT 'other',
    created_by INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (created_by) REFERENCES users(id) ON DELETE CASCADE
);

-- Tabel List Members (User yang join ke list)
CREATE TABLE list_members (
    id INT AUTO_INCREMENT PRIMARY KEY,
    list_id INT NOT NULL,
    user_id INT NOT NULL,
    joined_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (list_id) REFERENCES lists(id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    UNIQUE KEY unique_member (list_id, user_id)
);

-- Tabel Items (Item Kebutuhan)
CREATE TABLE items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    list_id INT NOT NULL,
    title VARCHAR(200) NOT NULL,
    type ENUM('text', 'link', 'checklist') DEFAULT 'text',
    content TEXT,
    link_url VARCHAR(500),
    priority INT DEFAULT 0,
    position INT DEFAULT 0,
    is_completed BOOLEAN DEFAULT FALSE,
    completed_by INT,
    completed_at TIMESTAMP NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (list_id) REFERENCES lists(id) ON DELETE CASCADE,
    FOREIGN KEY (completed_by) REFERENCES users(id) ON DELETE SET NULL
);

-- Insert default admin user (password: admin123)
INSERT INTO users (username, email, password, role) VALUES 
('admin', 'admin@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin'),
('user1', 'user1@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user');

-- Sample data
INSERT INTO lists (title, description, category, created_by) VALUES 
('Kebutuhan Harian', 'Daftar kebutuhan sehari-hari', 'daily', 1),
('Belanja Mingguan', 'Belanja bulanan rumah tangga', 'weekly', 1);

INSERT INTO items (list_id, title, type, content, priority, position) VALUES 
(1, 'Beli beras 5kg', 'text', 'Beras lokal atau premium', 1, 1),
(1, 'Minyak goreng 2L', 'link', 'Minyak goreng kemasan', 2, 2),
(1, 'Sudah beli sayur hari ini?', 'checklist', 'Cek sayuran untuk hari ini', 3, 3),
(2, 'Telur 1kg', 'text', 'Telur ayam kampung', 1, 1),
(2, 'Susu kotak', 'link', 'Susu UHT 1L', 2, 2);
