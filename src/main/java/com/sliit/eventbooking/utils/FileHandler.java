package com.sliit.eventbooking.utils;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class FileHandler {

    // 1. A constant string pointing to the DataFiles/ directory path.
    private static final String DATA_DIR = "DataFiles/";

    /**
     * 2. A method to append a new line of text to a specific file.
     * It creates the file (and directory) if it does not exist.
     */
    public static void saveRecord(String fileName, String data) {
        File directory = new File(DATA_DIR);
        if (!directory.exists()) {
            directory.mkdirs();
        }

        File file = new File(DATA_DIR + fileName);
        try (BufferedWriter bw = new BufferedWriter(new FileWriter(file, true))) {
            bw.write(data);
            bw.newLine();
        } catch (IOException e) {
            System.err.println("Error writing to file " + fileName + ": " + e.getMessage());
            e.printStackTrace();
        }
    }

    /**
     * 3. A method that reads a file and returns all lines as a List of Strings.
     */
    public static List<String> readAllRecords(String fileName) {
        List<String> records = new ArrayList<>();
        File file = new File(DATA_DIR + fileName);
        
        if (!file.exists()) {
            return records; // Return empty list if file doesn't exist
        }

        try (BufferedReader br = new BufferedReader(new FileReader(file))) {
            String line;
            while ((line = br.readLine()) != null) {
                records.add(line);
            }
        } catch (IOException e) {
            System.err.println("Error reading from file " + fileName + ": " + e.getMessage());
            e.printStackTrace();
        }
        return records;
    }
}
