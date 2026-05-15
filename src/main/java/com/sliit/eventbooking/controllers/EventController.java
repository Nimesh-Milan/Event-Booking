package com.sliit.eventbooking.controllers;

import com.sliit.eventbooking.models.Event;
import com.sliit.eventbooking.services.EventMergeSort;
import com.sliit.eventbooking.utils.FileHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Controller
public class EventController {

    private final EventMergeSort eventMergeSort;

    @Autowired
    public EventController(EventMergeSort eventMergeSort) {
        this.eventMergeSort = eventMergeSort;
    }

    @GetMapping("/events")
    public String showEventsCatalog(Model model) {
        List<String> eventRecords = FileHandler.readAllRecords("events.txt");
        List<Event> events = new ArrayList<>();

        for (String record : eventRecords) {
            String[] parts = record.split(",");
            if (parts.length == 4) {
                try {
                    String eventId = parts[0];
                    String title = parts[1];
                    String date = parts[2];
                    int availableTickets = Integer.parseInt(parts[3]);
                    events.add(new Event(eventId, title, date, availableTickets));
                } catch (NumberFormatException e) {
                    System.err.println("Error parsing ticket count for event: " + record);
                }
            }
        }

        eventMergeSort.sort(events);
        model.addAttribute("events", events);

        return "events-catalog";
    }

    @GetMapping("/admin/manage-events")
    public String manageEvents(Model model) {
        List<String> eventRecords = FileHandler.readAllRecords("events.txt");
        List<Event> events = new ArrayList<>();

        for (String record : eventRecords) {
            String[] parts = record.split(",");
            if (parts.length == 4) {
                try {
                    String eventId = parts[0];
                    String title = parts[1];
                    String date = parts[2];
                    int availableTickets = Integer.parseInt(parts[3]);
                    events.add(new Event(eventId, title, date, availableTickets));
                } catch (NumberFormatException e) {
                    System.err.println("Error parsing ticket count for event: " + record);
                }
            }
        }

        model.addAttribute("events", events);
        return "admin-manage-events";
    }

    @GetMapping("/admin/add-event")
    public String showAddEventForm() {
        return "admin-add-event";
    }

    @PostMapping("/admin/add-event")
    public String addEvent(
            @RequestParam("title") String title,
            @RequestParam("date") String date,
            @RequestParam("availableTickets") int availableTickets) {

        // Generate a random eventId or you could format it like ev-009
        String eventId = "ev-" + UUID.randomUUID().toString().substring(0, 5);
        
        Event event = new Event(eventId, title, date, availableTickets);
        
        FileHandler.saveRecord("events.txt", event.toFileString());

        return "redirect:/admin/manage-events";
    }
}
