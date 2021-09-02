namespace AllSpice.Models
{
  public class Recipe
  {
    public int Id { get; set; }
    public string Title { get; set; }
    public string Description { get; set; }
    public int CookTime { get; set; }
    public int PrepTime { get; set; }
    public string CreatorId { get; set; }
    public Profile Creator { get; set; }

    public string CreatedAt { get; set; }
    public string UpdatedAt { get; set; }



  }
}