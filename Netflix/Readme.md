# Netflix Movie and Show Analysis

## Project Overview
This project focuses on analyzing Netflix's vast library of movies and shows. Using SQL and Python, we dive into various aspects such as genre distribution, popular titles, ratings, and content production across different countries. The goal is to uncover insights that can inform content strategy, user preferences, and platform diversity.

## Objectives
- **Genre Distribution**: Understand which genres dominate Netflix's content.
- **Top Rated Titles**: Identify the highest-rated movies and shows based on IMDb and TMDb scores.
- **Content by Country**: Analyze the geographical diversity of Netflix's content.
- **Release Trends**: Track the evolution of Netflix's content releases over the years.
- **Ratings Correlation**: Evaluate the relationship between IMDb scores and TMDb popularity.

## Dataset
The analysis is based on two main tables:
- **Movies and Shows**: Contains information about each title, including genres, release year, ratings, and more.
- **Credits**: Details the cast and crew involved in each title.

### `Movies and Shows`
| Column                | Description                                      |
|-----------------------|--------------------------------------------------|
| `id`                  | Unique identifier for each title                 |
| `title`               | Name of the movie or show                        |
| `type`                | Indicates whether the title is a movie or show   |
| `description`         | Brief summary of the title                       |
| `release_year`        | Year of release                                  |
| `age_certification`   | Age rating (e.g., PG, R, etc.)                   |
| `runtime`             | Duration in minutes                              |
| `genres`              | Comma-separated list of genres                   |
| `production_countries`| Countries involved in production                 |
| `imdb_id`             | IMDb identifier                                  |
| `imdb_score`          | IMDb rating                                      |
| `imdb_votes`          | Number of votes on IMDb                          |
| `tmdb_popularity`     | Popularity score on TMDb                         |
| `tmdb_score`          | TMDb rating                                      |

### `Credits`
| Column        | Description                                      |
|---------------|--------------------------------------------------|
| `person_id`   | Unique identifier for the person                 |
| `id`          | Title ID, corresponding to the Movies and Shows table |
| `name`        | Name of the person                               |
| `character`   | Character played in the title (for actors)       |
| `role`        | Role of the person (e.g., Director, Actor)       |

## SQL Analysis
The project includes SQL scripts for the following analyses:
- **Genre Distribution**: Determine the most common genres.
- **Top Rated Titles**: Find the highest-rated titles on IMDb.
- **Content by Country**: Examine the number of titles produced by different countries.
- **Release Trends**: Analyze the trend of content releases over the years.
- **Ratings Correlation**: Assess the correlation between IMDb and TMDb ratings.

## Python Analysis
The project also includes Python scripts to visualize the data and perform additional analysis.

## How to Use
1. **Database Setup**: Create a database and import the provided SQL script to set up the tables and insert data.
2. **Run Queries**: Use SQL clients like MySQL Workbench or pgAdmin to execute the provided queries.
3. **Analyze Results**: Interpret the results to gain insights into Netflix's content strategy and user preferences.

## Conclusion
This project offers a comprehensive analysis of Netflix's movie and show database. By exploring different dimensions of the content, you can gain valuable insights into what drives engagement on the platform.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
