<main>

    <section class="pet-list-section">
        <table>
            <tbody>

            {foreach from=$pets item=pet}
                <tr>
                    <td class="td-img"><img width="200" src="{$pet->image}" alt="{$pet->name}'s photo'"></td>
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
    
    <aside class="pet-info-aside" id="info-location">

        {foreach from=$petDB item=pet}
        
            <div class="info-pet-box">
                
                <figure>
                    <img width="200" src="{$pet->image}" alt="{$pet->name}">
                </figure>
                <ul>
                    <li>Name: {$pet->name}</li>
                    <li>Age: {$pet->age}</li>
                    <li>Weight: {$pet->weight} Kg</li>
                </ul>

                <figcaption>
                    {$pet->description}: Lorem ipsum dolor sit amet consectetur adipisicing elit. Id expedita corporis deleniti sed pariatur eos nemo quis illo quae vitae dolorem, delectus at cupiditate! Porro voluptatem voluptas possimus saepe sint.
                </figcaption>
                
                <form data-id="{$pet->id}" id="adoptForm" method="POST">
                    <input type="text" name="name" placeholder="Your name: " id="">
                    <input type="email" name="email" placeholder="Email: " id="">
                    <input type="text" name="pet" value="{$pet->name}">
                    <span id="enviado"></span>
                    <button type="submit" class="js-btn-adopt" >Adopt</button></td>
                </form>
                
            </div>
        
        {/foreach}
        
    </aside>
    
</main>