package main;

import clases.Estudiante;

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

        ArrayList<Estudiante> listaEstudiantes = new ArrayList<>();

        get("/",(request, response) -> {
           Map<String, Object> atributos = new HashMap<>();
            atributos.put("titulo","Información General");
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
            listaEstudiantes.add(new Estudiante(matricula,nombre,apellido,telefono));
            //atributos.put("estudiantes",listaEstudiantes);
            response.redirect("/");

            return null;
        },freemarkerEngine);

        get("/editarEstudiante/:matricula",(request,response)->{
            Map<String, Object> atributos = new HashMap<>();
            atributos.put("titulo", "Editar Estudiante");
            for(Estudiante es: listaEstudiantes){
                if(es.getMatricula() == Integer.parseInt(request.params("matricula"))){
                    atributos.put("estudiante",es);
                }
            }

            return new ModelAndView(atributos,"editar.ftl");

        }, freemarkerEngine);

        post("/editarEstudiante/actualizar",(request,response) -> {
            int matricula = Integer.parseInt(request.queryParams("matricula"));
            String nombre = request.queryParams("nombre");
            String apellido = request.queryParams("apellido");
            String telefono = request.queryParams("telefono");

            for (Estudiante es: listaEstudiantes) {
                if(es.getMatricula() == Integer.parseInt(request.queryParams("matricula"))){
                    es.setNombre(request.queryParams("nombre"));
                    es.setApellido(request.queryParams("apellido"));
                    es.setTelefono(request.queryParams("telefono"));
                }
            }

            response.redirect("/");

            return null;
        },freemarkerEngine);

        get("/verEstudiante/:matricula",(request,response) ->{
            Map<String, Object> atributos = new HashMap<>();
            atributos.put("titulo","Información del Estudiante");
            for(Estudiante es: listaEstudiantes){
                if(es.getMatricula() == Integer.parseInt(request.params("matricula"))){
                    atributos.put("estudiante", es);
                }
            }
            return new ModelAndView(atributos,"infoEstudiante.ftl");
        },freemarkerEngine);

        get("/borrarEstudiante/:matricula",(request,response) ->{
            Map<String,Object> atributos = new HashMap<>();
            atributos.put("titulo","Elimnar Estudiante");
            for(Estudiante es: listaEstudiantes){
                if(es.getMatricula() == Integer.parseInt(request.params("matricula"))){
                    atributos.put("estudiante", es);
                }
            }
            return new ModelAndView(atributos,"eliminar.ftl");
        },freemarkerEngine);

        post("/eliminarEstudiante/:matricula", (request,response) ->{
            System.out.println(request.queryParams("matricula"));
            /*for(Estudiante es: listaEstudiantes){
                if(es.getMatricula() == matricula){
                    listaEstudiantes.remove(es);
                }
            }*/
                response.redirect("/");
            return null;
        },freemarkerEngine);
    }
}
