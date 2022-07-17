
# README for blog-api

## Разворачивание и запуск проекта:

Устанавливаем зависимости.
```bash
  bundle i 
```
Накатываем миграции.
```bash
  rails db:migrate
```
Заполняем базу фэйковыми данными.
```bash
  rails db:seed
```
Запускаем проект и радуемся.
```bash
  rails s
```


## API Reference

#### Получить список пользователей
```http
  GET /users
  GET /users?start_date=2022-07-16&end_date=2022-07-20
```

#### Получить пользователя со списком его постов и комментариев
```http
  GET /users/:id
```

#### Создать пользователя
```http
  POST /users

```
| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `name` | `string` | Имя пользователя |

#### Изменить пользователя
```http
  PUT /users/:id

```
| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `name` | `string` | Имя пользователя |

#### Удалить пользователя
```http
  DELETE /users/:id

```


#### Создать пост
```http
  POST /posts

```
| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `title` | `string` | Заголовок поста |
| `text` | `string` | Описание поста |
| `user_id` | `integer` | id пользователя |

#### Изменить пост
```http
  PUT /posts/:id

```
| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `title` | `string` | Заголовок поста |
| `text` | `string` | Тест поста |
| `user_id` | `integer` | id пользователя |

#### Удалить пост
```http
  DELETE /posts/:id

```
#### Создать комментарий
```http
  POST /comments

```
| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `rating` | `integer` | Рейтинг комментария от 1 до 5 |
| `text` | `string` | Тест комментария |
| `user_id` | `integer` | id пользователя |
| `post_id` | `integer` | id поста |

#### Удалить комментарий
```http
  DELETE /comments/:id
```

При удалении поста, все комментарии к нему удаляются.
Можно удалить только пользователя без постов.



## Author

- [@Eugene Suloev](https://t.me/e_suloev)

