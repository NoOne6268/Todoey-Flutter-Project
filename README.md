# Todoey

A todolist app to keep track of all your tasks.

## Description

Efficient State Management with Provider:

Implemented the Provider package to manage the app's state efficiently. Leveraged Provider's dependency injection and change notification capabilities to ensure seamless updates and synchronization of the to-do list across different screens and components.

Prop Drilling for Data Sharing:

Utilized prop drilling to pass relevant to-do list data and functions through different levels of widgets. This allowed child widgets, such as individual to-do items or the add task screen, to access and modify the shared state without relying on a global state management solution.

Interactive UI Components:

Incorporated the List Builder widget to dynamically generate the to-do list items based on the available tasks. This optimized performance by rendering only the visible items and efficiently managing memory. Additionally, leveraged the BottomSheet widget to present additional options or task details when interacting with a specific to-do item, enhancing the user experience without disrupting the main interface.

>This is a companion project to The App Brewery's Complete Flutter Development Bootcamp, check out the full course at www.appbrewery.co
