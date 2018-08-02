- Is the current directory a git repository?

  - yes

    - Show the detailed status of the repository
    - Is it okay to push everything in it?
    - What is the name of the repository? Default is the directory name.
    - Push to Github
    - Was the request OK?

      - yes

        - Open the created directory on the browser

      - no

        - Print the HTTP status code.

  - no

    - Create a new repository
    - Show the detailed status of the repository
    - Is it okay to push everything in it?
    - What is the name of the repository? Default is the directory name.
    - Push to Github
    - Was the request OK?

      - yes

        - Open the created directory on the browser

      - no
      
        - Print the HTTP status code.
