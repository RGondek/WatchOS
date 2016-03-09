//
//  ComplicationController.swift
//  Watch_01 WatchKit Extension
//
//  Created by Rubens Gondek on 3/2/16.
//  Copyright © 2016 Gondek. All rights reserved.
//

import ClockKit


class ComplicationController: NSObject, CLKComplicationDataSource {
    
    // MARK: - Timeline Configuration
    
    let timeLineText = ["Oatmeal Stout at Booth 212", "Porter at Booth 432", "Pale Ale at Booth 232", "English Bitter at Booth 327"]
    
    func getSupportedTimeTravelDirectionsForComplication(complication: CLKComplication, withHandler handler: (CLKComplicationTimeTravelDirections) -> Void) {
        handler([.Forward])
    }
    
    func getTimelineStartDateForComplication(complication: CLKComplication, withHandler handler: (NSDate?) -> Void) {
        handler(NSDate())
    }
    
    func getTimelineEndDateForComplication(complication: CLKComplication, withHandler handler: (NSDate?) -> Void) {
        handler(NSDate().dateByAddingTimeInterval(NSTimeInterval(4*60*60)))
    }
    
    func getPrivacyBehaviorForComplication(complication: CLKComplication, withHandler handler: (CLKComplicationPrivacyBehavior) -> Void) {
        handler(.ShowOnLockScreen)
    }
    
    // MARK: - Timeline Population
    
    func getCurrentTimelineEntryForComplication(complication: CLKComplication, withHandler handler: ((CLKComplicationTimelineEntry?) -> Void)) {
        // Call the handler with the current timeline entry
        if complication.family == .ModularLarge {
            let dF = NSDateFormatter()
            dF.dateFormat = "HH:mm"
            
            let time = dF.stringFromDate(NSDate())
            
            let entry = createTimelineEntry(time, bodyText: timeLineText[0], date: NSDate())
            
            handler(entry)
        }
        else {
            handler(nil)
        }
    }
    
    func getTimelineEntriesForComplication(complication: CLKComplication, beforeDate date: NSDate, limit: Int, withHandler handler: (([CLKComplicationTimelineEntry]?) -> Void)) {
        // Call the handler with the timeline entries prior to the given date
        handler(nil)
    }
    
    func getTimelineEntriesForComplication(complication: CLKComplication, afterDate date: NSDate, limit: Int, withHandler handler: (([CLKComplicationTimelineEntry]?) -> Void)) {
        // Call the handler with the timeline entries after to the given date
        var timelineEntryArray = [CLKComplicationTimelineEntry]()
        var nextDate = NSDate().dateByAddingTimeInterval(1 * 60 * 60)
        
        for index in 1...3 {
            
            let dF = NSDateFormatter()
            dF.dateFormat = "HH:mm"
            
            let time = dF.stringFromDate(NSDate())
            
            let entry = createTimelineEntry(time, bodyText: timeLineText[index], date: nextDate)
            
            timelineEntryArray.append(entry)
            
            nextDate = nextDate.dateByAddingTimeInterval(1*60*60)
        }
        
        handler(timelineEntryArray)
    }
    
    func createTimelineEntry(headerText: String, bodyText: String, date: NSDate) -> CLKComplicationTimelineEntry {
        let template = CLKComplicationTemplateModularLargeStandardBody()
        
        template.headerImageProvider = CLKImageProvider(onePieceImage: UIImage(named: "beer_glass")!)
        template.headerTextProvider = CLKSimpleTextProvider(text: headerText)
        template.body1TextProvider = CLKSimpleTextProvider(text: bodyText)
        
        let entry = CLKComplicationTimelineEntry(date: date, complicationTemplate: template)
        
        return(entry)
    }
    
    // MARK: - Update Scheduling
    
    func getNextRequestedUpdateDateWithHandler(handler: (NSDate?) -> Void) {
        // Call the handler with the date when you would next like to be given the opportunity to update your complication content
        handler(nil);
    }
    
    // MARK: - Placeholder Templates
    
    func getPlaceholderTemplateForComplication(complication: CLKComplication, withHandler handler: (CLKComplicationTemplate?) -> Void) {
        // This method will be called once per supported complication, and the results will be cached
        let template = CLKComplicationTemplateModularLargeStandardBody()
        
        template.headerImageProvider = CLKImageProvider(onePieceImage: UIImage(named: "beer_glass")!)
        template.headerTextProvider = CLKSimpleTextProvider(text: "Beer Festival")
        template.body1TextProvider = CLKSimpleTextProvider(text: "Beer Tasting Schedule")
        
        handler(template)
    }
    
}
