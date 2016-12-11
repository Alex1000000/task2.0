package ru.ncedu.lab;

import de.umass.lastfm.Album;
import de.umass.lastfm.Track;
import javafx.application.Application;
import de.umass.lastfm.Artist;
import java.util.Collection;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;


import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/**
 * Created by alef0913 on 17.10.2016.
 */

@Controller
public class SimpleController {
//    private static final Logger log = LoggerFactory.getLogger(Application.class);
//    @RequestMapping("/env")
//    public String getAllEnvVariables(Map<String, Object> model){
//        model.put("env", System.getenv());
//        return "env_all";
//    }
//
//    @RequestMapping("/env/{paramname}")
//    public String getEnvVariable(@PathVariable String paramname, Map<String, Object> model){
//        model.put("value", System.getenv().get(paramname));
//        return "/WEB-INF/views/env_one.jsp";
//    }

//        @RequestMapping(value = {"/factsAboutNum/"}, method = RequestMethod.GET)
//    public String getFactsAboutNum(@RequestParam(value = "expr", required = false) String expr, Map<String, Object> model) {
//        if (expr == null){// || expr.isEmpty()) {
//            return "facts";
//        }
//
//        try {
//            model.put("expr", expr);
//
//
//            model.put("res", (int) 5);
//            model.put("facts", "---");
//        } catch (Exception e) {
//            e.printStackTrace();
//            model.put("invalid", expr.toString() + " Incorrect expression format!");
//            return "invalid";
//        }
//        return "facts";
//    }
//
//    @RequestMapping(value = {"/getMusicInfo/"}, method = RequestMethod.GET)
//    public String getMusicInfo(@RequestParam(value = "expr", required = false) String expr, Map<String, Object> model) {
//        if (expr == null|| expr.isEmpty()) {
//            return "env_all";
//        }
//
//        try {
//
////            String key = "b25b959554ed76058ac220b7b2e0a026"; //this is the key used in the Last.fm API examples
////            String user = "JRoar";
////            Chart<Artist> chart = User.getWeeklyArtistChart(user, 10, key);
////            DateFormat format = DateFormat.getDateInstance();
////            String from = format.format(chart.getFrom());
////            String to = format.format(chart.getTo());
////            System.out.printf("Charts for %s for the week from %s to %s:%n", user, from, to);
////            Collection<Artist> artists = chart.getEntries();
////            for (Artist artist : artists) {
////                System.out.println(artist.getName());
////            }
//
//            model.put("expr", expr);
//            model.put("res", (int) 5);
//            model.put("facts", "---");
//        } catch (Exception e) {
//            e.printStackTrace();
//            model.put("invalid", expr.toString() + " Incorrect expression format!");
//            return "env_all";
//        }
//        return "music_info_one";
//    }


//
//    @RequestMapping(value = {"/getMusicInfoFromApi"}, method = RequestMethod.GET)
//    public String ModelAndView(@RequestParam(value = "expr", required = false) String expr, Map<String, Object> model) {
//
//        if (expr == null|| expr.isEmpty()) {
//            return "music_info_two";
//        }
//        return "music_info_two";
//    }
//
//    @RequestMapping(value = {"/postMusicInfoFromApi"}, method = RequestMethod.POST)
//           // , produces={"application/json","application/xml"}, consumes="text/html")
//    public String postToMusicApi(@RequestParam(value = "expr", required = false) String expr, Map<String, Object> model) {
//
//        model.put("expr", expr);
//
//        return "redirect: http://ws.audioscrobbler.com/2.0/?method=artist.getinfo&artist="+"Patrick"+"&api_key=6560bd474266c81a2bc8148d00676f8a";
//        //return "redirect: http://ws.audioscrobbler.com/2.0/?method=track.getInfo&api_key=6560bd474266c81a2bc8148d00676f8a&artist=cher&track=believe&format=xml";
//        //return "music_info_from_api";
//    }

    @RequestMapping(value = "/postSearchTrakInfo", method = {RequestMethod.POST,  RequestMethod.GET})
    public String postGetInfo(@RequestParam( required = false) String artistName, String trackName, Map<String, Object> model) {

        String key = "6560bd474266c81a2bc8148d00676f8a";
        //System.out.println("Let's try to get bands that sound like Tequilajazzz");
        Track track_inf = Track.getInfo(artistName, trackName, key);
        Artist artistInfo = Artist.getInfo(artistName, key);
        //Artist tezz = Artist.getInfo(expr, key);
        //System.out.println("Tezz itself: " + tezz);
        //System.out.println("\nThose who play similar music:");
        String album = track_inf.getAlbum();
        String fmInfo = track_inf.toString();//  getLastFmInfo(key);
        model.put("trackAlbum", album);
        model.put("fmInfo", fmInfo);
        model.put("trackName", trackName);
        model.put("artistName", artistName);
        String words = track_inf.getWikiSummary();
        model.put("words", words);
        String someAbout = track_inf.getWikiText();
        model.put("someAbout", someAbout);
        Album albumInfMore = Album.getInfo(artistName,album,key);
        List<String> trackNames = new LinkedList<String>();
        Collection<Track> tracksInAlbum= albumInfMore.getTracks();
        for (Track trackOne:tracksInAlbum) {
            System.out.println("  * " + trackOne.getName());
            trackNames.add(trackOne.getName() );
        }
        model.put("trackNames", trackNames);
        //model.put("simi", simi);


        System.out.println("  * " + artistName + "  " + trackName);
        System.out.println("  * " + fmInfo + "  " + album);
        //return "redirect: http://ws.audioscrobbler.com/2.0/?method=artist.getinfo&artist="+expr+"&api_key=6560bd474266c81a2bc8148d00676f8a";
        //return "redirect: http://ws.audioscrobbler.com/2.0/?method=track.getInfo&api_key=6560bd474266c81a2bc8148d00676f8a&artist=cher&track=believe&format=xml";
        return "trackInfo";
    }


        @RequestMapping(value = "/postSearchMusicInfoFromApi", method = RequestMethod.POST)
    public String postSearchToMusicApi(@RequestParam(value = "expr", required = false) String expr, Map<String, Object> model) {

        String key = "6560bd474266c81a2bc8148d00676f8a";
        //System.out.println("Let's try to get bands that sound like Tequilajazzz");
        Artist artistInfo = Artist.getInfo(expr, key);
        //System.out.println("Tezz itself: " + tezz);
        //System.out.println("\nThose who play similar music:");
        Collection<Artist> likeArtist = artistInfo.getSimilar();
        List<String> simi = new LinkedList<String>();
        for (Artist band:likeArtist) {
            System.out.println("  * " + band.getName());
            simi.add(band.getName());
        }
        String infAbout = artistInfo.getWikiSummary();
            List<String> artistTags= (List<String>) artistInfo.getTags();
        model.put("expr", expr);
            model.put("infAbout", infAbout);
        model.put("simi", simi);
            model.put("artistTags", artistTags);



        System.out.println("  * " + expr);
        //return "redirect: http://ws.audioscrobbler.com/2.0/?method=artist.getinfo&artist="+expr+"&api_key=6560bd474266c81a2bc8148d00676f8a";
        //return "redirect: http://ws.audioscrobbler.com/2.0/?method=track.getInfo&api_key=6560bd474266c81a2bc8148d00676f8a&artist=cher&track=believe&format=xml";
        return "music_info_from_api";



    }


}
