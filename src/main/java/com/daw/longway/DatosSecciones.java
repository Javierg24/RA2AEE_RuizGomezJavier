package com.daw.longway;

/**
 * La clase DatosSecciones almacena y organiza la información de las secciones de la aplicación web de la tienda.
 * Implementa el patrón de diseño Builder para facilitar la creación de instancias con múltiples parámetros.
 */

/*
inicio: Texto o contenido para la sección de inicio.
sobreNosotros: Texto para la sección "Sobre Nosotros".
servicios: Texto para la sección de servicios.
testimonios: Texto para la sección de testimonios de clientes.
galeria: Texto para la galería de imágenes o productos.
contacto: Información de contacto de la tienda.
preguntasFrecuentes: Preguntas frecuentes (FAQ).
politicaPrivacidad: Política de privacidad de la tienda.
terminosCondiciones: Términos y condiciones de la tienda.
tituloInicio: Título de la sección de inicio.
tituloNosotros: Título de la sección "Sobre Nosotros".
tituloServicios: Título de la sección de servicios.
tituloTestimonios: Título de la sección de testimonios.
tituloGaleria: Título de la galería.
tituloContacto: Título de la sección de contacto.
tituloFaq: Título de la sección de preguntas frecuentes.
tituloPoliticaPrivacidad: Título de la política de privacidad.
tituloTerminosCondiciones: Título de los términos y condiciones.

*/

public class DatosSecciones {
    // Atributos para almacenar la información de cada sección
    private String inicio;
    private String sobreNosotros;
    private String servicios;
    private String testimonios;
    private String galeria;
    private String contacto;
    private String preguntasFrecuentes;
    private String politicaPrivacidad;
    private String terminosCondiciones;

    // Atributos para almacenar los títulos de cada sección
    private String tituloInicio;
    private String tituloNosotros;
    private String tituloServicios;
    private String tituloTestimonios;
    private String tituloGaleria;
    private String tituloContacto;
    private String tituloFaq;
    private String tituloPoliticaPrivacidad;
    private String tituloTerminosCondiciones;

    /*
    Este es un constructor privado, utilizado por la clase interna Builder.
    Este constructor inicializa todos los atributos con los valores pasados
    desde el Builder.
    */
    private DatosSecciones(Builder builder) {
        this.inicio = builder.inicio;
        this.sobreNosotros = builder.sobreNosotros;
        this.servicios = builder.servicios;
        this.testimonios = builder.testimonios;
        this.galeria = builder.galeria;
        this.contacto = builder.contacto;
        this.preguntasFrecuentes = builder.preguntasFrecuentes;
        this.politicaPrivacidad = builder.politicaPrivacidad;
        this.terminosCondiciones = builder.terminosCondiciones;        
        this.tituloInicio = builder.tituloInicio;
        this.tituloNosotros = builder.tituloNosotros;
        this.tituloServicios = builder.tituloServicios;
        this.tituloTestimonios = builder.tituloTestimonios;
        this.tituloGaleria = builder.tituloGaleria;
        this.tituloContacto = builder.tituloContacto;
        this.tituloFaq = builder.tituloFaq;
        this.tituloPoliticaPrivacidad = builder.tituloPoliticaPrivacidad;
        this.tituloTerminosCondiciones = builder.tituloTerminosCondiciones;
    }


    /**
     * @return the inicio
     */
    public String getInicio() {
        return inicio;
    }

    /**
     * @return the sobreNosotros
     */
    public String getSobreNosotros() {
        return sobreNosotros;
    }

    /**
     * @return the servicios
     */
    public String getServicios() {
        return servicios;
    }

    /**
     * @return the testimonios
     */
    public String getTestimonios() {
        return testimonios;
    }

    /**
     * @return the galeria
     */
    public String getGaleria() {
        return galeria;
    }

    /**
     * @return the contacto
     */
    public String getContacto() {
        return contacto;
    }

    /**
     * @return the preguntasFrecuentes
     */
    public String getPreguntasFrecuentes() {
        return preguntasFrecuentes;
    }

    /**
     * @return the politicaPrivacidad
     */
    public String getPoliticaPrivacidad() {
        return politicaPrivacidad;
    }

    /**
     * @return the terminosCondiciones
     */
    public String getTerminosCondiciones() {
        return terminosCondiciones;
    }

    /**
     * @return the tituloInicio
     */
    public String getTituloInicio() {
        return tituloInicio;
    }

