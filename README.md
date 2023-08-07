# ServiceNow Performance Engineering | JMeter

Testing REST ServiceNow APIs using JMeter offers a powerful approach to validate the functionality and performance of the ServiceNow platform. Leveraging JMeter, it has been created a test scenario to evaluate API endpoints, authentication mechanisms, data retrieval, and overall system responsiveness. JMeter identifies potential bottlenecks and performance issues by simulating real-world user interactions and load conditions, enabling teams to fine-tune the APIs for optimal efficiency. With its flexibility and ability to generate insightful reports, JMeter is an indispensable tool in ensuring the reliability and scalability of REST ServiceNow APIs, enhancing the overall user experience and boosting the platform's capabilities.

This is an step-by-step guide to test performance of ServiceNow APIs.

## Performance Testing

The performance testing involves the following APIs:

<center>

|    API Label     |           API            |                                                    Documentation link                                                    | Method | Parameter |
| :--------------: | :----------------------: | :----------------------------------------------------------------------------------------------------------------------: | :----: | --------- |
| `Incident Table` | `api/now/table/incident` | [incident API](https://developer.servicenow.com/dev.do#!/reference/api/tokyo/rest/c_TableAPI#table-GET?navFilter=table)  |  GET   | 0         |
|   `sys_user1`    | `api/now/table/incident` | [incident API](https://developer.servicenow.com/dev.do#!/reference/api/tokyo/rest/c_TableAPI#table-GET?navFilter=table)  |  GET   | 1         |
|   `sys_user2`    | `api/now/table/incident` | [incident API](https://developer.servicenow.com/dev.do#!/reference/api/tokyo/rest/c_TableAPI#table-GET?navFilter=table)  |  GET   | 2         |
|   `sys_user3`    | `api/now/table/incident` | [incident API](https://developer.servicenow.com/dev.do#!/reference/api/tokyo/rest/c_TableAPI#table-GET?navFilter=table)  |  GET   | 3         |
|   `post_user`    | `api/now/table/incident` | [incident API](https://developer.servicenow.com/dev.do#!/reference/api/tokyo/rest/c_TableAPI#table-POST?navFilter=table) |  POST  | 0         |

</center>
