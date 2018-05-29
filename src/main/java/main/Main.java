package main;

import clases.Estudiente;

import freemarker.template.Configuration;

import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import static spark.Spark.*;

public class Main {

    public static void main(String[] args) {

        Configuration configuration = new Configuration(Configuration.VERSION_2_3_26);
        configuration.setClassForTemplateLoading(Main.class, "/templates");
        FreeMarkerEngine freemarkerEngine = new FreeMarkerEngine(configuration);

        ArrayList<Estudiente> listaEstudiantes = new ArrayList<>();

        get("/",(request, response) -> {
           Map<String, Object> atributos = new HashMap<>();
            atributos.put("titulo","Información Genneral");
            atributos.put("estudiantes", listaEstudiantes);

           return new ModelAndView(atributos,"home.ftl");
        },freemarkerEngine);

        get("/agregarEstudiante",(request,response)->{
            Map<String, Object> atributos = new HashMap<>();
            atributos.put("titulo","Agregar Estudiante");
            return new ModelAndView(atributos,"agregarEst.ftl");
        },freemarkerEngine);

        post("/guardar",(request, response) -> {
            int matricula = Integer.parseInt(request.queryParams("matricula"));
            String nombre = request.queryParams("nombre");
            String apellido = request.queryParams("apellido");
            String telefono = request.queryParams("telefono");
            //Map<String, Object> atributos = new HashMap<>();
            listaEstudiantes.add(new Estudiente(matricula,nombre,apellido,telefono));
            //atributos.put("estudiantes",listaEstudiantes);
            response.redirect("/");

            return null;
        },freemarkerEngine);
    }
}
