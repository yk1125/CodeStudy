<!-- app/view/news/list.tpl -->
<!DOCTYPE html>
<html>
  <head>
    <title>Hacker News</title>
    <link rel="stylesheet" href="/public/css/news.css" type="text/css" />
  </head>
  <body>
    <ul class="news-view view">
      {% for item in list %}
      <li class="item">
        <a href="{{ item.url }}">{{ item.title }}</a>
        {% if item.time %}
        <span class="time">{{ helper.relativeTime(item.time) }}</span>
        {% endif %}
      </li>
      {% endfor %}
    </ul>
  </body>
</html>
