<div class="container">

  <table class="table table-striped table-bordered">
    <tr>
      <th>First Name</th>
      <th>Last Name</th>
      <th>Email</th>
    </tr>

    <% @salesVisits.each do |salesVisit| %>
      <tr>
        <td><%= salesVisit.Account_Name__c %></td>
        <td><%= salesVisit.Check_in__c %></td>
        <td><%= salesVisit.Visit_Note__c %></td>
      </tr>
    <% end %>
  </table>

</div>
