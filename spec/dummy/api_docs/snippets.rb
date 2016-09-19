module ApiDocs
  class SnippetApiDoc

    # Get all snippets
    #
    #  GET /locomotive/sample/api/v3/snippets.json?auth_token=E2aoXzMxkFsLnCcmCcc_
    #
    # REQUEST: ""
    #
    # RESPONSE:
    # [
    #     {
    #         "_id": "57dbd14b8f92d23728c0b1bc",
    #         "created_at": "2016-09-16T11:02:35Z",
    #         "updated_at": "2016-09-16T11:02:35Z",
    #         "name": "Carousel",
    #         "slug": "carousel",
    #         "template": "<div id=\"carousel-example-generic\" class=\"width_500_px carousel slide carousel-fade\" data-ride=\"carousel\">\n\n  <!-- Wrapper for slides -->\n  <div class=\"carousel-inner\">\n    {% if project.photos.size > 0 %}\n    <input type=\"hidden\" name=\"project_size\" value={{project.photos.size}}>\n        {% assign counter = 1 %}\n        {% assign i = project.photos.size %}\n        {% for photo in project.photos %}\n          <div class=\"img-container item {% if counter == 1%}active{% endif %}\" id= {{i}}>\n          {% capture i %}{{ i | minus:1 }}{% endcapture %}\n            {% assign counter = 0 %}\n             <a {% if site.metafields.options.enable_lightbox == true %} href={{photo.image.url}} {%endif%} data-size=\"1600x1000\" class=\"html5lightbox\" data-thumb-src={{project.photos.first.image | resize: \"1600x1000\" }}>\n               {% if photo.video_image.url %}\n                 <img src={{photo.video_image.url}} alt=\"Smiley face\">\n                 {% else %}\n                   <img src={{photo.image.url}} alt=\"Smiley face\">\n                 {% endif %}\n             </a>\n          </div>\n        {% endfor %}\n    {% else %}\n      <img src=\"{{ 'thumbnail_default.jpg' | theme_image_url }}\" alt=\"Smiley face\">\n    {% endif %}\n  </div>\n\n {% if  project.photos.size > 1 %}\n  <!-- Controls -->\n      <a class=\"left carousel-control\" href=\"#carousel-example-generic\" role=\"button\" data-slide=\"prev\">\n        <span class=\"animated slideInLeft glyphicon glyphicon-chevron-left\"></span>\n      </a>\n      <a class=\"right carousel-control\" href=\"#carousel-example-generic\" role=\"button\" data-slide=\"next\">\n        <span class=\"animated slideInRight glyphicon glyphicon-chevron-right\"></span>\n      </a>\n  {% endif %}\n</div> <!-- Carousel -->"
    #     },
    # ]
    # ---
    def index;end

  end
end
