
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
```bash
  GET /users
  GET /users?start_date=2022-07-16&end_date=2022-07-20
```

#### Получить пользователя со списком его постов и комментариев
```bash
  GET /users/:id
```

#### Создать пользователя
```bash
  POST /users

```
| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `name` | `string` | Имя пользователя |

#### Изменить пользователя
```bash
  PUT /users/:id

```
| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `name` | `string` | Имя пользователя |

#### Удалить пользователя
```bash
  DELETE /users/:id

```


#### Создать пост
```bash
  POST /posts

```
| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `title` | `string` | Заголовок поста |
| `text` | `string` | Описание поста |
| `user_id` | `integer` | id пользователя |

#### Изменить пост
```bash
  PUT /posts/:id

```
| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `title` | `string` | Заголовок поста |
| `text` | `string` | Тест поста |
| `user_id` | `integer` | id пользователя |

#### Удалить пост
```bash
  DELETE /posts/:id

```
#### Создать комментарий
```bash
  POST /comments

```
| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `rating` | `integer` | Рейтинг комментария от 1 до 5 |
| `text` | `string` | Тест комментария |
| `user_id` | `integer` | id пользователя |
| `post_id` | `integer` | id поста |

#### Удалить комментарий
```bash
  DELETE /comments/:id
```

При удалении поста, все комментарии к нему удаляются.
Можно удалить только пользователя без постов.



## Author

- [@Eugene Suloev](https://t.me/e_suloev)

