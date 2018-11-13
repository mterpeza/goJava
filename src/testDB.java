import DAO.EventDaoImp;
import Models.Event;

public class testDB {
    public static void main(String args[]) {
        Event event = new Event();

        event.setEventName("The Best Event Ever");
        event.setDate("12/31/2018");
        event.setStartTime("20:00");
        event.setEndTime("4 AM" );
        event.setEventDescription("Ring in the new year with us!");

        EventDaoImp eventDB = new EventDaoImp();

        eventDB.getConnection();

        eventDB.addEvent(event);

        event = (Event) eventDB.getAllEvents().get(0);

        eventDB.deleteEvent(event);
    }
}
