{* <div class="col-md-12">
  <b>{$page.page_name}</b>
</div> *}

{if $page.page_name != 'index'
and $page.page_name != 'cart'
and $page.page_name != 'product'
and $page.page_name != 'category'
and $page.page_name != 'manufacturer'
and $page.page_name != 'my-account'
and $page.page_name != 'identity'
and $page.page_name != 'address'
and $page.page_name != 'addresses'
and $page.page_name != 'history'
and $page.page_name != 'order-detail' 
}
  <div class="col-md-12">
    <div id="page_banner"> 
      {assign var="img_src" value="{$smarty.current_dir}/../../assets/img/img_{$page.page_name}.jpg"}
      {if file_exists($img_src)}
        <img src="{$urls.img_url}img_{$page.page_name}.jpg" alt=""> 
      {/if} 
      <div class="page_banner_wrapper">

         {block name='page_header_container'}
            {block name='page_header'}

               {if $page.page_name == 'module-prestablog-blog'}
                  <div class="titre blog">
                     {* {if isset($prestablog_title_h1)}  *}
                        {* {$prestablog_title_h1|escape:'htmlall':'UTF-8'}   *}
                        {l s='Inside Monarqueo ' d='Shop.Theme.Catalog'}
                     {* {/if} *}
                  </div>
               {elseif $page.page_name == 'contact'}
                  <div class="titre contact">
                     {l s='Contact' d='Shop.Theme.Catalog'}
                  </div>
               {elseif $page.page_name == 'cms'}
                  <div class="titre cms">
                     {block name='page_title'} {/block}
                  </div>
               {elseif $page.page_name == 'prices-drop'}
                  <div class="titre cms">
                      {l s='Promotions' d='Shop.Theme.Catalog'}
                  </div>
                {else}
                  <div class="titre cms">
                    {block name='page_title'} 
                    {$page.meta.title} {/block}
                  </div>
                {/if}

            {/block}
         {/block}

         {block name='breadcrumb'}
            {include file='_partials/breadcrumb.tpl'}
         {/block}

      </div>

   </div>
  </div>
{elseif $page.page_name == 'my-account'
or $page.page_name == 'identity'
or $page.page_name == 'address'
or $page.page_name == 'addresses'
or $page.page_name == 'history'
or $page.page_name == 'order-detail' }
  
  {block name='breadcrumb'}
  
  <div class="col-md-12">
    {include file='_partials/breadcrumb.tpl'}
  </div>
  {/block}
{/if}

<div class="clearfix"></div>
  