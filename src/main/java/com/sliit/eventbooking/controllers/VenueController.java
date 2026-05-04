package com.sliit.eventbooking.controllers;

import com.sliit.eventbooking.models.Venue;
import com.sliit.eventbooking.utils.FileHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Controller
public class VenueController {

    @GetMapping("/admin/add-venue")
    public String showAddVenueForm() {
        return "admin-add-venue";
    }

    @PostMapping("/admin/add-venue")
    public String addVenue(
            @RequestParam("locationName") String locationName,
            @RequestParam("capacity") int capacity,
            @RequestParam("pricePerHour") double pricePerHour) {

        String venueId = UUID.randomUUID().toString();
        Venue venue = new Venue(venueId, locationName, capacity, pricePerHour);

        FileHandler.saveRecord("venues.txt", venue.toFileString());

        return "redirect:/venues";
    }

    @GetMapping("/venues")
    public String showVenues(Model model) {
        List<String> venueRecords = FileHandler.readAllRecords("venues.txt");
        List<Venue> venues = new ArrayList<>();

        for (String record : venueRecords) {
            String[] parts = record.split(",");
            if (parts.length == 4) {
                try {
                    String venueId = parts[0];
                    String locationName = parts[1];
                    int capacity = Integer.parseInt(parts[2]);
                    double pricePerHour = Double.parseDouble(parts[3]);
                    venues.add(new Venue(venueId, locationName, capacity, pricePerHour));
                } catch (NumberFormatException e) {
                    System.err.println("Error parsing venue record: " + record);
                }
            }
        }

        model.addAttribute("venues", venues);
        return "venues";
    }

    @GetMapping("/admin/manage-venues")
    public String manageVenues(Model model) {
        List<String> venueRecords = FileHandler.readAllRecords("venues.txt");
        List<Venue> venues = new ArrayList<>();

        for (String record : venueRecords) {
            String[] parts = record.split(",");
            if (parts.length == 4) {
                try {
                    String venueId = parts[0];
                    String locationName = parts[1];
                    int capacity = Integer.parseInt(parts[2]);
                    double pricePerHour = Double.parseDouble(parts[3]);
                    venues.add(new Venue(venueId, locationName, capacity, pricePerHour));
                } catch (NumberFormatException e) {
                    System.err.println("Error parsing venue record: " + record);
                }
            }
        }

        model.addAttribute("venues", venues);
        return "admin-manage-venues";
    }
}
