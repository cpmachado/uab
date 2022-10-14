---
layout: page
title: Categorias
permalink: /categorias
---

{% assign categories = site.data.categories %}
{% assign topCategories = categories | where: "top", true %}

List of Categories:
{% for category in topCategories %}
  {% assign tag = category.tag %}
  {% assign name = category.name %}
  {% assign archive = category.archive %}
  {% assign archiveUrl = archive | prepend: site.baseurl %}
  {% assign feedUrl = tag | append: ".xml" | prepend: "/feed/" | prepend: site.baseurl %}

  - [{{name}}]({{archiveUrl}}) -- [atom feed]({{feedUrl}})

  {% assign childCategories = categories | where: "parent", tag %}

  {% for category in childCategories %}
    {% assign tag = category.tag %}
    {% assign name = category.name %}
    {% assign archive = category.archive %}
    {% assign archiveUrl = archive | prepend: site.baseurl %}
    {% assign feedUrl = tag | append: ".xml" | prepend: "/feed/" | prepend: site.baseurl %}

    - [{{name}}]({{archiveUrl}}) -- [atom feed]({{feedUrl}})
  {% endfor %}
{% endfor %}
