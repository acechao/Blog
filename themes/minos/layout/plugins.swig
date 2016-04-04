<div id="content-wrapper1">
  <div class="wrapper1">
    <div class="inner1">
      <header id="plugin-list-header">
        <h1 id="plugin-list-title">{{ page.title }}</h1>

      </header>
      <ul id="plugin-list">
        {% for plugin in _.sortBy(site.data[page.data], 'name') %}
          {{ partial('_partial/' + page.partial, {plugin: plugin}) }}
        {% endfor %}
      </ul>
    </div>
  </div>
</div>
<script>window.SEARCH_INDEX = {{ lunr_index(site.data[page.data]) }}</script>