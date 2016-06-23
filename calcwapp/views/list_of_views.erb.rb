<h1> Todo List App </h1>

<h2> Your tasks </h2>

<ul>
  <% @tasks.each do |the_task| %>
    <li>
      <%= the_task.content %>

      <% if the_task.complete? %>
        DONE!
      <% else %>
        <a href="/complete_task/<%= the_task.id %>">
          Complete this task
        </a>
      <% end %>
    </li>
  <% end %>
</ul>

<a href="/new_task">
  Add a new task
</a>