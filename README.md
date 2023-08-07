# ServiceNow Performance Engineering | JMeter

Testing REST ServiceNow APIs using JMeter offers a powerful approach to validate the functionality and performance of the ServiceNow platform. Leveraging JMeter, a test scenario has been created to evaluate API endpoints, authentication mechanisms, data retrieval, and overall system responsiveness. JMeter identifies potential bottlenecks and performance issues by simulating real-world user interactions and load conditions, enabling teams to fine-tune the APIs for optimal efficiency. With its flexibility and ability to generate insightful reports, JMeter is an indispensable tool in ensuring the reliability and scalability of REST ServiceNow APIs, enhancing the overall user experience and boosting the platform's capabilities.

This is a step-by-step guide to test the performance of ServiceNow APIs.

# How to Conduct the Performance Testing

The performance testing involves the following APIs:

|     API Label      |      ServiceNow API      |                                                    Documentation link                                                    | Method | Parameters |
| :----------------: | :----------------------: | :----------------------------------------------------------------------------------------------------------------------: | :----: | :--------: |
| **Incident Table** | `api/now/table/incident` | [incident API](https://developer.servicenow.com/dev.do#!/reference/api/tokyo/rest/c_TableAPI#table-GET?navFilter=table)  |  GET   |     0      |
|   **sys_user1**    | `api/now/table/incident` | [incident API](https://developer.servicenow.com/dev.do#!/reference/api/tokyo/rest/c_TableAPI#table-GET?navFilter=table)  |  GET   |     1      |
|   **sys_user2**    | `api/now/table/incident` | [incident API](https://developer.servicenow.com/dev.do#!/reference/api/tokyo/rest/c_TableAPI#table-GET?navFilter=table)  |  GET   |     2      |
|   **sys_user3**    | `api/now/table/incident` | [incident API](https://developer.servicenow.com/dev.do#!/reference/api/tokyo/rest/c_TableAPI#table-GET?navFilter=table)  |  GET   |     3      |
|   **post_user**    | `api/now/table/incident` | [incident API](https://developer.servicenow.com/dev.do#!/reference/api/tokyo/rest/c_TableAPI#table-POST?navFilter=table) |  POST  |     0      |

## Run the test (Method 1)

This method is simple since you can use the shell file provided to run all the commands needed.
The only requirements are that [homebrew](https://docs.brew.sh/Installation) is installed.
After installing `homebrew,` open a terminal and follow the steps below.

### 1. Clone this repository

`git clone https://github.com/TarasZhere/ServiceNow-performance-engineering-JMeter.git`

### 2. `cd` the folder

`cd ServiceNow-performance-engineering-JMeter`

### 3. Start the script

`sh startup.sh`

### 4. Wait 15 minutes for the report

Just wait for the time required to run the test (15 min), and as soon as the test is done, a folder `report` will appear in the directory with a `.html` file having a complete report of the examination.

## Run the test (Method 2)

### 1. Download the JMX file to perform the test

[Download JMX File](./ServiceNow.jmx)
or clone the repository with the provided ServiceNow.jmx

### 2. Install JMeter

Use the command (in order) to install the software using `homebrew`.
`brew install jmeter`

or reference the original documentation @ [JMeter.com](https://jmeter.apache.org/download_jmeter.cgi)

### 3. Run the test

`jmeter -n -t <path of>/ServiceNow.jmx -l < path: where you want to store the resulting file>/ServiceNow.csv -e -o < path to the output folder. (It must be an empty folder)>`

### 4. Wait 15 minutes for the report

Just wait for the time required to run the test (15 min), and as soon as the test is done, the report will appear in the directory you chose inside a `.html` file having a complete report of the examination.