    /**
     * @return the tituloNosotros
     */
    public String getTituloNosotros() {
        return tituloNosotros;
    }

    /**
     * @return the tituloServicios
     */
    public String getTituloServicios() {
        return tituloServicios;
    }

    /**
     * @return the tituloTestimonios
     */
    public String getTituloTestimonios() {
        return tituloTestimonios;
    }

    /**
     * @return the tituloGaleria
     */
    public String getTituloGaleria() {
        return tituloGaleria;
    }

    /**
     * @return the tituloContacto
     */
    public String getTituloContacto() {
        return tituloContacto;
    }

    /**
     * @return the tituloFaq
     */
    public String getTituloFaq() {
        return tituloFaq;
    }

    /**
     * @return the tituloPoliticaPrivacidad
     */
    public String getTituloPoliticaPrivacidad() {
        return tituloPoliticaPrivacidad;
    }

    /**
     * @return the tituloTerminosCondiciones
     */
    public String getTituloTerminosCondiciones() {
        return tituloTerminosCondiciones;
    }

    // Clase estática Builder que permite construir objetos de DatosSecciones de manera flexible
    public static class Builder {
        // Atributos para el Builder que corresponden a los atributos de DatosSecciones
        private String inicio;
        private String sobreNosotros;
        private String servicios;
        private String testimonios;
        private String galeria;
        private String contacto;
        private String preguntasFrecuentes;
        private String politicaPrivacidad;
        private String terminosCondiciones;

        private String tituloInicio;
        private String tituloNosotros;
        private String tituloServicios;
        private String tituloTestimonios;
        private String tituloGaleria;
        private String tituloContacto;
        private String tituloFaq;
        private String tituloPoliticaPrivacidad;
        private String tituloTerminosCondiciones;

        // Métodos para establecer cada atributo en el Builder
        public Builder setInicio(String inicio) {
            this.inicio = inicio;
            return this;
        }

        public Builder setSobreNosotros(String sobreNosotros) {
            this.sobreNosotros = sobreNosotros;
            return this;
        }

        public Builder setServicios(String servicios) {
            this.servicios = servicios;
            return this;
        }

        public Builder setTestimonios(String testimonios) {
            this.testimonios = testimonios;
            return this;
        }

        public Builder setGaleria(String galeria) {
            this.galeria = galeria;
            return this;
        }

        public Builder setContacto(String contacto) {
            this.contacto = contacto;
            return this;
        }

        public Builder setPreguntasFrecuentes(String preguntasFrecuentes) {
            this.preguntasFrecuentes = preguntasFrecuentes;
            return this;
        }

        public Builder setPoliticaPrivacidad(String politicaPrivacidad) {
            this.politicaPrivacidad = politicaPrivacidad;
            return this;
        }

        public Builder setTerminosCondiciones(String terminosCondiciones) {
            this.terminosCondiciones = terminosCondiciones;
            return this;
        }

        public Builder setTituloInicio(String tituloInicio) {
            this.tituloInicio = tituloInicio;
            return this;
        }

        public Builder setTituloNosotros(String tituloNosotros) {
            this.tituloNosotros = tituloNosotros;
            return this;
        }

        public Builder setTituloServicios(String tituloServicios) {
            this.tituloServicios = tituloServicios;
            return this;
        }

        public Builder setTituloTestimonios(String tituloTestimonios) {
            this.tituloTestimonios = tituloTestimonios;
            return this;
        }

        public Builder setTituloGaleria(String tituloGaleria) {
            this.tituloGaleria = tituloGaleria;
            return this;
        }

        public Builder setTituloContacto(String tituloContacto) {
            this.tituloContacto = tituloContacto;
            return this;
        }

        public Builder setTituloFaq(String tituloFaq) {
            this.tituloFaq = tituloFaq;
            return this;
        }

        public Builder setTituloPoliticaPrivacidad(String tituloPoliticaPrivacidad) {
            this.tituloPoliticaPrivacidad = tituloPoliticaPrivacidad;
            return this;
        }

        public Builder setTituloTerminosCondiciones(String tituloTerminosCondiciones) {
            this.tituloTerminosCondiciones = tituloTerminosCondiciones;
            return this;
        }

        // Método para construir la instancia de DatosSecciones
        public DatosSecciones build() {
            return new DatosSecciones(this);
        }
    }

}
