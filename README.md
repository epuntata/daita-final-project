<p align="center">
  <a href="" rel="noopener">
 <img src="https://s3-eu-west-1.amazonaws.com/tpd/logos/5fecd8a344198b00014a586f/0x0.png" alt="Project logo"></a>
</p>
<h3 align="center">Pubblicità</h3>

<p align="center"> Un progetto di data engineering per l'analisi di pubblicità
    <br> 
</p>

---

## 📝 Indice <a name = "indice"></a>

- [Testo del Problema](#problem_statement)
- [Soluzione](#idea)
- [Limitazioni](#limitations)
- [Utilizzo](#usage)
- [Come iniziare](#getting_started)
- [Tecnologie Utilizzate](#tech_stack)
- [Autori](#authors)
- [Riconoscimenti](#acknowledgments)

## 🧐 Testo del Problema <a name = "problem_statement"></a>

Il cliente ha richiesto l'analisi di alcuni dati per capire quanto vale la pena investire in pubblicità, e quali canali sono i più appropriati.
<p align="right">(<a href="#indice">back to top</a>)</p>

## 💡 Soluzione <a name = "idea"></a>

Per analizzare i dati, abbiamo sviluppato una pipeline per portare i dati dai file originali alla nostra dashboard in PowerBi, dove possiamo mostrare i risultati delle nostre analisi.

### Ricezione dei file

Abbiamo inizialmente ricevuto 4 file di formati diversi: due file CSV, un file XLS, e un file SQL.

| CSV | XLS | SQL |
| --- | --- | --- |
| ![csv](./res/file_file_csv_1.PNG) | ![xls](./res/file_file_xls.PNG) | ![sql](./res/file_file_sql.PNG)

Ad una prima occhiata, appare possibile combinare tutti i dati in un singolo dataset; la possibilità è stata esplorata con l'aiuto di Python.

### Python e Jupyter: una ETL

Per prima cosa, dovevamo velocemente testare come poter leggere i file: a questo scopo è stato creato il notebook [01_data_collection](./01_data_collection.ipynb) per aprire, leggere e trasformare i file.

Dopo aver testato una possibile soluzione con tale notebook, è stata creata un file Python [02_ETL_pipeline](./02_ETL_pipeline.py) per astrarre e, in futuro, automatizzare l'operazione, nel caso ricevessimo nuovi file, o i file che abbiamo venissero aggiornati.

<p align="right">(<a href="#indice">back to top</a>)</p>

## 🚩 Limitazioni <a name = "limitations"></a>

- Quali sono le dipendenze del tuo progetto?
- Descrivi ogni limitazione in termini dettagliati ma concisi
- Spiega il motivo dell'esistenza di ogni limitazione
- Fornisci le ragioni per cui ogni limitazione non poteva essere superata con il metodo scelto.
- Valuta l'impatto di ogni limitazione in relazione ai ritrovamenti e conclusioni del tuo progetto, e se adeguato, descrivi come queste limitazioni potrebbero indicare al bisogno di ricerche ulteriori.

<p align="right">(<a href="#indice">back to top</a>)</p>

## 🏁 Come Iniziare <a name = "getting_started"></a>

### Per vedere solo la dashboard in PowerBI

Scaricare il file adv.pbix dalla cartella [PowerBi](./powerbi)

### Per eseguire il codice

Scaricare il contenuto della repository come file ZIP.
![come_iniziare_zip](./res/come_iniziare_zip.PNG)
Decomprimere il file nella cartella desiderata, poi aprire la cartella in Visual Studio Code. Potrebbe essere necessario installare alcune estensioni per aprire e/o eseguire alcuni tipi di file (es file Jupyter)

<p align="right">(<a href="#indice">back to top</a>)</p>

## 🎈 Utilizzo <a name="usage"></a>

Aggiungi note su come usare il sistema.

<p align="right">(<a href="#indice">back to top</a>)</p>

## ⛏️ Costruito con <a name = "tech_stack"></a>

- ![Jupyter Notebook](	https://img.shields.io/badge/Jupyter-F37626.svg?&style=for-the-badge&logo=Jupyter&logoColor=white) - Testing
- ![Python](https://img.shields.io/badge/Python-FFD43B?style=for-the-badge&logo=python&logoColor=blue) - Creazione ETL
- ![mySQL](https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white) - Database
- ![R](https://img.shields.io/badge/R-276DC3?style=for-the-badge&logo=r&logoColor=white) - Data Science
- ![PowerBI](https://img.shields.io/badge/PowerBI-F2C811?style=for-the-badge&logo=Power%20BI&logoColor=white) - Data Visualization

<p align="right">(<a href="#indice">back to top</a>)</p>

## ✍️ Autori <a name = "authors"></a>

- Baldoni  Eugenia
- Scrima William
- De Cales Giovanni
- Rossi Eleonora

## 🎉 Riconoscimenti <a name = "acknowledgments"></a>

- Grazie a Christian Iozzi per averci ispirati

<p align="right">(<a href="#indice">back to top</a>)</p>