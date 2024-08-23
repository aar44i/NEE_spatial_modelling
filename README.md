# NEE Spatial Modeling

This repository contains the code and resources for NEE spatial modeling using various data processing and machine learning techniques.

Map demonstrate results of modeling

![NEE](/plots/SOME_MAP.png)

## Project Structure

- **Dockerfile**: Defines the Docker image for the project.
- **run_in_docker.sh**: Script to build and run the Docker container.
- **requirements.txt**: Lists the Python dependencies required for the project.
- **NEE_for_github.ipynb**: Jupyter Notebook for NEE spatial modeling.



## Getting Started

### Prerequisites

- Docker
- Bash

### Installation

1. **Clone the repository:**
    ```bash
    git clone <repository-url>
    cd <repository-directory>
    ```

2. **Build and run the Docker container:**
    ```bash
    ./run_in_docker.sh
    ```

### Running the Jupyter Notebook

After running the Docker container, open your browser and navigate to `http://localhost:8888`. Use the token `SecretToken` to access the Jupyter Notebook.

## Dependencies

The project depends on several Python packages listed in the `requirements.txt` file:

- pandas
- requests
- geopandas
- rasterio
- catboost
- shap
- rioxarray
- matplotlib

## Usage

Open the **NEE_model_3.0.ipynb** Jupyter Notebook to explore the NEE spatial modeling code and perform various data processing and machine learning tasks.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Acknowledgements

- [CatBoost](https://catboost.ai/)
- [Optuna](https://optuna.org/)
- [Scikit-learn](https://scikit-learn.org/)
- [Plotly](https://plotly.com/)