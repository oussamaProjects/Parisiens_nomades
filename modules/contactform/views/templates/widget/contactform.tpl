{**
* 2007-2017 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License 3.0 (AFL-3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* https://opensource.org/licenses/AFL-3.0
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
* @author    PrestaShop SA <contact@prestashop.com>
* @copyright 2007-2017 PrestaShop SA
* @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
* International Registered Trademark & Property of PrestaShop SA
*}


<div class="offset-md-2 col-md-8">
  <section class="login-form">
    <form action="{$urls.pages.contact}" method="post" {*{if $contact.allow_file_upload}enctype="multipart/form-data"{/if}*}>

      <header>
        <div class="contact_titre">
          <div>{l s='A question ? A problem ? ' d='Modules.Contactform.Shop'}</div>
          <div>{l s='Fill out the form below and we will' d='Modules.Contactform.Shop'}</div>
          <div>{l s='get back to you as soon as possible!' d='Modules.Contactform.Shop'}</div>
        </div>
      </header>

      {if $notifications}
      <div class="notification {if $notifications.nw_error}notification-error{else}notification-success{/if}">
        <ul>
          {foreach $notifications.messages as $notif}
          <li>{$notif}</li>
          {break}
          {/foreach}
        </ul>
      </div>
      {/if}

      <section class="form-fields">

        <div class="form-group"> 
          <input type="text" name="lastname" value="{$contact.lastname}" class="form-control" placeholder="{l s='Last name' d='Modules.Contactform.Shop'}*" required="required" />
        </div>

        <div class="form-group"> 
          <input type="text" name="firstname" value="{$contact.firstname}" class="form-control" placeholder="{l s='First name' d='Modules.Contactform.Shop'}*" required="required" />
        </div>


        <div class="form-group"> 
          <input type="text" name="company" value="{$contact.company}" class="form-control" placeholder="{l s='Company name' d='Modules.Contactform.Shop'}" />
        </div>

        <div class="form-group"> 
          <input type="email" name="from" value="{$contact.email}" class="form-control" placeholder="{l s='Email address' d='Modules.Contactform.Shop'}*" required="required" />
        </div>

        <div class="form-group"> 
          <input type="text" name="phone" value="{$contact.phone}" class="form-control" placeholder="{l s='Phone' d='Modules.Contactform.Shop'}*" required="required"/>
        </div>

        {if $contact.orders}
        <div class="form-group">
          <span>{l s='Order reference' d='Modules.Contactform.Shop'}</span>
          <select name="id_order" class="form-control">
            <option value="">{l s='Select reference' d='Modules.Contactform.Shop'}</option>
            {foreach from=$contact.orders item=order}
            <option value="{$order.id_order}">{$order.reference}</option>
            {/foreach}
          </select>
        </div>
        {/if}

         {* {if $contact.allow_file_upload}
          <div class="form-group">
            <span>{l s='Attach File' d='Modules.Contactform.Shop'}</span>
            <input type="file" name="fileUpload" class="form-control" />
          </div>
          {/if} 
          *}

        <div class="form-group"> 
          <select name="id_contact" class="form-control">
            {foreach from=$contact.contacts item=contact_elt}
            <option value="{$contact_elt.id_contact}">{$contact_elt.name}</option>
            {/foreach}
          </select>
        </div>

        <div class="form-group">
          <textarea cols="67" rows="10" name="message" class="form-control" placeholder="{l s='Message' d='Modules.Contactform.Shop'}*" required="required">{if $contact.message}{$contact.message}{/if}</textarea>
        </div>

      </section>

      <footer class="form-footer">
        <div class="form-group"> 
          <button type="submit" name="submitMessage" class="btn btn-black">
            {l s='Send' d='Modules.Contactform.Shop'}
          </button>
        </div>
      </footer>
    </form>
    <span class="required_fileds">*{l s='Required' d='Modules.Contactform.Shop'}</span>
  </section>
</div>

<div class="clearfix"></div>


<div class="col-md-12"> 
  <br>
  <br>
</div> 