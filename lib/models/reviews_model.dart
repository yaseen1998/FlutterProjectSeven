class Review {
  String name;
  String description;
  String date;
  Review({
    this.name = "null",
    this.description = "null",
    this.date = "null",
  });
}

final List<Review> reviews = [
  Review(
    name: "Ebaa",
    description:
        "The app is great! It really does make learning more fun and easy. However, after the last update most male voices have no sound for unknown reasons.",
    date: "Yesterday",
  ),
  Review(
    name: "Rawan",
    description: "Generally very good, and considerably improved from a few years ago. Ads in the free version long and annoying. Sometimes the difficulty level of an exercise seems arbitrary.",
    date: "Today",
  ),
  Review(
    name: "Moaweah Dwair",
    description:
        "Easy to use and works!! Keeps my brain active 👍 slight competitive element with the 'leagues' & 'challenges'.",
    date: "Today",
  ),
  Review(
    name: "Yasseen",
    description:
        "Really fun, easy and effective app in general. However, there are annoying bugs in the app like the mic. It doesn't recognize most things you say unless you're shouting really slowly.",
    date: "2 Days ago",
  ),
  Review(
    name: "Shaker",
    description:
        "I've completed my first month learning Italian, I'm shocked at my progress. I've never picked up languages, I did formal classes in hs and college and dropped out or got poor grades.",
    date: "Today",
  ),
];
