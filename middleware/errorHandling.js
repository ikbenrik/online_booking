// Error handler middleware to catch unhandled errors
app.use((err, req, res, next) => {
    console.error(err); // Log the error on the server (for debugging)
    
    // Send a generic response to the client
    res.status(500).json({
      message: "An error occurred on the server, please double-check your request!"
    });
  });
  