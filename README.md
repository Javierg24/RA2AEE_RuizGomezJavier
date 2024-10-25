# LongWay

## Descripción

**LongWay** es una aplicación web de comercio electrónico diseñada para ofrecer una experiencia de compra única en moda. La aplicación cuenta con una interfaz atractiva y fácil de usar, permitiendo a los usuarios navegar y comprar ropa de forma sencilla. La aplicación incluye secciones para hombres y mujeres, así como un sistema de contacto y una galería de productos.

## Características

- Navegación intuitiva por categorías de productos.
- Sección de productos en cuadrícula (2 en 2) para una mejor visualización.
- Formulario de contacto para consultas y comentarios.
- Sistema de carga automática de datos desde un archivo de configuración.
- Estilos responsivos para una experiencia óptima en dispositivos móviles.

## Tecnologías Utilizadas

- **Frontend**: HTML, CSS, JavaScript
- **Backend**: Java
- **Frameworks**: Sin framework específico para el backend (Java puro)
- **Gestión de recursos**: ResourceBundle para la carga de datos

## Instalación

Para ejecutar la aplicación en tu entorno local, sigue estos pasos:

## Clases Principales

### `DatosSecciones`

La clase `DatosSecciones` es responsable de almacenar y proporcionar acceso a la información de diferentes secciones de la aplicación. Utiliza el patrón Builder para crear instancias de la clase de manera fluida y legible.

#### Métodos Principales:

- **Constructor**: `DatosSecciones(Builder builder)`
  - **Parámetros**: `Builder` con datos de secciones.
  - **Salida**: Crea una instancia de `DatosSecciones` con los datos proporcionados.

- **Getters**: Métodos para acceder a la información de cada sección:
  - `getInicio()`
  - `getSobreNosotros()`
  - `getServicios()`
  - `getTestimonios()`
  - `getGaleria()`
  - `getContacto()`
  - `getPreguntasFrecuentes()`
  - `getPoliticaPrivacidad()`
  - `getTerminosCondiciones()`
  
  - **Salida**: Devuelven `String` correspondiente a la sección.

### `SingletonCache`

La clase `SingletonCache` implementa el patrón Singleton, garantizando que solo exista una instancia de la clase en toda la aplicación. Se encarga de cargar y gestionar los datos de configuración de la aplicación a partir de un archivo de propiedades.

#### Métodos Principales:

- **Método estático**: `getInstance()`
  - **Salida**: Retorna la única instancia de `SingletonCache`.

- **Métodos de configuración**:
  - `getResourceBundle()`
    - **Salida**: Devuelve el `ResourceBundle` que contiene los datos de configuración.

  - `setResourceBundle(ResourceBundle resourceBundle)`
    - **Parámetros**: `ResourceBundle` a establecer.
  
  - `getDatosSecciones()`
    - **Salida**: Devuelve una instancia de `DatosSecciones`.

  - `setDatosSecciones(DatosSecciones datosSecciones)`
    - **Parámetros**: `DatosSecciones` a establecer.

- **Métodos privados**:
  - `cargarDatos()`
    - Carga los datos de las secciones desde un archivo de propiedades.
  
  - `iniciarActualizacionAutomatica()`
    - Configura una tarea que actualiza automáticamente los datos cada 4 minutos.

LongWay/
├── src/
│   ├── com/
│   │   └── daw/
│   │       └── longway/
│   │           ├── DatosSecciones.java
│   │           ├── SingletonCache.java
│   │           └── otros_archivos.java
├── web/
│   ├── WEB-INF/
│   │   └── classes/
│   │       └── datosSecciones.properties
│   ├── index.html
│   ├── css/
│   │   └── styles.css
│   └── js/
│       └── script.js
└── README.md
