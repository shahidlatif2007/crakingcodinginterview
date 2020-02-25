# crakingcodinginterview
Solutions for Cracking the Coding Interview problems on Hacker rank in swift

# NYTimes

This application shows most popular articles from NY times. User can filter by Day, Week and Month. The projct is build using Xcode  11.3.1 and Swift 5. I have not used any external library while buiding this application. This application is build using **MVVM** Architecture.


# Application Structure

- Configurations
- Network
- Storyboads
- View Controllers
- Views
- Model
- Repository
- Extensions
- Helpers

* **Configurations**:

This contains configuration for different schemes. It has Development, Staging and productions. Each build has different app id, app name and application url. It has following schemes.

- NYTDemo-Development
- NYTDemo-Staging
- NYTDemo-Production

* **Storyboads**:

Storyboard which is being used in the code are placed here.

* **Network**:

This section covers handling of network requests.

* **Storyboads**:

This contains LaunchScreen.story and Main.storyboard.

* View Controllers:

There two view controllers. ArticlesViewController contains list of article coming from NYT api. User can click on filter button to filter by Day, Week and Month.

* **Views**: 

This section contain only 1 class which is ArticleTableViewCell. This class is used for table view in ArticlesViewController.

* **Model**


* Extension

# Application Screenshots

* Splash Screen

![splash](https://user-images.githubusercontent.com/2598508/75237534-f26cf200-57d8-11ea-9d2e-1e12c0af6798.png)

* Home Screen

![Home](https://user-images.githubusercontent.com/2598508/75229839-2261c880-57cc-11ea-9e1e-a7d6f2dce0ea.png)

* Detail Screen

![Detail](https://user-images.githubusercontent.com/2598508/75229943-5b01a200-57cc-11ea-9dd7-3d67b757dd2e.png)

