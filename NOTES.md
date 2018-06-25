# Step 1: Integrate Basic Theme to Asset Pipeline

[x] / - And a stubbed out, non-dynamic, page with the theme.



# Step 2: Allow people to CRUD LISTS

- Create a List


- See all their lists


[ ]ListsController
  #index
  - see all their lists
  - doubling as my #new action in that it is presenting the person with a form to create a new list
  / - Index all the lists...



- Show a List

Features Story
- Stub out story of how people will use the application

I want people to be able to create lists. Then they should be able to add items to those lists. They shoudl be able to navigate many lists and see each lists items.

lists
  has many items

items
  belongs to a list







Does it impact the DB?
Does it impact my URLS?

I need '/lists/1'


# Step 3: Add Items To A List

  - Make the items in a list real

    - a list has many items and every item belongs to a list


    lists
    2      Shopping List

    items
    id    description   list_id
    1      milk           2
    2      cookies        2

  CREATE ACTION for an ITEM in a LIST - what is the URL/HTTP method for that?

  - the form is already present in the list show page
  - What URL does this form imply?


  POST /items #=> Doesn't describe which list we are adding an item to
  an item doesnt exist in our application outside of the context of the list it belongs to.

  Nested Resource - items are nested in terms of URLs under their parent list.





Does it impact the DB? - I probably need an items table - associated with a list

Does it impact my URLS?

# Step 4: Adding Validations

Validate that lists have name

Validate that items have a description.





# STEP whatever: Fix Down Arrow on Model


# STEP 5: I want to add state (complete, incomplete) to Items in a LIST

What urls do I need and how might by database change?

- the idea of an item being complete or incomplete require data.
- new forms for updating the status of an item - which means new URL

/lists/1/items


anything thats going to change an item is going to be a PUT request (PATCH) /lists/:list_id/items/:id

<input class="toggle  type="checkbox">

I need that JS function to submit the form when you click the checkbox

$(function(){
  $("input.toggle").on("change", function(){
    $(this).parents("form").trigger("submit")
  })
});

i know i need to steal that checkbox html from TODOMVC.cim

CHECK SCHEMA
- rails generate migration AddStatusToItems status:integer



# REFACTOR 1: start using partials in lists/show because it's a bit messy.


# STEP 6: Deleting Items from a list
