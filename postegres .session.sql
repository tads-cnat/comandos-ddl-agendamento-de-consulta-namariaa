CREATE Table Pessoa(
    cpf char(11) PRIMARY KEY,
    email VARCHAR(50) NOT NULL,
    nome VARCHAR(150) NOT NULL ,
    data_nasc DATE NOT NULL,
    endereco VARCHAR(300) NOT NULL,
    telefone VARCHAR(300) NOT NULL,
    CONSTRAINT uniquePessoa UNIQUE (nome, email)
)

CREATE Table Paciente(
    cpfPaciente char(11),
    FOREIGN KEY (cpfPaciente) REFERENCES Pessoa(cpf)
    senha INT(10),
    plano_saude BOOLEAN
)

CREATE table Medico(
    cpfMedico char(11),
    FOREIGN KEY (cpfMedico) REFERENCES Pessoa(cpf)
    crm INT UNIQUE
)

CREATE TABLE Especialidade(
    id INT PRIMARY KEY,
    descricao VARCHAR(150)
)

CREATE Table Medico_Especialidade(
    cpfMedico char(11),
    FOREIGN KEY (cpfMedico) REFERENCES Medico(cpfMedico)
)

CREATE Table Agendamento(
    cpfPacinete char(11),
    FOREIGN KEY (cpfPacinete) REFERENCES Paciente(cpfPessoa),
    cpfMedico char(11),
    FOREIGN KEY (cpfMedico) REFERENCES Medico(cpfMedico),
    dh_consulta DATE PRIMARY KEY,
    dh_agendameto DATE, 
    valor_consulta FLOAT,
)