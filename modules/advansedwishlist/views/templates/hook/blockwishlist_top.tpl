{*
* 2007-2015 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
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
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2017 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
<script>
    var idDefaultWishlist = {$id_wishlist|escape:'htmlall':'UTF-8'};
</script>
{if $hook_name == 'top'}<div id="block_wishlist_top">{/if}
{if $logged}
<div class="wish_link {if $show_text}wish_link_text{/if} {if $advansedwishlistis17 == 1}wish_link_17{else}wish_link_16{/if}" id="login_wish">
<a href="{url entity='module' name='advansedwishlist' controller='mywishlist'}">
{if $show_text}
{l s='My WishList' mod='advansedwishlist'}
{else}
        {if $advansedwishlistis17 == 1}
        <i class="material-icons">favorite</i>
        {else}
        <i class="icon-heart"></i>
        {/if}
{/if}
<span class="wishlist_count {if $products_count == 0} empty_list{/if}">{$products_count|string_format:"%d"}</span>
</a>
</div>
{else}
<div class="wish_link {if $show_text}wish_link_text{/if} {if $advansedwishlistis17 == 1}wish_link_17{else}wish_link_16{/if}">
{if $show_text}
<span>{l s='My WishList' mod='advansedwishlist'}</span>
{else}
        {if $advansedwishlistis17 == 1}
        <i class="material-icons">favorite</i>
        {else}
        <i class="icon-heart"></i> 
        {/if}
{/if}    <div class="allert_note">{l s='You must be logged' mod='advansedwishlist'}
    <p class="login_links">
    <a class="inline" href="{url entity='my-account'}">{l s='Sign in' mod='advansedwishlist'}</a> | <a class="inline" href="{url entity='my-account'}">{l s='Register' mod='advansedwishlist'}</a>
    </p>
    </div>

    </div>
{/if}
{if $hook_name == 'top'}</div>{/if}

