package com.daw.longway;

import java.util.ResourceBundle;
import java.util.Timer;
import java.util.TimerTask;

/**
 * La clase SingletonCache implementa el patrón Singleton para gestionar la 
 * caché de datos secciones de la aplicación. Esta clase asegura que solo 
 * haya una instancia de SingletonCache y permite el acceso global a los datos 
 * almacenados. 
 */
public class SingletonCache {

    // Instancia única de SingletonCache
    private static SingletonCache instance; 
    // Almacena los datos de secciones
    private DatosSecciones datosSecciones;
    // Almacena el ResourceBundle para acceder a recursos de configuración
    private ResourceBundle resourceBundle;
    
    /**
     * Constructor privado de SingletonCache. 
     * Carga los datos iniciales y comienza la actualización automática.
     */
    private SingletonCache() {
        cargarDatos();
        iniciarActualizacionAutomatica();
    }
    
    /**
     * Método estático para obtener la instancia única de SingletonCache.
     * 
     * @return instancia de SingletonCache
     */
    public static SingletonCache getInstance() {
        if (instance == null) {
            instance = new SingletonCache();
        }
        return instance;
    }

    /**
     * Método para obtener el ResourceBundle actual.
     * 
     * @return ResourceBundle con los datos de configuración
     */
    public ResourceBundle getResourceBundle() {
        return resourceBundle;
    }

    /**
     * Método para establecer un nuevo ResourceBundle.
     * 
     * @param resourceBundle ResourceBundle a establecer
     */
    public void setResourceBundle(ResourceBundle resourceBundle) {
        this.resourceBundle = resourceBundle;
    }

    /**
     * Método para obtener los datos de secciones.
     * 
     * @return instancia de DatosSecciones con la información actual
     */
    public DatosSecciones getDatosSecciones() {
        return datosSecciones;
    }

    /**
     * Método para establecer nuevos datos de secciones.
     * 
     * @param datosSecciones instancia de DatosSecciones a establecer
     */
    public void setDatosSecciones(DatosSecciones datosSecciones) {
        this.datosSecciones = datosSecciones;
    }
    
    /**
     * Método privado que carga los datos de configuración desde el ResourceBundle.
     * Crea una nueva instancia de DatosSecciones utilizando el Builder y
     * establece los valores desde el ResourceBundle.
     */
    private void cargarDatos() {
        // Carga el ResourceBundle que contiene los datos de secciones
        resourceBundle = ResourceBundle.getBundle("datosSecciones");
        
        // Crea un nuevo objeto DatosSecciones usando el Builder
        DatosSecciones datos = new DatosSecciones.Builder()
                .setInicio(resourceBundle.getString("inicio"))
                .setSobreNosotros(resourceBundle.getString("sobreNosotros"))
                .setServicios(resourceBundle.getString("servicios"))
                .setTestimonios(resourceBundle.getString("testimonios"))
                .setGaleria(resourceBundle.getString("galeria"))
                .setContacto(resourceBundle.getString("contacto"))
                .setPreguntasFrecuentes(resourceBundle.getString("preguntasFrecuentes"))
                .setPoliticaPrivacidad(resourceBundle.getString("politicaPrivacidad"))
                .setTerminosCondiciones(resourceBundle.getString("terminosCondiciones"))
                .setTituloInicio(resourceBundle.getString("TituloInicio"))
                .setTituloNosotros(resourceBundle.getString("TituloNosotros"))
                .setTituloServicios(resourceBundle.getString("TituloServicios"))
                .setTituloTestimonios(resourceBundle.getString("TituloTestimonios"))
                .setTituloGaleria(resourceBundle.getString("TituloGaleria"))
                .setTituloContacto(resourceBundle.getString("TituloContacto"))
                .setTituloFaq(resourceBundle.getString("TituloFaq"))
                .setTituloPoliticaPrivacidad(resourceBundle.getString("TituloPoliticaPrivacidad"))
                .setTituloTerminosCondiciones(resourceBundle.getString("TituloTerminosCondiciones"))
                .build();
        
        // Asigna la nueva instancia de DatosSecciones a la variable de clase
        this.datosSecciones = datos;
    }
    
    /**
     * Método privado que inicia la actualización automática de los datos de secciones.
     * Se configura un Timer que ejecuta la carga de datos cada 4 minutos.
     */
    private void iniciarActualizacionAutomatica() {
        Timer timer = new Timer();
        timer.schedule(new TimerTask() {
            @Override
            public void run() {
                cargarDatos(); // Actualiza los datos automáticamente
            }
        }, 0, 4 * 60 * 1000); // Intervalo de 4 minutos
    }
}
