<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">

    <title>Habuma Cloud</title>
    <link rel="stylesheet" href="/resources/stylesheets/screen.css" media="screen">

    <!-- These are Open Graph tags.  They add meta data to your  -->
    <!-- site that facebook uses when your content is shared     -->

    <!-- over facebook.  You should fill these tags in with      -->
    <!-- your data.  To learn more about Open Graph, visit       -->
    <!-- 'https://developers.facebook.com/docs/opengraph/'       -->
    <meta property="og:title" content=""/>
    <meta property="og:type" content=""/>
    <meta property="og:url" content=""/>
    <meta property="og:image" content=""/>
    <meta property="og:site_name" content=""/>
    <meta property="fb:app_id" content="196716743732591" />

    <script>
      function popup(pageURL, title,w,h) {
        var left = (screen.width/2)-(w/2);
        var top = (screen.height/2)-(h/2);
        var targetWin = window.open(
          pageURL,
          title,
          'toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no, width='+w+', height='+h+', top='+top+', left='+left
          );
      }
    </script>
    <!--[if IE]>
      <script>
        var tags = ['header', 'section'];
        while(tags.length)
          document.createElement(tags.pop());
      </script>
    <![endif]-->
  </head>
  <body>
    <header class="clearfix">
      <p id="picture" style="background-image: url(https://graph.facebook.com/me/picture?type=normal&access_token=AAACy6aZBhrW8BAM93cgf1yAEYJ31UiVutKer3m8nwvKZBkKxJP49YBCnqD5G3zZA9f3BID0QSWky0zlowGkmzQEblU7Vm2hiupGLNUDzAZDZD)"></p>
      <div>
        <h1>Hello, <strong><c:out value="${user.name}" /></strong></h1>

        <p class="tagline">
          This is your app
          <a href="http://www.facebook.com/apps/application.php?id=196716743732591">Habuma Cloud</a>
        </p>
        <div id="share-app">
          <p>Share your app:</p>
          <ul>
            <li>

              <a href="#" class="facebook-button" onclick="popup('https://www.facebook.com/dialog/feed?redirect_uri=https://habumacloud.herokuapp.com/close&display=popup&app_id=196716743732591', 'Post to Wall', 580, 400);">
                <span class="plus">Post to Wall</span>
              </a>
            </li>
            <li>
              <a href="#" class="facebook-button speech-bubble" onclick="popup('https://www.facebook.com/dialog/send?redirect_uri=https://habumacloud.herokuapp.com/close&display=popup&app_id=196716743732591&link=https://habumacloud.herokuapp.com/', 'Send', 580, 400);">
                <span class="speech-bubble">Send to Friends</span>
              </a>

            </li>
          </ul>
        </div>
      </div>
    </header>
    <section id="get-started">
      <p>Welcome to your Facebook app, running on <span>CloudFoundry</span>!</p>
      <a href="http://devcenter.heroku.com/articles/facebook" class="button">Learn How to Edit This App</a>
    </section>

    <section id="samples" class="clearfix">
      <h1>Examples of the Facebook Graph API</h1>

      <div class="list">

        <h3>A few of your friends</h3>
        <ul class="friends">
		<c:forEach items="${friends}" var="friend">
            <li>
              <a href="#" onclick="window.open('http://www.facebook.com/<c:out value="${friend.id}"/>')">
                <img src="https://graph.facebook.com/<c:out value="${friend.id}"/>/picture?type=square" alt="<c:out value="${friend.name}"/>">
                <c:out value="${friend.name}"/>
              </a>
            </li>
		</c:forEach>
        </ul>
      </div>

      <div class="list inline">
        <h3>Recent photos</h3>
        <ul class="photos"> 
		<c:forEach items="${photos}" var="photo" varStatus="status">
            <li style='background-image: url(<c:out value="${photo.icon}"/>)' class='${((status.count - 1) % 4 == 0)?"first-column":""}'>
              <a href="#" onclick="window.open('http://www.facebook.com/<c:out value="${photo.id}"/>')">
                <c:out value="${photo.name}"/>
              </a>
            </li>
		</c:forEach>
        </ul>
      </div>

      <div class="list">
        <h3>Things you like</h3>
        <ul class="things">
		<c:forEach items="${likes}" var="like">
            <li>
              <a href="#" onclick="window.open('http://www.facebook.com/<c:out value="${like.id}"/>')">
                <img src="https://graph.facebook.com/<c:out value="${like.id}"/>/picture?type=square" alt="<c:out value="${like.name}"/>">
                <c:out value="${like.name}"/>
              </a>
            </li>
		</c:forEach>
        </ul>
      </div>

      <div class="list">
        <h3>Friends using this app</h3>
        <ul class="friends">
          
        </ul>
      </div>
    </section>

    <section id="guides" class="clearfix">
      <h1>Learn More About CloudFoundry &amp; Facebook Apps</h1>
      <ul>
        <li>
          <a href="http://www.cloudfoundry.com/" class="icon heroku">CloudFoundry</a>
          <p>Learn more about <a href="http://www.cloudfoundry.com/">CloudFoundry</a>, or read developer docs in the CloudFoundry <a href="http://devcenter.heroku.com/">Dev Center</a>.</p>

        </li>
        <li>
          <a href="#" class="icon websites">Websites</a>
          <p>
            Drive growth and engagement on your site with
            Facebook Login and Social Plugins.
          </p>
        </li>
        <li>
          <a href="#" class="icon mobile-apps">Mobile Apps</a>

          <p>
            Integrate with our core experience by building apps
            that operate within Facebook.
          </p>
        </li>
        <li>
          <a href="#" class="icon apps-on-facebook">Apps on Facebook</a>
          <p>Let users find and connect to their friends in mobile apps and games.</p>
        </li>

      </ul>
    </section>
  </body>
</html>