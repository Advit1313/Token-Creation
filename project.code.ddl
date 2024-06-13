// Step 1: Create a variable to hold your NFTs
let nftCollection = [];

// Step 2: This function will take in some values as parameters, create an NFT object using the parameters passed to it for its metadata, and store it in the variable above.
function mintNFT(movie_name, director, description, link) 
{
    const newNFT = 
    {
        id: 'NFT-' + (nftCollection.length + 1),
        md: 
        {
            movie_name: movie_name,
            director: director,
            description: description,
            link: link
        }
    };
    nftCollection.push(newNFT);
}

// Step 3: Create a "loop" that will go through an "array" of NFTs and print their metadata with console.log()
function listNFTs() 
{
    console.log('Current NFT Collection:');
    for (let i = 0; i < nftCollection.length; i++) 
    {
        const nft = nftCollection[i];
        console.log('ID:          ' + nft.id);
        console.log('Movie Name:   ' + nft.md.movie_name);
        console.log('Director:      ' + nft.md.director);
        console.log('Description: ' + nft.md.description);
        console.log('Link to buy: ' + nft.md.link);
        console.log(' ');
    }
}

// Step 4: Print the total number of NFTs we have minted to the console
function getTotalSupply() 
{
    return nftCollection.length;
}

// Minting some NFTs
mintNFT('Inception', 'Christopher Nolan', 'This movie is about dreams and science fiction.', 'https://www.amazon.in/Inception-Leonardo-DiCaprio/dp/B007KW5NJ4');
mintNFT('Goodfellas', 'Martin Scorcesse', 'Goodfellas is a crime drama movie.', 'https://www.amazon.in/GoodFellas-Blu-ray-Liotta-Lorraine-Sorvino/dp/B000O78JRA');
mintNFT('Tenet', 'Christopher Nolan', 'This movie is a science fiction movie based on time travelling.', 'https://www.amazon.in/Tenet-John-David-Washington/dp/B08KQ4D48D');
mintNFT('Dunkirk', 'Christopher Nolan', 'This movie is based on world war 2.', 'https://www.amazon.in/Dunkirk-Special-2-Disc-Tom-Hardy/dp/B077SBPH5W');

// Listing all NFTs
listNFTs();

// Printing the total number of NFTs minted
console.log('Total NFTs Minted: ' + getTotalSupply());