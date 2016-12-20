<% if $UseButtonTag %>
	<button type="submit" name="$Name" value="$Title" class="action btn btn-default" id="$ID">
		<% if $ButtonContent %>$ButtonContent<% else %>$Title.XML<% end_if %>
	</button>
<% else %>
	<input type="submit" name="$Name" value="$Title" class="action btn btn-default" id="$ID" />
<% end_if %>