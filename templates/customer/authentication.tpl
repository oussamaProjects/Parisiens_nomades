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
{extends file='page.tpl'}

{block name='page_title'}
  <div class="intro">
    <div class="logo_container">
      <img class="logo img-responsive" src="{$shop.logo}" alt="{$shop.name}">
    </div>    
    <div class="intro-titre">{l s='Grossiste & sourcing en produits de mode' d='Shop.Theme.Customeraccount'}</div>
    <div class="intro-sous-titre">{l s='Site réservé aux professionnels' d='Shop.Theme.Customeraccount'}</div>
  </div>
{/block}

.  
{block name='page_content'}
    {block name='login_form_container'}
 
      <div class="float_form">
      <div class="row">
        <div class="col-lg-5 col-xl-5 offset-xl-1">
          <div class="h3">{l s='You do not have an account ?' d='Shop.Theme.Customeraccount'}</div>
          <br class="hidden-sm-down">
          <p>{l s='Saisissez votre adresse e-mail pour créer votre compte' d='Shop.Theme.Customeraccount'}</p>
          <div class="no-account">
            <a href="{$urls.pages.register}" data-link-action="display-register-form" class="btn btn-black">
              {l s='Register' d='Shop.Theme.Customeraccount'}
              <i class="fa fa-angle-right" aria-hidden="true"></i>
            </a>
          </div>
          <br class="hidden-lg-up">
          <hr class="hidden-lg-up">
          <br class="hidden-lg-up">
        </div>
        <div class="col-lg-5 col-xl-5">
          <div class="h3">{l s='Do you have an account?' d='Shop.Theme.Customeraccount'}</div>
          <br class="hidden-sm-down">
          <section class="login-form">
            {render file='customer/_partials/login-form.tpl' ui=$login_form}
          </section> 
          {block name='display_after_login_form'}
            {hook h='displayCustomerLoginFormAfter'}
          {/block}
        </div>
      </div> 
      </div> 
    
    {/block}
    
{/block}
