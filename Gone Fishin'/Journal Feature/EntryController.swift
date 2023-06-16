//
//  EntryController.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/25/23.
//

import Foundation

class EntryController: ObservableObject {
    @Published var entries: [EntrySection] = []
    @Published var entryCount: Int = 0

    func createEntry (prompt: String, title: String, date: Date, desc: String) {
        let newEntry = EntrySection(prompt: prompt, title: title, date: date, stanza: desc)
        entries.append(newEntry)
        save()
    }
    
    func save() {
        DirectoryService.writeModelToDisk(entries)
    }
    
    func load() {
        self.entries = DirectoryService.readModelFromDisk()
    }

    func deleteEntry(at index: Int) {
        entries.remove(at: index)
    }
    
    func updateEntry(entry: EntrySection, desc: String) {
        if let index = entries.firstIndex(of: entry) {
            var entry = entries[index]
            entry.stanza = desc
            
            entries[index] = entry
        }
    }
    
    func countEntries(entries: [EntrySection]) -> Int {
        return entries.count;
    }
    
    func listAllEntries() {
        print(self.entries);
    }
    
    init() {
        load()
    }
    
    
}
