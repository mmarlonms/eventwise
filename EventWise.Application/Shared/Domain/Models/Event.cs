public class Event
{
    public int EventId { get; set; }
    public string Name { get; set; }
    public DateTime DateTime { get; set; }
    public string Location { get; set; }
    public ICollection<Ticket> Tickets { get; set; }
    public ICollection<Participant> Participants { get; set; }
    public ICollection<Speaker> Speakers { get; set; }
    public ICollection<Sponsor> Sponsors { get; set; }
}

public class Ticket
{
    public int TicketId { get; set; }
    public string Type { get; set; }
    public decimal Price { get; set; }
    public int Quantity { get; set; }
    public int EventId { get; set; }
    public Event Event { get; set; }
}

public class Participant
{
    public int ParticipantId { get; set; }
    public string Name { get; set; }
    public string Email { get; set; }
    public string TicketType { get; set; }
    public bool PaymentStatus { get; set; }
    public int EventId { get; set; }
    public Event Event { get; set; }
}

public class Speaker
{
    public int SpeakerId { get; set; }
    public string Name { get; set; }
    public string Biography { get; set; }
    public string Photo { get; set; }
    public ICollection<Event> Events { get; set; }
}

public class Sponsor
{
    public int SponsorId { get; set; }
    public string Name { get; set; }
    public string Logo { get; set; }
    public string SponsorshipLevel { get; set; }
    public ICollection<Event> Events { get; set; }
}

public class User
{
    public int UserId { get; set; }
    public string Name { get; set; }
    public string Email { get; set; }
    public string Password { get; set; }
    public string Permissions { get; set; }
    public ICollection<Event> Events { get; set; }
}
