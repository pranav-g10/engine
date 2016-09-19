module ApiDocs
  class ContentTypeApiDoc
    # Get Content Types
    #
    #  GET /locomotive/sample/api/v3/content_types.json?auth_token=E2aoXzMxkFsLnCcmCcc_
    #
    #  REQUEST:
    #  RESPONSE:
    # [
    #     {
    #         "_id": "57dbd1328f92d23728c0afb9",
    #         "created_at": "2016-09-16T11:02:10Z",
    #         "updated_at": "2016-09-16T11:02:10Z",
    #         "name": "Customer Messages",
    #         "slug": "customer_messages",
    #         "description": "Messages submitted via the website",
    #         "label_field_name": "name",
    #         "order_direction": "asc",
    #         "public_submission_enabled": true,
    #         "public_submission_accounts": [],
    #         "public_submission_title_template": null,
    #         "entry_template": null,
    #         "display_settings": null,
    #         "fields": [
    #             {
    #                 "_id": "57dbd1328f92d23728c0afba",
    #                 "created_at": null,
    #                 "updated_at": null,
    #                 "name": "name",
    #                 "type": "string",
    #                 "label": "Name",
    #                 "hint": null,
    #                 "required": true,
    #                 "localized": false,
    #                 "unique": false,
    #                 "default": null,
    #                 "position": 0
    #             },
    #         ],
    #         "order_by": "_position",
    #         "group_by": null,
    #         "public_submission_account_emails": []
    #     },
    # ]
    # ---
    def index;end

  end

end


