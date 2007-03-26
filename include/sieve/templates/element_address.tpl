<table class='sieve_test_case'>
	{if $Expert}
    	{if $LastError != ""}
        	<tr>
				<td colspan=2>
		            <font color='red'><b>{$LastError}</b></font>
				</td>
			</tr>

        {/if}

	<tr>
		<td colspan=2 style='text-align:right; vertical-align:top;'>
			<input type='submit' name='Toggle_Expert_{$ID}' value='{t}Normal mode{/t}'>
		</td>
	</tr>
	<tr>
		<td>
			{t}Match type{/t}
		</td>
		<td>
			<select name='matchtype_{$ID}' title='{t}Boolean value{/t}' onChange='document.mainform.submit();'> 
				{html_options options=$match_types selected=$match_type}
			</select>

		</td>
	</tr>
	<tr>
		<td>
			{t}Invert test{/t}?
		</td>
		<td>
			{if $Inverse}
				<input type='submit' name='toggle_inverse_{$ID}' value='{t}Yes{/t}'>
			{else}
				<input type='submit' name='toggle_inverse_{$ID}' value='{t}No{/t}'>
			{/if}
		</td>
	</tr>
	<tr>
		<td>
			{t}Address part that should be used{/t}
		</td>
		<td>
			<select name='address_part_{$ID}' title='{t}Boolean value{/t}'> 
				{html_options options=$address_parts selected=$address_part}
			</select>
		</td>
	</tr>
	<tr>
		<td>
			{t}Comparator{/t}
		</td>
		<td>
			<select name='comparator_{$ID}' title='{t}Boolean value{/t}'> 
				{html_options options=$comparators selected=$comparator}
			</select>
		</td>
	</tr>
		{if $match_type == ":count" || $match_type == ":value"}
	<tr>
		<td>
			{t}operator{/t}
		</td>
		<td>
			<select name='operator_{$ID}' title='{t}Boolean value{/t}' onChange='document.mainform.submit();'>
				{html_options options=$operators selected=$operator}
			</select>
		</td>
	</tr>
		{/if}
	<tr>
		<td colspan=2>&nbsp;</td>
	</tr>
    <tr>
        <td >
            {t}Address fields to include{/t}<br>
            <textarea style='width:95%;height:50px;' name='keys_{$ID}'>{$keys}</textarea>
        </td>
        <td >
            {t}Values to match for{/t}<br>
            <textarea style='width:95%;height:50px;' name='values_{$ID}'>{$values}</textarea>
        </td>
    </tr>
	{else}
    	{if $LastError != ""}
        	<tr>
				<td colspan=4>
		            <font color='red'><b>{$LastError}</b></font>
				</td>
			</tr>

        {/if}
	<tr>
		<td style='vertical-align:top;'>
			<b>{t}Address{/t}</b>
		
			{if $Inverse}
				<input type='submit' name='toggle_inverse_{$ID}' value='{t}Not{/t}'>
			{else}
				<input type='submit' name='toggle_inverse_{$ID}' value='{t}-{/t}'>
			{/if}
			&nbsp;
			<select onChange='document.mainform.submit();' name='matchtype_{$ID}' title='{t}Boolean value{/t}'> 
				{html_options options=$match_types selected=$match_type}
			</select>

			{if $match_type == ":count" || $match_type == ":value"}
			<select name='operator_{$ID}' title='{t}Boolean value{/t}' onChange='document.mainform.submit();'>
				{html_options options=$operators selected=$operator}
			</select>
			{/if}
		</td>
		<td>
			<textarea style='width:45%;height:20px;' name='keys_{$ID}'>{$keys}</textarea>
			<textarea style='width:45%;height:20px;' name='values_{$ID}'>{$values}</textarea>
		</td>
		<td style='text-align:right; vertical-align:top;'>
			<input type='submit' name='Toggle_Expert_{$ID}' value='{t}Expert mode{/t}'>
		</td>
	</tr>
	{/if}
</table>