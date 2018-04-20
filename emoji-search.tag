<emoji-search>

    <input autocomplete="off" class="emoji-text" type="text" name="search" placeholder="emoji baby" />

    <button class="emoji-baby" onclick="{post}">Post it, baby</button>

<style>

</style>
<script>



    //define the link
    const url = `https://api.github.com/emojis`;
    //call the endpoint
    const settings = {
        method: 'get'
    };
    // get the emoji, save the emoji

    const json = {};

    fetch(url, settings)
    .then(response => response.json())
    .then(json => {
        console.log(json);

        this.json = json;
    });

    const emojiContainer = document.querySelector(".emoji-container");
    let emojiDiv = null;
    
    const button = document.createElement("button");
    button.classList.add("baby");
    button.innerText = "ok, baby";

    this.post = function() {
        const emoji = this.root.querySelector('input[type=text]').value;
        let searchedEmoji = this.json[emoji];
        console.log(searchedEmoji);
        
        if (emoji == "tammy") {
            searchedEmoji = this.json["princess"];
        }

        if (searchedEmoji == undefined) {
            searchedEmoji = this.json["baby"];
        }

        
        
        if (emojiDiv === null) {
            emojiDiv = document.createElement("div");
        // append div to container
            emojiContainer.appendChild(emojiDiv);
            emojiDiv.appendChild(button);
            emojiDiv.classList.add("post");
        }

        const emojiImg = document.createElement("img");
        emojiImg.classList.add("emoji-img");
        emojiImg.setAttribute("src", searchedEmoji);
        
        // append img to div
        emojiDiv.appendChild(emojiImg);

        // appened button to div
        
        // add listener to button

    }


    button.addEventListener("click", function() {
            console.log("shake it, baby");
            
            const emojiPost = document.createElement("div");
            emojiPost.classList.add("post");
            emojiContainer.appendChild(emojiPost);
            
            emojiDiv = null;
            button.remove();
        });

    
    </script>





</emoji-search>