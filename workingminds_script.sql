USE workingmindsdb;

CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL,
    role VARCHAR(45) NOT NULL,
    hiring_date DATE NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP,
    deleted_at DATETIME,
    PRIMARY KEY(id),
    UNIQUE(id)
);

CREATE TABLE vacation (
    id INT NOT NULL AUTO_INCREMENT,
    start DATE NOT NULL,
    end DATE NOT NULL,
    employee_id INT NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP,
    deleted_at DATETIME,
    PRIMARY KEY(id),
    UNIQUE(id),
    CONSTRAINT fk_vacation_employee FOREIGN KEY (employee_id) REFERENCES employee(id)
);
