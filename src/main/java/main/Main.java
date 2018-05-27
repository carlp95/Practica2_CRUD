package main;

import clases.Estudiente;

import freemarker.template.Configuration;
import freemarker.template.Template;
import spark.ModelAndView;

import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import static spark.Spark.*;

public class Main {

    public static void main(String[] args) {
        Configuration configuration = new Configuration(Configuration.VERSION_2_3_28);
        configuration.setClassForTemplateLoading(Main.class, "/templates");


        ArrayList<Estudiente> listaEstudiantes = new ArrayList<>();
        get("/",(request, response) -> {
           Map<String, Object> atributos = new HashMap<>();
            StringWriter escritorArchivo = new StringWriter();
            Template plantilla = configuration.getTemplate("home.ftl");
            atributos.put("estudiantes", listaEstudiantes);

            plantilla.process(atributos, escritorArchivo);

           return escritorArchivo;
        });
    }
}
