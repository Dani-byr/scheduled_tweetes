## Models
Database wrapper
### Usage
- Query for records (consulta de registros)
- Wrap individual records (validaciones)
- Create, update and delete records (crear, actualizar y eliminar registros)
> In a simple way, it's for interactions with the database records and tables

# Views
Your response body content
- HTML
- CSV
- PDF
- XML
This is what gets sent back to the browser and displayed

## Controller
-> High level logic
Decide how to process a request and define a response

Handles requests, validates data, interacts with models/services
The middle man between your model and view. It's responsible for handling requests, interacting with models, and rendering views.

### Routes
Matchers for the URL that is requested
- Define which URL paths should be handled by which controller actions
'''
EJ: GET for "/about" -> I see your request "/about", we'll give that to the AboutController to handle 
'''
Son importante ya que se usa el protocolo http
El browser es el que se "comunica" con la ruta




#### Request
- GET / POST / PUT / DELETE / UPDATE?

EJ de Request
GET /about (page) HTTP/1.1
Host: 127.0.0.1

Lo que hace es:
1. Ir a rails
2. Avisar que tiene un GET request para la ruta "/about" -> GET for "/about"














## Middleware
Software components that are able to intercept and modify parts of an application's input or output
