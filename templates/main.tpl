<main>

    <section class="pet-list-section">
        <table>
            <tbody>
            
            {foreach from=$pets item=pet}
                <tr>
                    <td><img width="200" src="{$pet->image}" alt="{$pet->name}'s photo'"></td>
                    <td>{$pet->name}</td>
                    <td>{$pet->age}</td>
                    <td>{$pet->weight}</td>
                    {if $pet->rescued == true}
                        <td>Rescued</td>
                    {else}
                        <td></td>
                    {/if}
                    <td><button class="js-btn-viewInfo" data-id="{$pet->id}">View info</button></td>
                </tr>
            {/foreach}
            
            </tbody>
        </table>
    </section>
    
    <aside class="pet-info-aside">
            
        <div class="info-pet-box">

            <figure>
                <img width="200" src="https://www.consultaveterinaria.cl/wp-content/uploads/2016/09/royal_canin.jpg" alt="">
            </figure>
            <figure>
                <img width="200" src="https://ams.aaha.org/eWeb/photos/CNMDM_400.jpg" alt="">
            </figure>

        </div>

    </aside>
    
</main>