import { burgerMenu } from "./modules/burgermenu.js";
import { scrollTrigger } from "./modules/scrolltrigger.js";

burgerMenu();
scrollTrigger();

const artCollection = Vue.createApp({
  created() {
    fetch("http://localhost/aic-api/public/artworks")
      .then((res) => {
        if (!res.ok) {
          throw new Error("Network response was not ok");
        }
        return res.json();
      })
      .then((data) => {
        console.log("Artworks data:", data);
        this.artworksData = data;
      })
      .catch((error) => {
        console.error("Error fetching artwork:", error);
        console.log("Catch block reached");
        this.error = "Failed to fetch artwork details from the API";
      });
  },
  data() {
    return {
      artworksData: [],
      artistName: "",
      title: "",
      place: "",
      publishedDate: "",
      medium: "",
      dimensions: "",
      description: "",
      error: "",
    };
  },
  methods: {
    getArtwork(artworkId) {
      fetch(`https://api.artic.edu/api/v1/artworks/${artworkId}`)
        .then((res) => {
          if (!res.ok) {
            throw new Error("Network response was not ok");
          }
          return res.json();
        })
        .then((data) => {
          console.log("Artwork data:", data);
          const artwork = data.data;
          if (artwork) {
            this.error = "";
            this.artistName = artwork.artist_display;
            this.title = artwork.title;
            this.place = artwork.place_of_origin;
            this.publishedDate = artwork.date_display;
            this.dimensions = artwork.dimensions;
            this.medium = artwork.medium_display;
            this.description = artwork.description;
          } else {
            this.error = "Artwork not found.";
          }
        })
        .catch((error) => {
          console.error("Error fetching artwork:", error);
          console.log("Catch block reached");
          this.error = "Failed to fetch artwork details from the API";
        });
    },
  },
});

artCollection.mount("#app");
