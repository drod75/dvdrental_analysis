<a name="readme-top"></a>

<div align="center">

  <h1 align="center">DVD Rental Analysis</h1>

  <p align="center">
    An in-depth analysis of the DVD rental database to uncover trends in movie performance across different categories and related features.
    <br />
    <a href="https://github.com/drod75/dvdrental_analysis/issues">Report Bug</a>
    <a href="https://github.com/drod75/dvdrental_analysis/issues">Request Feature</a>
  </p>
</div>

<div align="center">

[![Stargazers][stars-shield]][stars-url]
[![Forks][forks-shield]][forks-url]
[![Issues][issues-shield]][issues-url]
[![Apache 2.0 License][license-shield]][license-url]

</div>

<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#setup">Setup</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>

## About The Project

This project provides a comprehensive analysis of a DVD rental database. The primary goal is to understand the performance of movies based on their categories, actors, and other attributes. By exploring the relationships between these features, we aim to derive insights into what makes a movie successful in the rental market.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

This project was built with the following technologies:

- [![Python][Python-shield]][Python-url]
- [![PostgreSQL][PostgreSQL-shield]][PostgreSQL-url]
- [![JupyterLab][JupyterLab-shield]][JupyterLab-url]
- [![Pandas][Pandas-shield]][Pandas-url]
- [![Plotly][Plotly-shield]][Plotly-url]
- [![Seaborn][Seaborn-shield]][Seaborn-url]
- [![Streamlit][Streamlit-shield]][Streamlit-url]
- [![DuckDB][DuckDB-shield]][DuckDB-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

Before you begin, ensure you have the following installed:

- **Python**: Version 3.13 or higher.
- **Package Manager**: `uv` or `pip` with `venv`.
- **PostgreSQL**: A running instance of PostgreSQL.

You will also need a `.env` file in the root directory with the following variables:

```bash
# .env file
username="your_postgres_username"
password="your_postgres_password"
database="dvd_rental"
url="https://www.postgresqltutorial.com/wp-content/uploads/2019/05/dvdrental.zip"
savepath="dvdrental.zip"
tar_name="dvdrental"
```

### Setup

1.  **Clone the repository**:

    - Using HTTPS:
      ```sh
      git clone https://github.com/drod75/dvdrental_analysis.git
      ```
    - Using GitHub CLI:
      ```sh
      gh repo clone drod75/dvdrental_analysis
      ```

2.  **Set up the virtual environment and install dependencies**:

    - **Option 1: Using `uv` (recommended)**

      ```sh
      uv venv
      uv sync
      ```

    - **Option 2: Using `pip` and `venv`**
      ```sh
      python -m venv .venv
      source .venv/bin/activate  # On Windows, use `.venv\Scripts\activate`
      pip install -e .
      ```

3.  **Set up the database**:

    Run the setup script to download the data, create the database, and restore the data.

    ```sh
    bash setup.sh
    ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Usage

To explore the analysis, you can use the Jupyter Notebook provided:

1.  Activate your virtual environment.
2.  Start JupyterLab:
    ```sh
    jupyter lab
    ```
3.  Navigate to the `notebooks/` directory and open `sql.ipynb`.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".

1.  Fork the Project
2.  Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3.  Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4.  Push to the Branch (`git push origin feature/AmazingFeature`)
5.  Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## License

Distributed under the Apache 2.0 License. See `LICENSE` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Contact

David Rodriguez - dr507498@gmail.com

Project Link: [https://github.com/drod75/dvdrental_analysis](https://github.com/drod75/dvdrental_analysis)

LinkedIn: [https://www.linkedin.com/in/david-rodriguez-nyc/](https://www.linkedin.com/in/david-rodriguez-nyc/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

[stars-shield]: https://img.shields.io/github/stars/drod75/dvdrental_analysis.svg?style=for-the-badge
[stars-url]: https://github.com/drod75/dvdrental_analysis/stargazers
[forks-shield]: https://img.shields.io/github/forks/drod75/dvdrental_analysis.svg?style=for-the-badge
[forks-url]: https://github.com/drod75/dvdrental_analysis/network/members
[issues-shield]: https://img.shields.io/github/issues/drod75/dvdrental_analysis.svg?style=for-the-badge
[issues-url]: https://github.com/drod75/dvdrental_analysis/issues
[license-shield]: https://img.shields.io/github/license/drod75/dvdrental_analysis.svg?style=for-the-badge
[license-url]: https://github.com/drod75/dvdrental_analysis/blob/main/LICENSE
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/david-rodriguez-nyc/
[Python-shield]: https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white
[Python-url]: https://www.python.org/
[PostgreSQL-shield]: https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white
[PostgreSQL-url]: https://www.postgresql.org/
[JupyterLab-shield]: https://img.shields.io/badge/JupyterLab-F37626?style=for-the-badge&logo=jupyter&logoColor=white
[JupyterLab-url]: https://jupyter.org/
[Pandas-shield]: https://img.shields.io/badge/Pandas-150458?style=for-the-badge&logo=pandas&logoColor=white
[Pandas-url]: https://pandas.pydata.org/
[Plotly-shield]: https://img.shields.io/badge/Plotly-3F4F75?style=for-the-badge&logo=plotly&logoColor=white
[Plotly-url]: https://plotly.com/
[Seaborn-shield]: https://img.shields.io/badge/Seaborn-3776AB?style=for-the-badge&logo=seaborn&logoColor=white
[Seaborn-url]: https://seaborn.pydata.org/
[Streamlit-shield]: https://img.shields.io/badge/Streamlit-FF4B4B?style=for-the-badge&logo=streamlit&logoColor=white
[Streamlit-url]: https://streamlit.io/
[DuckDB-shield]: https://img.shields.io/badge/DuckDB-FFFF00?style=for-the-badge&logo=duckdb&logoColor=black
[DuckDB-url]: https://duckdb.org/
