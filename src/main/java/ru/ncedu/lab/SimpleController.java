package ru.ncedu.lab;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import de.umass.lastfm;

import java.util.Map;

/**
 * Created by alef0913 on 17.10.2016.
 */

@Controller
public class SimpleController {

    @RequestMapping("/env")
    public String getAllEnvVariables(Map<String, Object> model){
        model.put("env", System.getenv());
        return "env_all";
    }

    @RequestMapping("/env/{paramname}")
    public String getEnvVariable(@PathVariable String paramname, Map<String, Object> model){
        model.put("value", System.getenv().get(paramname));
        return "/WEB-INF/views/env_one.jsp";
    }

        @RequestMapping(value = {"/factsAboutNum/"}, method = RequestMethod.GET)
    public String getFactsAboutNum(@RequestParam(value = "expr", required = false) String expr, Map<String, Object> model) {
        if (expr == null){// || expr.isEmpty()) {
            return "facts";
        }

        try {
            model.put("expr", expr);


            model.put("res", (int) 5);
            model.put("facts", "---");
        } catch (Exception e) {
            e.printStackTrace();
            model.put("invalid", expr.toString() + " Incorrect expression format!");
            return "invalid";
        }
        return "facts";
    }

    @RequestMapping(value = {"/getMusicInfo/"}, method = RequestMethod.GET)
    public String getMusicInfo(@RequestParam(value = "expr", required = false) String expr, Map<String, Object> model) {
        if (expr == null|| expr.isEmpty()) {
            return "env_all";
        }

        try {

//            String key = "b25b959554ed76058ac220b7b2e0a026"; //this is the key used in the Last.fm API examples
//            String user = "JRoar";
//            Chart<Artist> chart = User.getWeeklyArtistChart(user, 10, key);
//            DateFormat format = DateFormat.getDateInstance();
//            String from = format.format(chart.getFrom());
//            String to = format.format(chart.getTo());
//            System.out.printf("Charts for %s for the week from %s to %s:%n", user, from, to);
//            Collection<Artist> artists = chart.getEntries();
//            for (Artist artist : artists) {
//                System.out.println(artist.getName());
//            }

            model.put("expr", expr);
            model.put("res", (int) 5);
            model.put("facts", "---");
        } catch (Exception e) {
            e.printStackTrace();
            model.put("invalid", expr.toString() + " Incorrect expression format!");
            return "music_info";
        }
        return "music_info";
    }


}