{* GOsa dhcp sharedNetwork - smarty template *}
<p><b>{t}Generic{/t}</b></p>
<table>
 <tr>
  <td>
   {t}Name{/t}{$must}
  </td> 
  <td>
   <input type='text' name='cn' size='25' maxlength='80' value='{$cn}'
        {$mode} title='{t}Name of group{/t}'>
  </td>
 </tr>
</table>

<p class="seperator">&nbsp;</p>

<!-- Place cursor in correct field -->
<script language="JavaScript" type="text/javascript">
  <!-- // First input field on page
  document.mainform.cn.focus();
  -->
</script>