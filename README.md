### USERS

| Column               | SQL-like data type | Constraints        | Description                                           |
|----------------------|--------------------|--------------------|-------------------------------------------------------|
| user_name            | text               |                    | Имя пользователя (условно реальное настоящее)          |
| user_alias           | text               | NOT NULL; UNIQUE   | Ник пользователя                                      |
| user_info            | text               |                    | Раздел “О себе” в профиле                             |
| online_status        | bool               |                    | Отображает онлайн ли пользователь                     |
| user_image_filepath  | text               |                    | Путь к файлу аватарки пользователя                    |
| user_banner_filepath | text               |                    | Путь к файлу баннера (шапки) профиля пользователя     |
| username             | text               | NOT NULL; UNIQUE   | Логин пользователя для авторизации на сайте           |
| email                | text               | NOT NULL; UNIQUE   | Почта пользователя                                    |
| user_password        | text               | NOT NULL           | Пароль для авторизации на сайте                       |
| last_login           | timestamp          | NOT NULL           | Системное время последнего вхождения пользователя в систему |
| gmail_account_link   | text               |                    | Временное представление о том как авторизовать пользователя через google аккаунт |

### PUBLICATIONS

| Column                      | SQL-like data type | Constraints | Description                                           |
|-----------------------------|--------------------|-------------|-------------------------------------------------------|
| publication_name            | text               | NOT NULL    | Название карточки                                     |
| publicer_id                 | int                | NOT NULL    | Ссылка на объект пользователя                         |
| publication_status          | text               | NOT NULL    | Видимость карточки                                    |
| publication_main_image      | text               |             | Путь к файлу с основной (первой заглавной) фотографией карточки |
| publication_additional_images| text []            |             | Путь к остальным фотографиям из коллажа карточки      |
| publication_date            | datetime           | NOT NULL    | Дата публикации карточки                              |
| publication_description     | text               |             | Описание карточки                                     |
| is_a_remix_of               | int                |             | Ссылка на объект карточки                             |
| license_id                  | int                |             | Ссылка на объект лицензии                             |
| project_id                  | int                |             | Ссылка на объект проекта                              |
| publication_source_filepaths| text []            | NOT NULL    | Пути к файлам модели карточки                         |
