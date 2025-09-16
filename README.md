# Salesforce Private Frameworks

This is a repository for learning about framework structure in Salesforce.

## Apex Framework

This is the underlying framework that makes up Salesforce's Apex Layer.
Resources for this framework are as follows:

| Class                | Description                                                                               |
| :------------------- | :---------------------------------------------------------------------------------------- |
| naklab_ServiceLayer  | This class is the foundation for the layers of service.                                   |
| naklab_DomainLayer   | This class is the foundation of the layer that provides processing for a specific object. |
| naklab_SelectorLayer | This class is the foundation of the layer that retrieves data from the database.          |

## Controller Framework

This is the underlying framework that makes up Salesforce's Apex Controller.
Resources for this framework are as follows:

| Class             | Description                                                             |
| :---------------- | :---------------------------------------------------------------------- |
| naklab_Controller | This class is the foundation of the layer that provides the controller. |

## Async Framework

This is the underlying framework that makes up Salesforce's Apex Async Process.
Resources for this framework are as follows:

| Class                              | Description                                                                                                                                                                                       |
| :--------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| naklab_Chainable                   | An interface for configuring an asynchronous processing chain.                                                                                                                                    |
| naklab_CoreQueueProcessor          | This class is the basis for Queueable processing. This class can be extended to configure Queueable processing.                                                                                   |
| naklab_CoreBatchProcessor          | This class is the basis for Batchable processing. This class can be extended to configure Batchable processing.                                                                                   |
| naklab_CoreScheduler               | This class is the basis for Schedulable processing. This class can be extended to configure Schedulable processing.                                                                               |
| naklab_CoreChainableQueueProcessor | This class is the basis for Queueable processing in the asynchronous processing chain. This class can be extended to configure Queueable processing including asynchronous processing chains.     |
| naklab_CoreChainableBatchProcessor | This class is the basis for Batchable processing in the asynchronous processing chain. This class can be extended to configure Batchable processing including asynchronous processing chains.     |
| naklab_CoreChainableScheduler      | This class is the basis for Schedulable processing in the asynchronous processing chain. This class can be extended to configure Schedulable processing including asynchronous processing chains. |

## Query Framework

This is the underlying framework that makes up Salesforce's Apex SOQL.
Resources for this framework are as follows:

| Class                     | Description                                                                                                                  |
| :------------------------ | :--------------------------------------------------------------------------------------------------------------------------- |
| naklab_QueryBuilder       | This is the builder class that makes up SOQL.                                                                                |
| naklab_ClauseName         | This class maintains a list of SOQL clauses that can be used in QueryBuilder.                                                |
| naklab_ComparisonOperator | This class maintains a list of comparison operators that can be used in the WHERE clause of the QueryBuilder.                |
| naklab_LogicalOperator    | This class manages the list of logical operators that can be used in the WHERE clause of QueryBuilder.                       |
| naklab_SortDirection      | This class manages a list of sorting directions that can be used in the ORDER BY clause of QueryBuilder.                     |
| naklab_NullHandling       | This class maintains a list of methods for handling null values that can be used in the ORDER BY clause of the QueryBuilder. |
| naklab_ScopeName          | This class maintains a list of values that can be used in the USING SCOPE clause of the QueryBuilder.                        |
| naklab_Clause             | This is the base class for clauses that can be used in QueryBuilder. This class is extended to form concrete clauses.        |
| naklab_SelectClause       | This class handles SELECT clauses that can be used in QueryBuilder.                                                          |
| naklab_FromClause         | This class handles FROM clauses that can be used in QueryBuilder.                                                            |
| naklab_WhereClause        | This class handles WHERE clauses that can be used in QueryBuilder.                                                           |
| naklab_OrderClause        | This class handles ORDER BY clauses that can be used in QueryBuilder.                                                        |
| naklab_LimitClause        | This class handles LIMIT clauses that can be used in QueryBuilder.                                                           |
| naklab_OffsetClause       | This class handles OFFSET clauses that can be used in QueryBuilder.                                                          |
| naklab_ScopeClause        | This class handles USING SCOPE clauses that can be used in QueryBuilder.                                                     |
| naklab_QueryField         | This class is the basis for fields that can be used in QueryBuilder.                                                         |
| naklab_SelectField        | This class defines fields that can be used in QueryBuilder's SELECT clause.                                                  |
| naklab_WhereField         | This class defines fields that can be used in QueryBuilder's WHERE clause.                                                   |
| naklab_OrderField         | This class defines fields that can be used in QueryBuilder's ORDER BY clause.                                                |

## DML Framework

This is the underlying framework that makes up Salesforce's Apex DML.
Resources for this framework are as follows:

| Class              | Description                                                    |
| :----------------- | :------------------------------------------------------------- |
| naklab_BaseDML     | This is the foundational class that makes up DML.              |
| naklab_InsertDML   | This is the class that makes up the Insert operation of DML.   |
| naklab_UpdateDML   | This is the class that makes up the Update operation of DML.   |
| naklab_UpsertDML   | This is the class that makes up the Upsert operation of DML.   |
| naklab_DeleteDML   | This is the class that makes up the Delete operation of DML.   |
| naklab_UndeleteDML | This is the class that makes up the Undelete operation of DML. |

## Trigger Framework

This is the underlying framework that makes up Salesforce's Apex triggers.
Resources for this framework are as follows:

| Class                         | Description                                                                                                                                                                      |
| :---------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| naklab_TriggerHandler         | Class to be extended when building trigger handler classes.                                                                                                                      |
| naklab_TriggerContextProvider | This class provides context variables for the trigger handler class. By plugging in a class that extends this class, unit testing of the trigger handler class can be performed. |
