package com.ellens.event.controller;

import com.ellens.event.model.Event;
import com.ellens.event.service.EventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

@RestController
public class EventController {

    @Autowired
    private EventService eventService;

    @PostMapping("/addEvent")
    public Event addEvent(@RequestBody Event event){
        return eventService.addEvent(event);
    }

    @DeleteMapping("/deleteById")
    public Event deleteById(@RequestParam int eventId){
        return eventService.deleteById(eventId);
    }

    @PutMapping("/updateEvent")
    public Event updateEvent(@RequestBody Event event){
        return eventService.updateEvent(event);
    }

    @GetMapping("/findById/{id}")
    public Event findById(@PathVariable String id){
        return eventService.findById(Integer.parseInt(id));
    }

    @GetMapping("findAllEvents")
    public List<Event> findAllEvents(){
        return eventService.findAllEvents();
    }
}
